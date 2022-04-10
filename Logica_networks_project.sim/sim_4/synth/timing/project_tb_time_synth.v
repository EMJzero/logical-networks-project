// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Apr 10 10:44:24 2022
// Host        : Zero running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/Documents/LNP/Logica_networks_project.sim/sim_4/synth/timing/project_tb_time_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_rst;
  input i_start;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [0:0]current_address;
  wire \current_address[1]_i_1_n_0 ;
  wire \current_address[2]_i_1_n_0 ;
  wire \current_address[3]_i_1_n_0 ;
  wire \current_address[4]_i_1_n_0 ;
  wire \current_address[5]_i_1_n_0 ;
  wire \current_address[6]_i_1_n_0 ;
  wire \current_address[7]_i_1_n_0 ;
  wire \current_address[7]_i_2_n_0 ;
  wire \current_address[7]_i_3_n_0 ;
  wire \current_address_reg_n_0_[0] ;
  wire \current_address_reg_n_0_[1] ;
  wire \current_address_reg_n_0_[2] ;
  wire \current_address_reg_n_0_[3] ;
  wire \current_address_reg_n_0_[4] ;
  wire \current_address_reg_n_0_[5] ;
  wire \current_address_reg_n_0_[6] ;
  wire \current_address_reg_n_0_[7] ;
  wire [7:0]encoded_data;
  wire \encoded_data_reg_n_0_[0] ;
  wire \encoded_data_reg_n_0_[1] ;
  wire \encoded_data_reg_n_0_[2] ;
  wire \encoded_data_reg_n_0_[3] ;
  wire \encoded_data_reg_n_0_[4] ;
  wire \encoded_data_reg_n_0_[5] ;
  wire \encoded_data_reg_n_0_[6] ;
  wire \encoded_data_reg_n_0_[7] ;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire [15:0]o_address;
  wire \o_address[0]_i_1_n_0 ;
  wire \o_address[10]_i_1_n_0 ;
  wire \o_address[10]_i_2_n_0 ;
  wire \o_address[1]_i_1_n_0 ;
  wire \o_address[2]_i_1_n_0 ;
  wire \o_address[3]_i_1_n_0 ;
  wire \o_address[3]_i_2_n_0 ;
  wire \o_address[4]_i_1_n_0 ;
  wire \o_address[4]_i_2_n_0 ;
  wire \o_address[5]_i_1_n_0 ;
  wire \o_address[5]_i_2_n_0 ;
  wire \o_address[6]_i_1_n_0 ;
  wire \o_address[6]_i_2_n_0 ;
  wire \o_address[7]_i_1_n_0 ;
  wire \o_address[7]_i_2_n_0 ;
  wire \o_address[8]_i_1_n_0 ;
  wire \o_address[9]_i_1_n_0 ;
  wire [10:0]o_address_OBUF;
  wire [7:0]o_data;
  wire \o_data[0]_i_1_n_0 ;
  wire \o_data[0]_i_2_n_0 ;
  wire \o_data[1]_i_1_n_0 ;
  wire \o_data[2]_i_1_n_0 ;
  wire \o_data[2]_i_2_n_0 ;
  wire \o_data[3]_i_1_n_0 ;
  wire \o_data[4]_i_1_n_0 ;
  wire \o_data[4]_i_2_n_0 ;
  wire \o_data[5]_i_1_n_0 ;
  wire \o_data[6]_i_1_n_0 ;
  wire \o_data[6]_i_2_n_0 ;
  wire \o_data[7]_i_1_n_0 ;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_done_OBUF;
  wire o_done_i_1_n_0;
  wire o_en;
  wire o_en_OBUF;
  wire o_en_i_1_n_0;
  wire o_we;
  wire o_we_OBUF;
  wire o_we_i_1_n_0;
  wire \old_2_bits[0]_i_1_n_0 ;
  wire \old_2_bits[1]_i_1_n_0 ;
  wire \old_2_bits_reg_n_0_[0] ;
  wire \old_2_bits_reg_n_0_[1] ;
  wire [7:3]p_0_in;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire [7:0]words_to_process;
  wire \words_to_process[3]_i_2_n_0 ;
  wire \words_to_process[4]_i_2_n_0 ;
  wire \words_to_process[5]_i_2_n_0 ;
  wire \words_to_process[7]_i_2_n_0 ;
  wire \words_to_process_reg_n_0_[0] ;
  wire \words_to_process_reg_n_0_[1] ;
  wire \words_to_process_reg_n_0_[2] ;
  wire \words_to_process_reg_n_0_[3] ;
  wire \words_to_process_reg_n_0_[4] ;
  wire \words_to_process_reg_n_0_[5] ;
  wire \words_to_process_reg_n_0_[6] ;
  wire \words_to_process_reg_n_0_[7] ;

initial begin
 $sdf_annotate("project_tb_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'hCCCCCCC0CCCCEEEE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(i_start_IBUF),
        .I1(state[1]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\words_to_process_reg_n_0_[6] ),
        .I1(\words_to_process_reg_n_0_[7] ),
        .I2(\words_to_process_reg_n_0_[4] ),
        .I3(\words_to_process_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\words_to_process_reg_n_0_[2] ),
        .I1(\words_to_process_reg_n_0_[3] ),
        .I2(\words_to_process_reg_n_0_[0] ),
        .I3(\words_to_process_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3CC8)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(i_start_IBUF),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \current_address[0]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[0] ),
        .O(current_address));
  LUT3 #(
    .INIT(8'h28)) 
    \current_address[1]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[1] ),
        .I2(\current_address_reg_n_0_[0] ),
        .O(\current_address[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \current_address[2]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[2] ),
        .I2(\current_address_reg_n_0_[1] ),
        .I3(\current_address_reg_n_0_[0] ),
        .O(\current_address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \current_address[3]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[3] ),
        .I2(\current_address_reg_n_0_[2] ),
        .I3(\current_address_reg_n_0_[0] ),
        .I4(\current_address_reg_n_0_[1] ),
        .O(\current_address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \current_address[4]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[4] ),
        .I2(\current_address_reg_n_0_[3] ),
        .I3(\current_address_reg_n_0_[1] ),
        .I4(\current_address_reg_n_0_[0] ),
        .I5(\current_address_reg_n_0_[2] ),
        .O(\current_address[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_address[5]_i_1 
       (.I0(state[1]),
        .I1(p_0_in[5]),
        .O(\current_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \current_address[5]_i_2 
       (.I0(\current_address_reg_n_0_[3] ),
        .I1(\current_address_reg_n_0_[1] ),
        .I2(\current_address_reg_n_0_[0] ),
        .I3(\current_address_reg_n_0_[2] ),
        .I4(\current_address_reg_n_0_[4] ),
        .I5(\current_address_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h28)) 
    \current_address[6]_i_1 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[6] ),
        .I2(\current_address[7]_i_3_n_0 ),
        .O(\current_address[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h97)) 
    \current_address[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\current_address[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \current_address[7]_i_2 
       (.I0(state[1]),
        .I1(\current_address_reg_n_0_[7] ),
        .I2(\current_address_reg_n_0_[6] ),
        .I3(\current_address[7]_i_3_n_0 ),
        .O(\current_address[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \current_address[7]_i_3 
       (.I0(\current_address_reg_n_0_[5] ),
        .I1(\current_address_reg_n_0_[3] ),
        .I2(\current_address_reg_n_0_[1] ),
        .I3(\current_address_reg_n_0_[0] ),
        .I4(\current_address_reg_n_0_[2] ),
        .I5(\current_address_reg_n_0_[4] ),
        .O(\current_address[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(current_address),
        .Q(\current_address_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[1]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[2]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[3]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[4]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[5]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[6]_i_1_n_0 ),
        .Q(\current_address_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\current_address[7]_i_2_n_0 ),
        .Q(\current_address_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h4004044000000000)) 
    \encoded_data[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[2]),
        .I3(i_data_IBUF[0]),
        .I4(i_data_IBUF[1]),
        .I5(state[0]),
        .O(encoded_data[0]));
  LUT5 #(
    .INIT(32'h04400000)) 
    \encoded_data[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[0]),
        .I3(i_data_IBUF[2]),
        .I4(state[0]),
        .O(encoded_data[1]));
  LUT6 #(
    .INIT(64'h4004044000000000)) 
    \encoded_data[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[2]),
        .I3(i_data_IBUF[3]),
        .I4(i_data_IBUF[1]),
        .I5(state[0]),
        .O(encoded_data[2]));
  LUT5 #(
    .INIT(32'h04400000)) 
    \encoded_data[3]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[3]),
        .I3(i_data_IBUF[1]),
        .I4(state[0]),
        .O(encoded_data[3]));
  LUT6 #(
    .INIT(64'h4004044000000000)) 
    \encoded_data[4]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[4]),
        .I3(i_data_IBUF[2]),
        .I4(i_data_IBUF[3]),
        .I5(state[0]),
        .O(encoded_data[4]));
  LUT5 #(
    .INIT(32'h04400000)) 
    \encoded_data[5]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[2]),
        .I3(i_data_IBUF[4]),
        .I4(state[0]),
        .O(encoded_data[5]));
  LUT6 #(
    .INIT(64'h4004044000000000)) 
    \encoded_data[6]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[5]),
        .I3(i_data_IBUF[4]),
        .I4(i_data_IBUF[3]),
        .I5(state[0]),
        .O(encoded_data[6]));
  LUT5 #(
    .INIT(32'h04400000)) 
    \encoded_data[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(i_data_IBUF[3]),
        .I3(i_data_IBUF[5]),
        .I4(state[0]),
        .O(encoded_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[0]),
        .Q(\encoded_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[1]),
        .Q(\encoded_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[2]),
        .Q(\encoded_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[3]),
        .Q(\encoded_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[4]),
        .Q(\encoded_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[5]),
        .Q(\encoded_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[6]),
        .Q(\encoded_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \encoded_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(encoded_data[7]),
        .Q(\encoded_data_reg_n_0_[7] ));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  LUT4 #(
    .INIT(16'h4A8C)) 
    \o_address[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\current_address_reg_n_0_[0] ),
        .O(\o_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE0000000000)) 
    \o_address[10]_i_1 
       (.I0(\current_address_reg_n_0_[6] ),
        .I1(\o_address[10]_i_2_n_0 ),
        .I2(\current_address_reg_n_0_[7] ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\o_address[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \o_address[10]_i_2 
       (.I0(\current_address_reg_n_0_[4] ),
        .I1(\current_address_reg_n_0_[3] ),
        .I2(\current_address_reg_n_0_[0] ),
        .I3(\current_address_reg_n_0_[1] ),
        .I4(\current_address_reg_n_0_[2] ),
        .I5(\current_address_reg_n_0_[5] ),
        .O(\o_address[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h42EE8428)) 
    \o_address[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\current_address_reg_n_0_[0] ),
        .I4(\current_address_reg_n_0_[1] ),
        .O(\o_address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AC6C6EEAC000028)) 
    \o_address[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\current_address_reg_n_0_[0] ),
        .I4(\current_address_reg_n_0_[1] ),
        .I5(\current_address_reg_n_0_[2] ),
        .O(\o_address[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8BCB038088C80)) 
    \o_address[3]_i_1 
       (.I0(\o_address[3]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\current_address_reg_n_0_[3] ),
        .I4(state[0]),
        .I5(p_0_in[3]),
        .O(\o_address[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \o_address[3]_i_2 
       (.I0(\current_address_reg_n_0_[1] ),
        .I1(\current_address_reg_n_0_[0] ),
        .I2(\current_address_reg_n_0_[2] ),
        .O(\o_address[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_address[3]_i_3 
       (.I0(\current_address_reg_n_0_[1] ),
        .I1(\current_address_reg_n_0_[0] ),
        .I2(\current_address_reg_n_0_[2] ),
        .I3(\current_address_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF8C8BCB038088C80)) 
    \o_address[4]_i_1 
       (.I0(\o_address[4]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\current_address_reg_n_0_[4] ),
        .I4(state[0]),
        .I5(p_0_in[4]),
        .O(\o_address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \o_address[4]_i_2 
       (.I0(\current_address_reg_n_0_[0] ),
        .I1(\current_address_reg_n_0_[1] ),
        .I2(\current_address_reg_n_0_[2] ),
        .I3(\current_address_reg_n_0_[3] ),
        .O(\o_address[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \o_address[4]_i_3 
       (.I0(\current_address_reg_n_0_[2] ),
        .I1(\current_address_reg_n_0_[0] ),
        .I2(\current_address_reg_n_0_[1] ),
        .I3(\current_address_reg_n_0_[3] ),
        .I4(\current_address_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF8C8BCB038088C80)) 
    \o_address[5]_i_1 
       (.I0(\o_address[5]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\current_address_reg_n_0_[5] ),
        .I4(state[0]),
        .I5(p_0_in[5]),
        .O(\o_address[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA80057FF)) 
    \o_address[5]_i_2 
       (.I0(\current_address_reg_n_0_[2] ),
        .I1(\current_address_reg_n_0_[1] ),
        .I2(\current_address_reg_n_0_[0] ),
        .I3(\current_address_reg_n_0_[3] ),
        .I4(\current_address_reg_n_0_[4] ),
        .O(\o_address[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h388CF8BCC8B00880)) 
    \o_address[6]_i_1 
       (.I0(\o_address[6]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\current_address[7]_i_3_n_0 ),
        .I5(\current_address_reg_n_0_[6] ),
        .O(\o_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAAAA11155555)) 
    \o_address[6]_i_2 
       (.I0(\current_address_reg_n_0_[4] ),
        .I1(\current_address_reg_n_0_[3] ),
        .I2(\current_address_reg_n_0_[0] ),
        .I3(\current_address_reg_n_0_[1] ),
        .I4(\current_address_reg_n_0_[2] ),
        .I5(\current_address_reg_n_0_[5] ),
        .O(\o_address[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8BCB038088C80)) 
    \o_address[7]_i_1 
       (.I0(\o_address[7]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\current_address_reg_n_0_[7] ),
        .I4(state[0]),
        .I5(p_0_in[7]),
        .O(\o_address[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_address[7]_i_2 
       (.I0(\o_address[10]_i_2_n_0 ),
        .I1(\current_address_reg_n_0_[6] ),
        .O(\o_address[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_address[7]_i_3 
       (.I0(\current_address[7]_i_3_n_0 ),
        .I1(\current_address_reg_n_0_[6] ),
        .I2(\current_address_reg_n_0_[7] ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h6060600600000000)) 
    \o_address[8]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\current_address_reg_n_0_[7] ),
        .I3(\o_address[10]_i_2_n_0 ),
        .I4(\current_address_reg_n_0_[6] ),
        .I5(state[2]),
        .O(\o_address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010000000000)) 
    \o_address[9]_i_1 
       (.I0(\current_address_reg_n_0_[6] ),
        .I1(\o_address[10]_i_2_n_0 ),
        .I2(\current_address_reg_n_0_[7] ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\o_address[9]_i_1_n_0 ));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(o_address_OBUF[10]),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(o_address_OBUF[5]),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(o_address_OBUF[6]),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(o_address_OBUF[7]),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(o_address_OBUF[8]),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(o_address_OBUF[9]),
        .O(o_address[9]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[0]_i_1_n_0 ),
        .Q(o_address_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[10]_i_1_n_0 ),
        .Q(o_address_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[1]_i_1_n_0 ),
        .Q(o_address_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[2]_i_1_n_0 ),
        .Q(o_address_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[3]_i_1_n_0 ),
        .Q(o_address_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[4]_i_1_n_0 ),
        .Q(o_address_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[5]_i_1_n_0 ),
        .Q(o_address_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[6]_i_1_n_0 ),
        .Q(o_address_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[7]_i_1_n_0 ),
        .Q(o_address_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[8]_i_1_n_0 ),
        .Q(o_address_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \o_address_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_address[9]_i_1_n_0 ),
        .Q(o_address_OBUF[9]));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[0]_i_1 
       (.I0(\o_data[0]_i_2_n_0 ),
        .I1(i_data_IBUF[6]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_data[0]_i_2 
       (.I0(i_data_IBUF[4]),
        .I1(i_data_IBUF[5]),
        .O(\o_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[1]_i_1 
       (.I0(i_data_IBUF[6]),
        .I1(i_data_IBUF[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[1] ),
        .I5(state[1]),
        .O(\o_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[2]_i_1 
       (.I0(\o_data[2]_i_2_n_0 ),
        .I1(i_data_IBUF[6]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[2] ),
        .I5(state[1]),
        .O(\o_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_data[2]_i_2 
       (.I0(i_data_IBUF[5]),
        .I1(i_data_IBUF[7]),
        .O(\o_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[3]_i_1 
       (.I0(i_data_IBUF[5]),
        .I1(i_data_IBUF[7]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[3] ),
        .I5(state[1]),
        .O(\o_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[4]_i_1 
       (.I0(\o_data[4]_i_2_n_0 ),
        .I1(i_data_IBUF[7]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[4] ),
        .I5(state[1]),
        .O(\o_data[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_data[4]_i_2 
       (.I0(i_data_IBUF[6]),
        .I1(\old_2_bits_reg_n_0_[0] ),
        .O(\o_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[5]_i_1 
       (.I0(i_data_IBUF[6]),
        .I1(\old_2_bits_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[5] ),
        .I5(state[1]),
        .O(\o_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[6]_i_1 
       (.I0(\o_data[6]_i_2_n_0 ),
        .I1(\old_2_bits_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[6] ),
        .I5(state[1]),
        .O(\o_data[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_data[6]_i_2 
       (.I0(\old_2_bits_reg_n_0_[1] ),
        .I1(i_data_IBUF[7]),
        .O(\o_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000060006000)) 
    \o_data[7]_i_1 
       (.I0(\old_2_bits_reg_n_0_[1] ),
        .I1(i_data_IBUF[7]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\encoded_data_reg_n_0_[7] ),
        .I5(state[1]),
        .O(\o_data[7]_i_1_n_0 ));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[0]_i_1_n_0 ),
        .Q(o_data_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[1]_i_1_n_0 ),
        .Q(o_data_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[2]_i_1_n_0 ),
        .Q(o_data_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[3]_i_1_n_0 ),
        .Q(o_data_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[4]_i_1_n_0 ),
        .Q(o_data_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[5]_i_1_n_0 ),
        .Q(o_data_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[6]_i_1_n_0 ),
        .Q(o_data_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_data_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\o_data[7]_i_1_n_0 ),
        .Q(o_data_OBUF[7]));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  LUT4 #(
    .INIT(16'h1000)) 
    o_done_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(i_start_IBUF),
        .I3(state[2]),
        .O(o_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_done_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(o_done_i_1_n_0),
        .Q(o_done_OBUF));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  LUT4 #(
    .INIT(16'hFFAE)) 
    o_en_i_1
       (.I0(state[0]),
        .I1(i_start_IBUF),
        .I2(state[2]),
        .I3(state[1]),
        .O(o_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_en_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(o_en_i_1_n_0),
        .Q(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  LUT3 #(
    .INIT(8'h28)) 
    o_we_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(o_we_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(o_we_i_1_n_0),
        .Q(o_we_OBUF));
  LUT5 #(
    .INIT(32'hECC02000)) 
    \old_2_bits[0]_i_1 
       (.I0(i_data_IBUF[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\old_2_bits_reg_n_0_[0] ),
        .O(\old_2_bits[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hECC02000)) 
    \old_2_bits[1]_i_1 
       (.I0(i_data_IBUF[1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\old_2_bits_reg_n_0_[1] ),
        .O(\old_2_bits[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \old_2_bits_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\old_2_bits[0]_i_1_n_0 ),
        .Q(\old_2_bits_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \old_2_bits_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\old_2_bits[1]_i_1_n_0 ),
        .Q(\old_2_bits_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'h08A8)) 
    \words_to_process[0]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[0]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[0] ),
        .O(words_to_process[0]));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    \words_to_process[1]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[1]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[1] ),
        .I4(\words_to_process_reg_n_0_[0] ),
        .O(words_to_process[1]));
  LUT6 #(
    .INIT(64'hA808A808A80808A8)) 
    \words_to_process[2]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[2]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[2] ),
        .I4(\words_to_process_reg_n_0_[0] ),
        .I5(\words_to_process_reg_n_0_[1] ),
        .O(words_to_process[2]));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    \words_to_process[3]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[3]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[3] ),
        .I4(\words_to_process[3]_i_2_n_0 ),
        .O(words_to_process[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \words_to_process[3]_i_2 
       (.I0(\words_to_process_reg_n_0_[1] ),
        .I1(\words_to_process_reg_n_0_[0] ),
        .I2(\words_to_process_reg_n_0_[2] ),
        .O(\words_to_process[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    \words_to_process[4]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[4]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[4] ),
        .I4(\words_to_process[4]_i_2_n_0 ),
        .O(words_to_process[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \words_to_process[4]_i_2 
       (.I0(\words_to_process_reg_n_0_[2] ),
        .I1(\words_to_process_reg_n_0_[0] ),
        .I2(\words_to_process_reg_n_0_[1] ),
        .I3(\words_to_process_reg_n_0_[3] ),
        .O(\words_to_process[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    \words_to_process[5]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[5]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[5] ),
        .I4(\words_to_process[5]_i_2_n_0 ),
        .O(words_to_process[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \words_to_process[5]_i_2 
       (.I0(\words_to_process_reg_n_0_[3] ),
        .I1(\words_to_process_reg_n_0_[1] ),
        .I2(\words_to_process_reg_n_0_[0] ),
        .I3(\words_to_process_reg_n_0_[2] ),
        .I4(\words_to_process_reg_n_0_[4] ),
        .O(\words_to_process[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    \words_to_process[6]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[6]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[6] ),
        .I4(\words_to_process[7]_i_2_n_0 ),
        .O(words_to_process[6]));
  LUT6 #(
    .INIT(64'hA808A808A80808A8)) 
    \words_to_process[7]_i_1 
       (.I0(state[1]),
        .I1(i_data_IBUF[7]),
        .I2(state[2]),
        .I3(\words_to_process_reg_n_0_[7] ),
        .I4(\words_to_process[7]_i_2_n_0 ),
        .I5(\words_to_process_reg_n_0_[6] ),
        .O(words_to_process[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \words_to_process[7]_i_2 
       (.I0(\words_to_process_reg_n_0_[4] ),
        .I1(\words_to_process_reg_n_0_[2] ),
        .I2(\words_to_process_reg_n_0_[0] ),
        .I3(\words_to_process_reg_n_0_[1] ),
        .I4(\words_to_process_reg_n_0_[3] ),
        .I5(\words_to_process_reg_n_0_[5] ),
        .O(\words_to_process[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[0]),
        .Q(\words_to_process_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[1]),
        .Q(\words_to_process_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[2]),
        .Q(\words_to_process_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[3]),
        .Q(\words_to_process_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[4]),
        .Q(\words_to_process_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[5]),
        .Q(\words_to_process_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[6]),
        .Q(\words_to_process_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \words_to_process_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(\current_address[7]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(words_to_process[7]),
        .Q(\words_to_process_reg_n_0_[7] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
