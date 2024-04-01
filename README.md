# Galapagos Hardware Stack 

Welcome to the Galapagos Hardware Stack. 

## Prerequisites

The native install requires Xilinx Vivado to be installed. Current versions supported are 2018.1, 2018.2, 2018.3, 2019.1 and 2023.1

## Multiplier Demo Description:
This demo includes 4 kernels:  
2 software kernels (Data Sender and Data Receiver) and 2 hardware kernels (MultiplierA and MultiplierB).
- The Data Sender sends 3 32-bit integers to MultiplierA.  
- MultiplierA multiplies numberA and numberB, and sends the result of A\*B and numberC to MultiplierB.  
- MultiplierB multiplies the result of A\*B and numberC and sends the final value back to software kernel Data Receiver.  
- Data Receiver receives the result of A\*B\*C and prints it.

Both hardware kernels would need to be programmed on two different boards, but you can change this by editing the map.xml and cpu_node.cpp (See other notes below)  

### To make the demo project:

A. Initialize the kernels

1. Compile the demo kernels (sw).  
Run `make` in the /kernals_sw/multiplier_demo folder, and executable file `kern` will be created.  
The software kernels are defined in kern.cpp and their mapping is done in cpu_node.cpp such that any kernel with the same IPv4 address as node_ip_address will be run on software,  
and kernels with different addresses will have the data sent and received to the respective address using Galapagos' kernel IDs mapped to Addresses.

2. Synthesize the HLS for demo kernels (hw).  
Run `make` in the /kernals_hw folder, the two hardware multipliers (multiplierA and multiplierB) will be HLS Synthesized in their respective folders.  
(any HLS Synthesized IP in kernels_hw or userIP/kernels can be used in the map.xml and logical.xml files to build them into Galapagos).

B. Setup Galapagos Project

3. First you need to initialize all environment variables. This is done with a build script.  
`source build.sh`  
You can enable direct synthesis and generation of bitstream on running of this script by setting the environment variable `export GALAPAGOS_START_SYNTH=1` (=0 to disble synthesis and bitstream generation)

4. `make PROJECTNAME={project_name}` to synthesize the galapagos IPs and create a script to make a project using map.xml and logical.xml (configured as: both multipliers on different FPGAs in the given xml files)

5. `source projects/{project_name}/createCluster.sh`  to create the project (depending on the GALAPAGOS_START_SYNTH env variable, synthesis and bitstreams may be generated automatically) and then program the FPGAs by flashing the bitstreams.  
(Bitstream for multiplierA located at /projects/{project_name}/1/1.runs/impl_1/shellTop.bit and multiplierB at /projects/{project_name}/2/2.runs/impl_1/shellTop.bit)  

6. By running `/kernals_sw/kernals/kern`, it will send 3x 32-bit integers to the FPGA which will return the result of multiplication of the 3 numbers.

### Other notes

To make a project with your own kernels, you would need to edit the map.xml and logical.xml files, then run the above steps.
The `/map.xml` and `/kernels_sw/multiplier_demo/cpu_node.cpp` would need the IP Addresses of CPU and/or FPGAs depending on where each kernel would be running.

`make hlsmiddleware` compiles the HLS source code of Galapagos' IPs.

`make middleware PROJECTNAME={project_name}` only generates the createCluster.sh and various .tcl files to build a project using the Galapagos' IPs and kernels specified in map.xml and logical.xml

So if you have any changes after you have built a project, or want to make more projects after the initial run, only make the middleware.

## Overview of Galapagos

The layers of the stack that we introduce are as follows:  
- Middleware Layer
- Hypervisor (Shell) Layer
- Physical Hardware /Network Setup

For more details on our automation process please refer to the Makefile. 

### Physical Hardware/Network Setup Layer

Our setup has all FPGAs connected directly to a network switch.  We have the following FPGA boards:
- Fidus Sidewinder (also has a hardened ARM CPU)

### Hypervisor Layer

We plan to have hypervisors (shells) setup for various boards. Currently the hypervisor abstracts away the network and PCIe interfaces. 
This exposes all devices with a hypervisor as an AXI-stream in and out through the network interface, and an S_AXI interface from PCIe or ARM and M_AXI to off-chip memory.


