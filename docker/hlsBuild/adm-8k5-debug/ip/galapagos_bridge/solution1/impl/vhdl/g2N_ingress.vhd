-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity g2N_ingress is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_V_dout : IN STD_LOGIC_VECTOR (88 downto 0);
    input_V_empty_n : IN STD_LOGIC;
    input_V_read : OUT STD_LOGIC;
    buffer_storage_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    buffer_storage_V_ce0 : OUT STD_LOGIC;
    buffer_storage_V_we0 : OUT STD_LOGIC;
    buffer_storage_V_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    length_stream_V_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    length_stream_V_V_ap_vld : OUT STD_LOGIC;
    dest_stream_V_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    dest_stream_V_V_ap_vld : OUT STD_LOGIC;
    src_stream_V_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    src_stream_V_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of g2N_ingress is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv32_49 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001001";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal input_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_146_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_202 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal tmp_V_4_fu_154_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_V_4_reg_206 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp2_reg_212 : STD_LOGIC_VECTOR (88 downto 0);
    signal i_reg_135 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_7_fu_165_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (tmp_7_fu_165_p3 = ap_const_lv1_0) and (tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_reg_135 <= tmp_V_4_fu_154_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_135 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp2_reg_212 <= input_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_V_4_reg_206 <= tmp_V_4_fu_154_p2;
                tmp_reg_202 <= i_reg_135(9 downto 9);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, input_V_empty_n, ap_CS_fsm_state2, tmp_fu_146_p3, tmp_7_fu_165_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (tmp_7_fu_165_p3 = ap_const_lv1_0) and (tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2) and ((tmp_fu_146_p3 = ap_const_lv1_1) or ((tmp_7_fu_165_p3 = ap_const_lv1_1) and (tmp_fu_146_p3 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(input_V_empty_n, tmp_fu_146_p3)
    begin
                ap_block_state2 <= ((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buffer_storage_V_address0 <= tmp_6_fu_173_p1(9 - 1 downto 0);

    buffer_storage_V_ce0_assign_proc : process(input_V_empty_n, ap_CS_fsm_state2, tmp_fu_146_p3)
    begin
        if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            buffer_storage_V_ce0 <= ap_const_logic_1;
        else 
            buffer_storage_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buffer_storage_V_d0 <= input_V_dout(64 - 1 downto 0);

    buffer_storage_V_we0_assign_proc : process(input_V_empty_n, ap_CS_fsm_state2, tmp_fu_146_p3)
    begin
        if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            buffer_storage_V_we0 <= ap_const_logic_1;
        else 
            buffer_storage_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    dest_stream_V_V <= tmp2_reg_212(71 downto 64);

    dest_stream_V_V_ap_vld_assign_proc : process(tmp_reg_202, ap_CS_fsm_state3)
    begin
        if (((tmp_reg_202 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            dest_stream_V_V_ap_vld <= ap_const_logic_1;
        else 
            dest_stream_V_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    input_V_blk_n_assign_proc : process(input_V_empty_n, ap_CS_fsm_state2, tmp_fu_146_p3)
    begin
        if (((tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            input_V_blk_n <= input_V_empty_n;
        else 
            input_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    input_V_read_assign_proc : process(input_V_empty_n, ap_CS_fsm_state2, tmp_fu_146_p3)
    begin
        if ((not(((tmp_fu_146_p3 = ap_const_lv1_0) and (input_V_empty_n = ap_const_logic_0))) and (tmp_fu_146_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            input_V_read <= ap_const_logic_1;
        else 
            input_V_read <= ap_const_logic_0;
        end if; 
    end process;

    length_stream_V_V <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_V_4_reg_206),16));

    length_stream_V_V_ap_vld_assign_proc : process(tmp_reg_202, ap_CS_fsm_state3)
    begin
        if (((tmp_reg_202 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            length_stream_V_V_ap_vld <= ap_const_logic_1;
        else 
            length_stream_V_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    src_stream_V_V <= tmp2_reg_212(80 downto 73);

    src_stream_V_V_ap_vld_assign_proc : process(tmp_reg_202, ap_CS_fsm_state3)
    begin
        if (((tmp_reg_202 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_stream_V_V_ap_vld <= ap_const_logic_1;
        else 
            src_stream_V_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_6_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_135),64));
    tmp_7_fu_165_p3 <= input_V_dout(72 downto 72);
    tmp_V_4_fu_154_p2 <= std_logic_vector(unsigned(i_reg_135) + unsigned(ap_const_lv10_1));
    tmp_fu_146_p3 <= i_reg_135(9 downto 9);
end behav;