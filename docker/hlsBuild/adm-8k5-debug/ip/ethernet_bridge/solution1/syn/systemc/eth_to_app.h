// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _eth_to_app_HH_
#define _eth_to_app_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct eth_to_app : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<48> > mac_address_V_dout;
    sc_in< sc_logic > mac_address_V_empty_n;
    sc_out< sc_logic > mac_address_V_read;
    sc_in< sc_lv<73> > from_eth_V_dout;
    sc_in< sc_logic > from_eth_V_empty_n;
    sc_out< sc_logic > from_eth_V_read;
    sc_out< sc_lv<81> > to_app_V_din;
    sc_in< sc_logic > to_app_V_full_n;
    sc_out< sc_logic > to_app_V_write;
    sc_out< sc_lv<48> > observedAddress_out_s;
    sc_out< sc_logic > observedAddress_out_s_ap_vld;


    // Module declarations
    eth_to_app(sc_module_name name);
    SC_HAS_PROCESS(eth_to_app);

    ~eth_to_app();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_100_p3;
    sc_signal< bool > ap_predicate_op7_read_state1;
    sc_signal< bool > ap_predicate_op16_read_state1;
    sc_signal< bool > ap_predicate_op27_read_state1;
    sc_signal< bool > ap_predicate_op34_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<3> > state_V_1_load_reg_354;
    sc_signal< sc_lv<1> > tmp_2_reg_362;
    sc_signal< bool > ap_predicate_op56_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > state_V_1;
    sc_signal< sc_lv<8> > dest_V;
    sc_signal< sc_lv<1> > app_packet_out_last_s;
    sc_signal< sc_logic > from_eth_V_blk_n;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > to_app_V_blk_n;
    sc_signal< sc_logic > mac_address_V_blk_n;
    sc_signal< sc_lv<8> > tmp_tkeep_V_reg_366;
    sc_signal< sc_lv<65> > tmp_11_fu_211_p1;
    sc_signal< sc_lv<65> > tmp_11_reg_371;
    sc_signal< sc_lv<48> > observedAddress_V_fu_305_p7;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<1> > ap_phi_mux_app_packet_out_last_2_phi_fu_131_p4;
    sc_signal< sc_lv<1> > grp_fu_161_p3;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_app_packet_out_last_2_reg_128;
    sc_signal< sc_lv<48> > ap_phi_reg_pp0_iter0_p_066_1_i_reg_137;
    sc_signal< sc_lv<48> > ap_phi_reg_pp0_iter1_p_066_1_i_reg_137;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<3> > storemerge_cast_i_fu_180_p1;
    sc_signal< sc_lv<3> > storemerge2_cast_i_c_fu_215_p3;
    sc_signal< sc_lv<3> > storemerge1_cast_i_c_fu_327_p3;
    sc_signal< sc_lv<1> > not_tmp_last_V_4_loa_fu_174_p2;
    sc_signal< sc_lv<8> > tmp_4_fu_251_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_255_p4;
    sc_signal< sc_lv<8> > tmp_6_fu_265_p4;
    sc_signal< sc_lv<8> > tmp_8_fu_285_p4;
    sc_signal< sc_lv<8> > tmp_7_fu_275_p4;
    sc_signal< sc_lv<8> > tmp_9_fu_295_p4;
    sc_signal< sc_lv<1> > tmp_i_fu_321_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_195;
    sc_signal< bool > ap_condition_102;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_condition_102();
    void thread_ap_condition_195();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_phi_mux_app_packet_out_last_2_phi_fu_131_p4();
    void thread_ap_phi_reg_pp0_iter0_app_packet_out_last_2_reg_128();
    void thread_ap_phi_reg_pp0_iter0_p_066_1_i_reg_137();
    void thread_ap_predicate_op16_read_state1();
    void thread_ap_predicate_op27_read_state1();
    void thread_ap_predicate_op34_read_state1();
    void thread_ap_predicate_op56_write_state2();
    void thread_ap_predicate_op7_read_state1();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_from_eth_V_blk_n();
    void thread_from_eth_V_read();
    void thread_grp_fu_161_p3();
    void thread_grp_nbreadreq_fu_100_p3();
    void thread_mac_address_V_blk_n();
    void thread_mac_address_V_read();
    void thread_not_tmp_last_V_4_loa_fu_174_p2();
    void thread_observedAddress_V_fu_305_p7();
    void thread_observedAddress_out_s();
    void thread_observedAddress_out_s_ap_vld();
    void thread_storemerge1_cast_i_c_fu_327_p3();
    void thread_storemerge2_cast_i_c_fu_215_p3();
    void thread_storemerge_cast_i_fu_180_p1();
    void thread_tmp_11_fu_211_p1();
    void thread_tmp_4_fu_251_p1();
    void thread_tmp_5_fu_255_p4();
    void thread_tmp_6_fu_265_p4();
    void thread_tmp_7_fu_275_p4();
    void thread_tmp_8_fu_285_p4();
    void thread_tmp_9_fu_295_p4();
    void thread_tmp_i_fu_321_p2();
    void thread_to_app_V_blk_n();
    void thread_to_app_V_din();
    void thread_to_app_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif