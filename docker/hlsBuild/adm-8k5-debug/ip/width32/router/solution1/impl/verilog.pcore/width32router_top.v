// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module width32router_top (
network_table_V_Clk_A,
network_table_V_Rst_A,
network_table_V_EN_A,
network_table_V_WEN_A,
network_table_V_Addr_A,
network_table_V_Dout_A,
network_table_V_Din_A,
stream_in_V_TVALID,
stream_in_V_TREADY,
stream_in_V_TDATA,
stream_in_V_TDEST,
stream_in_V_TLAST,
stream_in_V_TID,
stream_in_V_TKEEP,
stream_out_network_V_TVALID,
stream_out_network_V_TREADY,
stream_out_network_V_TDATA,
stream_out_network_V_TDEST,
stream_out_network_V_TLAST,
stream_out_network_V_TID,
stream_out_network_V_TKEEP,
stream_out_switch_V_TVALID,
stream_out_switch_V_TREADY,
stream_out_switch_V_TDATA,
stream_out_switch_V_TDEST,
stream_out_switch_V_TLAST,
stream_out_switch_V_TID,
stream_out_switch_V_TKEEP,
aresetn,
aclk,
network_addr_V
);

parameter RESET_ACTIVE_LOW = 1;

output network_table_V_Clk_A ;
output network_table_V_Rst_A ;
output network_table_V_EN_A ;
output [4 - 1:0] network_table_V_WEN_A ;
output [32 - 1:0] network_table_V_Addr_A ;
output [32 - 1:0] network_table_V_Dout_A ;
input [32 - 1:0] network_table_V_Din_A ;


input stream_in_V_TVALID ;
output stream_in_V_TREADY ;
input [64 - 1:0] stream_in_V_TDATA ;
input [8 - 1:0] stream_in_V_TDEST ;
input [1 - 1:0] stream_in_V_TLAST ;
input [8 - 1:0] stream_in_V_TID ;
input [8 - 1:0] stream_in_V_TKEEP ;


output stream_out_network_V_TVALID ;
input stream_out_network_V_TREADY ;
output [64 - 1:0] stream_out_network_V_TDATA ;
output [8 - 1:0] stream_out_network_V_TDEST ;
output [1 - 1:0] stream_out_network_V_TLAST ;
output [8 - 1:0] stream_out_network_V_TID ;
output [8 - 1:0] stream_out_network_V_TKEEP ;


output stream_out_switch_V_TVALID ;
input stream_out_switch_V_TREADY ;
output [64 - 1:0] stream_out_switch_V_TDATA ;
output [8 - 1:0] stream_out_switch_V_TDEST ;
output [1 - 1:0] stream_out_switch_V_TLAST ;
output [8 - 1:0] stream_out_switch_V_TID ;
output [8 - 1:0] stream_out_switch_V_TKEEP ;

input aresetn ;

input aclk ;

input [32 - 1:0] network_addr_V ;


wire network_table_V_Clk_A;
wire network_table_V_Rst_A;
wire network_table_V_EN_A;
wire [4 - 1:0] network_table_V_WEN_A;
wire [32 - 1:0] network_table_V_Addr_A;
wire [32 - 1:0] network_table_V_Dout_A;
wire [32 - 1:0] network_table_V_Din_A;


wire stream_in_V_TVALID;
wire stream_in_V_TREADY;
wire [64 - 1:0] stream_in_V_TDATA;
wire [8 - 1:0] stream_in_V_TDEST;
wire [1 - 1:0] stream_in_V_TLAST;
wire [8 - 1:0] stream_in_V_TID;
wire [8 - 1:0] stream_in_V_TKEEP;


wire stream_out_network_V_TVALID;
wire stream_out_network_V_TREADY;
wire [64 - 1:0] stream_out_network_V_TDATA;
wire [8 - 1:0] stream_out_network_V_TDEST;
wire [1 - 1:0] stream_out_network_V_TLAST;
wire [8 - 1:0] stream_out_network_V_TID;
wire [8 - 1:0] stream_out_network_V_TKEEP;


wire stream_out_switch_V_TVALID;
wire stream_out_switch_V_TREADY;
wire [64 - 1:0] stream_out_switch_V_TDATA;
wire [8 - 1:0] stream_out_switch_V_TDEST;
wire [1 - 1:0] stream_out_switch_V_TLAST;
wire [8 - 1:0] stream_out_switch_V_TID;
wire [8 - 1:0] stream_out_switch_V_TKEEP;

wire aresetn;



wire [8 - 1:0] sig_width32router_network_table_V_address0;
wire sig_width32router_network_table_V_ce0;
wire [32 - 1:0] sig_width32router_network_table_V_q0;

