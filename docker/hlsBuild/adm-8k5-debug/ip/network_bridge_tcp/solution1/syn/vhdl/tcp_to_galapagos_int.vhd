-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tcp_to_galapagos_int is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxData_V_dout : IN STD_LOGIC_VECTOR (72 downto 0);
    rxData_V_empty_n : IN STD_LOGIC;
    rxData_V_read : OUT STD_LOGIC;
    t2g_read_sid_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    t2g_read_sid_V_V_empty_n : IN STD_LOGIC;
    t2g_read_sid_V_V_read : OUT STD_LOGIC;
    rxMetaData_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    rxMetaData_V_V_empty_n : IN STD_LOGIC;
    rxMetaData_V_V_read : OUT STD_LOGIC;
    txGalapagosBridge_V_din : OUT STD_LOGIC_VECTOR (72 downto 0);
    txGalapagosBridge_V_full_n : IN STD_LOGIC;
    txGalapagosBridge_V_write : OUT STD_LOGIC;
    t2g_write_dest_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    t2g_write_dest_V_V_full_n : IN STD_LOGIC;
    t2g_write_dest_V_V_write : OUT STD_LOGIC;
    t2g_write_sid_V_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    t2g_write_sid_V_V_full_n : IN STD_LOGIC;
    t2g_write_sid_V_V_write : OUT STD_LOGIC;
    t2g_read_dest_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    t2g_read_dest_V_V_full_n : IN STD_LOGIC;
    t2g_read_dest_V_V_write : OUT STD_LOGIC );
end;


