# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename from_eth_V
set opts {
    {
        id 4
        name from_eth_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 73
    }
}
set portmap { }
set metadata { -bus_bundle from_eth_V}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axis_gen] == "::AESL_LIB_XILADAPTER::axis_gen"} {
eval "::AESL_LIB_XILADAPTER::axis_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axis_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Adapter definition:
set corename to_app_V
set opts {
    {
        id 5
        name to_app_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 81
    }
}
set portmap { }
set metadata { -bus_bundle to_app_V}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axis_gen] == "::AESL_LIB_XILADAPTER::axis_gen"} {
eval "::AESL_LIB_XILADAPTER::axis_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axis_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name mac_address_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_address_V \
    op interface \
    ports { mac_address_V_dout { I 48 vector } mac_address_V_empty_n { I 1 bit } mac_address_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name observedAddress_out_s \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_observedAddress_out_s \
    op interface \
    ports { observedAddress_out_s { O 48 vector } observedAddress_out_s_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}