wire [89 - 1:0] sig_width32router_stream_in_V_dout;
wire sig_width32router_stream_in_V_empty_n;
wire sig_width32router_stream_in_V_read;

wire [89 - 1:0] sig_width32router_stream_out_network_V_din;
wire sig_width32router_stream_out_network_V_full_n;
wire sig_width32router_stream_out_network_V_write;

wire [89 - 1:0] sig_width32router_stream_out_switch_V_din;
wire sig_width32router_stream_out_switch_V_full_n;
wire sig_width32router_stream_out_switch_V_write;

wire sig_width32router_ap_rst;



width32router width32router_U(
    .network_table_V_address0(sig_width32router_network_table_V_address0),
    .network_table_V_ce0(sig_width32router_network_table_V_ce0),
    .network_table_V_q0(sig_width32router_network_table_V_q0),
    .stream_in_V_dout(sig_width32router_stream_in_V_dout),
    .stream_in_V_empty_n(sig_width32router_stream_in_V_empty_n),
    .stream_in_V_read(sig_width32router_stream_in_V_read),
    .stream_out_network_V_din(sig_width32router_stream_out_network_V_din),
    .stream_out_network_V_full_n(sig_width32router_stream_out_network_V_full_n),
    .stream_out_network_V_write(sig_width32router_stream_out_network_V_write),
    .stream_out_switch_V_din(sig_width32router_stream_out_switch_V_din),
    .stream_out_switch_V_full_n(sig_width32router_stream_out_switch_V_full_n),
    .stream_out_switch_V_write(sig_width32router_stream_out_switch_V_write),
    .ap_rst(sig_width32router_ap_rst),
    .ap_clk(aclk),
    .network_addr_V(network_addr_V)
);

width32router_network_table_V_if width32router_network_table_V_if_U(
    .clk(aclk),
    .reset(sig_width32router_ap_rst_n),
    .network_table_V_address0(sig_width32router_network_table_V_address0),
    .network_table_V_ce0(sig_width32router_network_table_V_ce0),
    .network_table_V_q0(sig_width32router_network_table_V_q0),
    .Clk_A(network_table_V_Clk_A),
    .Rst_A(network_table_V_Rst_A),
    .EN_A(network_table_V_EN_A),
    .WEN_A(network_table_V_WEN_A),
    .Addr_A(network_table_V_Addr_A),
    .Dout_A(network_table_V_Dout_A),
    .Din_A(network_table_V_Din_A));

width32router_stream_in_V_if width32router_stream_in_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_in_V_dout(sig_width32router_stream_in_V_dout),
    .stream_in_V_empty_n(sig_width32router_stream_in_V_empty_n),
    .stream_in_V_read(sig_width32router_stream_in_V_read),
    .TVALID(stream_in_V_TVALID),
    .TREADY(stream_in_V_TREADY),
    .TDATA(stream_in_V_TDATA),
    .TDEST(stream_in_V_TDEST),
    .TLAST(stream_in_V_TLAST),
    .TID(stream_in_V_TID),
    .TKEEP(stream_in_V_TKEEP));

width32router_stream_out_network_V_if width32router_stream_out_network_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_out_network_V_din(sig_width32router_stream_out_network_V_din),
    .stream_out_network_V_full_n(sig_width32router_stream_out_network_V_full_n),
    .stream_out_network_V_write(sig_width32router_stream_out_network_V_write),
    .TVALID(stream_out_network_V_TVALID),
    .TREADY(stream_out_network_V_TREADY),
    .TDATA(stream_out_network_V_TDATA),
    .TDEST(stream_out_network_V_TDEST),
    .TLAST(stream_out_network_V_TLAST),
    .TID(stream_out_network_V_TID),
    .TKEEP(stream_out_network_V_TKEEP));

width32router_stream_out_switch_V_if width32router_stream_out_switch_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_out_switch_V_din(sig_width32router_stream_out_switch_V_din),
    .stream_out_switch_V_full_n(sig_width32router_stream_out_switch_V_full_n),
    .stream_out_switch_V_write(sig_width32router_stream_out_switch_V_write),
    .TVALID(stream_out_switch_V_TVALID),
    .TREADY(stream_out_switch_V_TREADY),
    .TDATA(stream_out_switch_V_TDATA),
    .TDEST(stream_out_switch_V_TDEST),
    .TLAST(stream_out_switch_V_TLAST),
    .TID(stream_out_switch_V_TID),
    .TKEEP(stream_out_switch_V_TKEEP));

width32router_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_width32router_ap_rst),
    .din(aresetn));

endmodule