architecture behav of tcp_to_galapagos_int is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv16_3E8 : STD_LOGIC_VECTOR (15 downto 0) := "0000001111101000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal state_load_load_fu_168_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_nbreadreq_fu_98_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op6_read_state1 : BOOLEAN;
    signal tmp_2_nbreadreq_fu_112_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op12_read_state1 : BOOLEAN;
    signal ap_predicate_op17_read_state1 : BOOLEAN;
    signal tmp_nbreadreq_fu_132_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op29_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal state_load_reg_317 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op45_write_state2 : BOOLEAN;
    signal tmp_1_reg_334 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op64_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal state : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal sessionID_V_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal currWord_data_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal currWord_keep_V : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal currWord_last_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal src_V : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal rxMetaData_V_V_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxData_V_blk_n : STD_LOGIC;
    signal txGalapagosBridge_V_blk_n : STD_LOGIC;
    signal t2g_read_dest_V_V_blk_n : STD_LOGIC;
    signal t2g_read_sid_V_V_blk_n : STD_LOGIC;
    signal t2g_write_dest_V_V_blk_n : STD_LOGIC;
    signal t2g_write_sid_V_V_blk_n : STD_LOGIC;
    signal tmp_227_reg_325 : STD_LOGIC_VECTOR (72 downto 0);
    signal tmp_V_3_reg_338 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_11_fu_296_p4 : STD_LOGIC_VECTOR (72 downto 0);
    signal storemerge_i_fu_196_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Val2_s_fu_210_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_216 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                state <= ap_const_lv3_1;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                state <= ap_const_lv3_2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                state <= storemerge_i_fu_196_p3;
            elsif (((state_load_load_fu_168_p1 = ap_const_lv3_3) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                state <= ap_const_lv3_4;
            elsif (((state_load_load_fu_168_p1 = ap_const_lv3_4) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                state <= ap_const_lv3_5;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                state <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                currWord_data_V <= p_Val2_s_fu_210_p1;
                currWord_keep_V <= rxData_V_dout(71 downto 64);
                currWord_last_V <= rxData_V_dout(72 downto 72);
                src_V <= rxData_V_dout(23 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                sessionID_V_1 <= rxMetaData_V_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                state_load_reg_317 <= state;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((state = ap_const_lv3_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_1_reg_334 <= (0=>rxData_V_empty_n, others=>'-');
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_227_reg_325 <= rxData_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((state = ap_const_lv3_5) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_3_reg_321 <= (0=>rxData_V_empty_n, others=>'-');
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_V_3_reg_338 <= rxData_V_dout(23 downto 16);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxData_V_empty_n, ap_predicate_op6_read_state1, t2g_read_sid_V_V_empty_n, ap_predicate_op12_read_state1, ap_predicate_op17_read_state1, rxMetaData_V_V_empty_n, ap_predicate_op29_read_state1, txGalapagosBridge_V_full_n, state_load_reg_317, ap_predicate_op45_write_state2, t2g_write_dest_V_V_full_n, t2g_write_sid_V_V_full_n, t2g_read_dest_V_V_full_n, ap_predicate_op64_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((t2g_read_sid_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((state_load_reg_317 = ap_const_lv3_4) and (txGalapagosBridge_V_full_n = ap_const_logic_0)) or ((txGalapagosBridge_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)) or ((t2g_read_dest_V_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_sid_V_V_full_n = ap_const_logic_0)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_dest_V_V_full_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxData_V_empty_n, ap_predicate_op6_read_state1, t2g_read_sid_V_V_empty_n, ap_predicate_op12_read_state1, ap_predicate_op17_read_state1, rxMetaData_V_V_empty_n, ap_predicate_op29_read_state1, txGalapagosBridge_V_full_n, state_load_reg_317, ap_predicate_op45_write_state2, t2g_write_dest_V_V_full_n, t2g_write_sid_V_V_full_n, t2g_read_dest_V_V_full_n, ap_predicate_op64_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((t2g_read_sid_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((state_load_reg_317 = ap_const_lv3_4) and (txGalapagosBridge_V_full_n = ap_const_logic_0)) or ((txGalapagosBridge_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)) or ((t2g_read_dest_V_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_sid_V_V_full_n = ap_const_logic_0)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_dest_V_V_full_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxData_V_empty_n, ap_predicate_op6_read_state1, t2g_read_sid_V_V_empty_n, ap_predicate_op12_read_state1, ap_predicate_op17_read_state1, rxMetaData_V_V_empty_n, ap_predicate_op29_read_state1, txGalapagosBridge_V_full_n, state_load_reg_317, ap_predicate_op45_write_state2, t2g_write_dest_V_V_full_n, t2g_write_sid_V_V_full_n, t2g_read_dest_V_V_full_n, ap_predicate_op64_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((t2g_read_sid_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((state_load_reg_317 = ap_const_lv3_4) and (txGalapagosBridge_V_full_n = ap_const_logic_0)) or ((txGalapagosBridge_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)) or ((t2g_read_dest_V_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_sid_V_V_full_n = ap_const_logic_0)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_dest_V_V_full_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, rxData_V_empty_n, ap_predicate_op6_read_state1, t2g_read_sid_V_V_empty_n, ap_predicate_op12_read_state1, ap_predicate_op17_read_state1, rxMetaData_V_V_empty_n, ap_predicate_op29_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or ((rxMetaData_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((t2g_read_sid_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1)) or ((rxData_V_empty_n = ap_const_logic_0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(txGalapagosBridge_V_full_n, state_load_reg_317, ap_predicate_op45_write_state2, t2g_write_dest_V_V_full_n, t2g_write_sid_V_V_full_n, t2g_read_dest_V_V_full_n, ap_predicate_op64_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((state_load_reg_317 = ap_const_lv3_4) and (txGalapagosBridge_V_full_n = ap_const_logic_0)) or ((txGalapagosBridge_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)) or ((t2g_read_dest_V_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_sid_V_V_full_n = ap_const_logic_0)) or ((state_load_reg_317 = ap_const_lv3_3) and (t2g_write_dest_V_V_full_n = ap_const_logic_0)));
    end process;


    ap_condition_216_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_216 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op12_read_state1_assign_proc : process(tmp_2_nbreadreq_fu_112_p3, state)
    begin
                ap_predicate_op12_read_state1 <= ((tmp_2_nbreadreq_fu_112_p3 = ap_const_lv1_1) and (state = ap_const_lv3_2));
    end process;


    ap_predicate_op17_read_state1_assign_proc : process(grp_nbreadreq_fu_98_p3, state)
    begin
                ap_predicate_op17_read_state1 <= ((grp_nbreadreq_fu_98_p3 = ap_const_lv1_1) and (state = ap_const_lv3_1));
    end process;


    ap_predicate_op29_read_state1_assign_proc : process(tmp_nbreadreq_fu_132_p3, state)
    begin
                ap_predicate_op29_read_state1 <= ((tmp_nbreadreq_fu_132_p3 = ap_const_lv1_1) and (state = ap_const_lv3_0));
    end process;


    ap_predicate_op45_write_state2_assign_proc : process(state_load_reg_317, tmp_3_reg_321)
    begin
                ap_predicate_op45_write_state2 <= ((tmp_3_reg_321 = ap_const_lv1_1) and (state_load_reg_317 = ap_const_lv3_5));
    end process;


    ap_predicate_op64_write_state2_assign_proc : process(state_load_reg_317, tmp_1_reg_334)
    begin
                ap_predicate_op64_write_state2 <= ((state_load_reg_317 = ap_const_lv3_1) and (tmp_1_reg_334 = ap_const_lv1_1));
    end process;


    ap_predicate_op6_read_state1_assign_proc : process(grp_nbreadreq_fu_98_p3, state)
    begin
                ap_predicate_op6_read_state1 <= ((grp_nbreadreq_fu_98_p3 = ap_const_lv1_1) and (state = ap_const_lv3_5));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_nbreadreq_fu_98_p3 <= (0=>rxData_V_empty_n, others=>'-');
    p_Val2_s_fu_210_p1 <= rxData_V_dout(64 - 1 downto 0);

    rxData_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxData_V_empty_n, ap_predicate_op6_read_state1, ap_predicate_op17_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxData_V_blk_n <= rxData_V_empty_n;
        else 
            rxData_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxData_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op6_read_state1, ap_predicate_op17_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op6_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            rxData_V_read <= ap_const_logic_1;
        else 
            rxData_V_read <= ap_const_logic_0;
        end if; 
    end process;


    rxMetaData_V_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, ap_predicate_op17_read_state1, rxMetaData_V_V_empty_n, ap_predicate_op29_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxMetaData_V_V_blk_n <= rxMetaData_V_V_empty_n;
        else 
            rxMetaData_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxMetaData_V_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op17_read_state1, ap_predicate_op29_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op17_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            rxMetaData_V_V_read <= ap_const_logic_1;
        else 
            rxMetaData_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    state_load_load_fu_168_p1 <= state;
    storemerge_i_fu_196_p3 <= 
        ap_const_lv3_3 when (tmp_i_fu_190_p2(0) = '1') else 
        ap_const_lv3_4;

    t2g_read_dest_V_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, t2g_read_dest_V_V_full_n, ap_predicate_op64_write_state2, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            t2g_read_dest_V_V_blk_n <= t2g_read_dest_V_V_full_n;
        else 
            t2g_read_dest_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    t2g_read_dest_V_V_din <= tmp_V_3_reg_338;

    t2g_read_dest_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op64_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            t2g_read_dest_V_V_write <= ap_const_logic_1;
        else 
            t2g_read_dest_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    t2g_read_sid_V_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, t2g_read_sid_V_V_empty_n, ap_predicate_op12_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            t2g_read_sid_V_V_blk_n <= t2g_read_sid_V_V_empty_n;
        else 
            t2g_read_sid_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    t2g_read_sid_V_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op12_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op12_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            t2g_read_sid_V_V_read <= ap_const_logic_1;
        else 
            t2g_read_sid_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    t2g_write_dest_V_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_load_reg_317, t2g_write_dest_V_V_full_n, ap_block_pp0_stage0)
    begin
        if (((state_load_reg_317 = ap_const_lv3_3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            t2g_write_dest_V_V_blk_n <= t2g_write_dest_V_V_full_n;
        else 
            t2g_write_dest_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    t2g_write_dest_V_V_din <= src_V;

    t2g_write_dest_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_load_reg_317, ap_block_pp0_stage0_11001)
    begin
        if (((state_load_reg_317 = ap_const_lv3_3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            t2g_write_dest_V_V_write <= ap_const_logic_1;
        else 
            t2g_write_dest_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    t2g_write_sid_V_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_load_reg_317, t2g_write_sid_V_V_full_n, ap_block_pp0_stage0)
    begin
        if (((state_load_reg_317 = ap_const_lv3_3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            t2g_write_sid_V_V_blk_n <= t2g_write_sid_V_V_full_n;
        else 
            t2g_write_sid_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    t2g_write_sid_V_V_din <= sessionID_V_1;

    t2g_write_sid_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_load_reg_317, ap_block_pp0_stage0_11001)
    begin
        if (((state_load_reg_317 = ap_const_lv3_3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            t2g_write_sid_V_V_write <= ap_const_logic_1;
        else 
            t2g_write_sid_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_11_fu_296_p4 <= ((currWord_last_V & currWord_keep_V) & currWord_data_V);
    tmp_2_nbreadreq_fu_112_p3 <= (0=>t2g_read_sid_V_V_empty_n, others=>'-');
    tmp_i_fu_190_p2 <= "1" when (t2g_read_sid_V_V_dout = ap_const_lv16_3E8) else "0";
    tmp_nbreadreq_fu_132_p3 <= (0=>rxMetaData_V_V_empty_n, others=>'-');

    txGalapagosBridge_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, txGalapagosBridge_V_full_n, state_load_reg_317, ap_predicate_op45_write_state2, ap_block_pp0_stage0)
    begin
        if ((((state_load_reg_317 = ap_const_lv3_4) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            txGalapagosBridge_V_blk_n <= txGalapagosBridge_V_full_n;
        else 
            txGalapagosBridge_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txGalapagosBridge_V_din_assign_proc : process(state_load_reg_317, ap_predicate_op45_write_state2, tmp_227_reg_325, tmp_11_fu_296_p4, ap_condition_216)
    begin
        if ((ap_const_boolean_1 = ap_condition_216)) then
            if ((state_load_reg_317 = ap_const_lv3_4)) then 
                txGalapagosBridge_V_din <= tmp_11_fu_296_p4;
            elsif ((ap_predicate_op45_write_state2 = ap_const_boolean_1)) then 
                txGalapagosBridge_V_din <= tmp_227_reg_325;
            else 
                txGalapagosBridge_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            txGalapagosBridge_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    txGalapagosBridge_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_load_reg_317, ap_predicate_op45_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((state_load_reg_317 = ap_const_lv3_4) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            txGalapagosBridge_V_write <= ap_const_logic_1;
        else 
            txGalapagosBridge_V_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;