// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module g2N_egress (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        output_V_din,
        output_V_full_n,
        output_V_write,
        buffer_storage_V_address0,
        buffer_storage_V_ce0,
        buffer_storage_V_q0,
        length_stream_V_V,
        dest_stream_V_V,
        src_stream_V_V
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;
parameter    ap_const_lv73_0 = 73'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [72:0] output_V_din;
input   output_V_full_n;
output   output_V_write;
output  [8:0] buffer_storage_V_address0;
output   buffer_storage_V_ce0;
input  [63:0] buffer_storage_V_q0;
input  [15:0] length_stream_V_V;
input  [7:0] dest_stream_V_V;
input  [7:0] src_stream_V_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[72:0] output_V_din;
reg output_V_write;
reg buffer_storage_V_ce0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    output_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_1_reg_222;
reg   [31:0] i_reg_125;
reg   [15:0] tmp_V_reg_216;
reg    ap_block_state1;
wire   [0:0] tmp_1_fu_170_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] i_3_fu_176_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_last_V_fu_200_p2;
reg   [0:0] tmp_last_V_reg_236;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [63:0] tmp_2_fu_182_p1;
wire   [72:0] tmp_9_fu_154_p5;
wire   [72:0] tmp_16_fu_206_p4;
reg    ap_block_pp0_stage0_01001;
wire   [12:0] tmp_fu_136_p1;
wire   [71:0] tmp_5_fu_140_p6;
wire   [31:0] tmp_s_fu_167_p1;
wire   [16:0] lhs_V_cast_fu_187_p1;
wire   [16:0] r_V_fu_190_p2;
wire  signed [31:0] tmp_3_cast_fu_196_p1;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_170_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_125 <= i_3_fu_176_p2;
    end else if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_125 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_222 <= tmp_1_fu_170_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_reg_216 <= length_stream_V_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_236 <= tmp_last_V_fu_200_p2;
    end
end

always @ (*) begin
    if ((tmp_1_fu_170_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_storage_V_ce0 = 1'b1;
    end else begin
        buffer_storage_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_1_reg_222 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_blk_n = output_V_full_n;
    end else begin
        output_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_1_reg_222 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        output_V_din = tmp_16_fu_206_p4;
    end else if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        output_V_din = tmp_9_fu_154_p5;
    end else begin
        output_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_222 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_write = 1'b1;
    end else begin
        output_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_1_fu_170_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_1_fu_170_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((tmp_1_reg_222 == 1'd1) & (output_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((tmp_1_reg_222 == 1'd1) & (output_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((tmp_1_reg_222 == 1'd1) & (output_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (output_V_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((tmp_1_reg_222 == 1'd1) & (output_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buffer_storage_V_address0 = tmp_2_fu_182_p1;

assign i_3_fu_176_p2 = (i_reg_125 + 32'd1);

assign lhs_V_cast_fu_187_p1 = tmp_V_reg_216;

assign r_V_fu_190_p2 = ($signed(lhs_V_cast_fu_187_p1) + $signed(17'd131071));

assign tmp_16_fu_206_p4 = {{{tmp_last_V_reg_236}, {8'd255}}, {buffer_storage_V_q0}};

assign tmp_1_fu_170_p2 = (($signed(i_reg_125) < $signed(tmp_s_fu_167_p1)) ? 1'b1 : 1'b0);

assign tmp_2_fu_182_p1 = i_reg_125;

assign tmp_3_cast_fu_196_p1 = $signed(r_V_fu_190_p2);

assign tmp_5_fu_140_p6 = {{{{{{{{40'd1095216660480}, {dest_stream_V_V}}}, {src_stream_V_V}}}, {tmp_fu_136_p1}}}, {3'd0}};

assign tmp_9_fu_154_p5 = {{ap_const_lv73_0[72:72]}, {tmp_5_fu_140_p6}};

assign tmp_fu_136_p1 = length_stream_V_V[12:0];

assign tmp_last_V_fu_200_p2 = ((i_reg_125 == tmp_3_cast_fu_196_p1) ? 1'b1 : 1'b0);

assign tmp_s_fu_167_p1 = tmp_V_reg_216;

endmodule //g2N_egress