### Middleware Layer

This takes two files (refer to LOGICALFILE, MAPFILE defined in the Makefile) and partitions a large cluster logically described by the user into multiple separate FPGAs.

#### LOGICALFILE

The cluster is described in a LOGICALFILE with no notion of the mappings. 
The following is an example kernel from the logical file:
```
<?xml version="1.0" encoding="UTF-8"?>
<cluster>
    <packet>
        <data> 512 </data>
        <keep> 64 </keep>
        <last> 1 </last>
    </packet>
	<kernel> data_sender <!-- 'data_sender' kernel is a software kernel -->
        <num> 0 </num>
        <rep> 1 </rep>
        <s_axis>
            <scope> global </scope>
            <name> in </name>
        </s_axis>
        <m_axis>
            <scope> global </scope>
            <name> out </name>
        </m_axis>
	</kernel>
    <kernel> multiplier <!-- 'multiplier' kernel is a hardware kernel -->
        <vendor> xilinx.com </vendor>
        <version> 1.0 </version>
        <lib> hls </lib>
        <num> 1 </num>
        <rep> 1 </rep>
        <clk> ap_clk </clk>
        <aresetn> ap_rst_n </aresetn>
        <s_axis>
            <scope> global </scope>
            <name> pkt_in </name>
        </s_axis>
        <m_axis>
            <scope> global </scope>
            <name> pkt_out </name>
        </m_axis>
    </kernel>
</cluster>
```
For each `<kernal>`: <br/>
The `<num>` tag refers to the unique ID of a kernel. <br/>
The `<rep>` refers to the number of times to repeat a kernel. The IDs are of repeated kernels are increased sequentially. <br/>
The `<clk>` refers to the name of the clock interface, this will be tied to the clock in the Hypervisor (Shell). <br/>
The `<aresetn>` refers to the name of the reset interface, this will be tied to the clock in the Hypervisor (Shell)(negative edge triggered). <br/>
The `<id_port>` refers to the port name in the kernel that will be tied to a constant with the value of the unique kernel ID. (optional) <br/>
The `<s_axi>` refers to a port from that would be of the `s_axi` interface. If the scope is `global` then this will connect to the control interface (can be either PCIe or ARM, depending on the board). For a local scope, you can specify the `master` which would be another `m_axi` interface that is of `local` scope. <br/>
The `<m_axi>` refers to a port that would be of the `m_axi` interface. If it's of `global` scope then it will tie to the off-chip memory, else it will connect to an `s_axi` interface that is of `local` scope. <br/>
The `<s_axis>` and `<m_axis>` is similar to that of the above interfaces, except that is is the AXI stream. `global` scope ties to the networking port, `local` can connect to each other. <br/>
The `<packet>` tag is used to specify the AXI-stream signal bit-widths. <br/>


#### MAPFILE

The cluster is described in a MAPFILE with no notion of the mappings.  <br/>
The following is an example kernel from the map file:

```
<cluster>
    <node>
        <type> sw </type>
        <kernel> 0 </kernel> <!-- data_sender from the logical.xml example above --> 
        <kernel> 5 </kernel><!-- could also add multiple kernels as shown -->
        <mac> aa:bb:cc:dd:ee:ff </mac>
        <ip> 10.0.0.1 </ip>
    </node>
    <node>
        <board> sidewinder </board>
        <comm> udp </comm>
        <type> hw </type>
        <kernel> 1 </kernel> <!-- multiplier from the logical.xml example above -->
        <kernel> 2 </kernel> <!-- could also add multiple kernels as shown -->
        <kernel> 3 </kernel>
        <kernel> 4 </kernel>
        <mac> 66:55:44:33:22:11 </mac>
        <ip> 10.0.0.2 </ip>
    </node>
</cluster>
```

The `<board>` tag refers to the FPGA board you wish to use for this particular node. <br/>
The `<kernel>` refers to the unique kernel ID that you wish to put on this node. (same as the `<num>` from LOGICALFILE)  <br/>

  
For an example refer to `galapagos/middleware/python/tests/conf0/configuration_files/*`

