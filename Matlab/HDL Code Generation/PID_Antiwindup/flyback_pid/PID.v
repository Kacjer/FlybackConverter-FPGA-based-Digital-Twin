// -------------------------------------------------------------
// 
// File Name: D:\Github\FlybackConverter-FPGA-based-Digital-Twin\HDL Code Generation\PID_Antiwindup\flyback_pid\PID.v
// Created: 2023-07-07 01:27:55
// 
// Generated by MATLAB 9.11 and HDL Coder 3.19
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 8e-08
// Target subsystem base rate: 8e-08
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PID
// Source Path: flyback_pid/PID
// Hierarchy Level: 0
// 
// Simulink model description for flyback_pid:
// 
// Symmetric FIR Filter
// This example shows how to use HDL Coder(TM) to check, generate,
// and verify HDL for a fixed-point symmetric FIR filter. 
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PID
          (clk,
           error,
           kp,
           kp_divisor,
           ki,
           ki_multiplier,
           alpha1_port,
           Tt,
           Tt_divisor,
           saturated_MV,
           p_action,
           i_action,
           unsaturated_MV);


  input   clk;
  input   signed [31:0] error;  // int32
  input   signed [31:0] kp;  // int32
  input   signed [31:0] kp_divisor;  // int32
  input   signed [31:0] ki;  // int32
  input   signed [31:0] ki_multiplier;  // int32
  input   signed [31:0] alpha1_port;  // int32
  input   signed [31:0] Tt;  // int32
  input   signed [31:0] Tt_divisor;  // int32
  output  signed [7:0] saturated_MV;  // int8
  output  signed [31:0] p_action;  // int32
  output  signed [31:0] i_action;  // int32
  output  signed [7:0] unsaturated_MV;  // int8


  wire signed [32:0] kp_dtc;  // sfix33
  reg signed [31:0] Divide_out1;  // int32
  wire signed [63:0] Product_mul_temp;  // sfix64
  wire signed [31:0] Product_out1;  // int32
  wire signed [63:0] Product2_mul_temp;  // sfix64
  wire signed [31:0] Product2_out1;  // int32
  wire signed [32:0] alpha1_port_dtc;  // sfix33
  wire signed [32:0] Tt_dtc;  // sfix33
  wire signed [63:0] Product1_mul_temp;  // sfix64
  wire signed [31:0] Product1_out1;  // int32
  reg signed [31:0] Divide2_out1;  // int32
  reg signed [31:0] Divide1_out1;  // int32
  wire signed [31:0] Saturation_out1;  // int32
  wire signed [31:0] Add1_out1;  // int32
  wire signed [31:0] Add3_out1;  // int32
  wire signed [63:0] Product3_mul_temp;  // sfix64
  wire signed [31:0] Product3_out1;  // int32
  wire signed [31:0] Add2_out1;  // int32
  wire signed [31:0] Discrete_Time_Integrator1_indtc;  // sfix32
  wire signed [63:0] gain_mul_temp;  // sfix64_En54
  wire signed [31:0] Discrete_Time_Integrator1_u_gain;  // sfix32
  wire signed [31:0] Discrete_Time_Integrator1_u_dtc;  // int32
  reg signed [31:0] Discrete_Time_Integrator1_x_reg;  // int32
  wire signed [31:0] Discrete_Time_Integrator1_u_add;  // int32
  wire signed [7:0] Data_Type_Conversion2_out1;  // int8
  wire signed [7:0] Data_Type_Conversion3_out1;  // int8
  reg signed [32:0] Divide_c;  // sfix33
  reg signed [33:0] Divide_div_temp;  // sfix34
  reg signed [33:0] Divide_t_0_0;  // sfix34
  reg signed [32:0] Divide2_c;  // sfix33
  reg signed [33:0] Divide2_div_temp;  // sfix34
  reg signed [33:0] Divide2_t_0_0;  // sfix34
  reg signed [32:0] Divide1_c;  // sfix33
  reg signed [33:0] Divide1_div_temp;  // sfix34
  reg signed [33:0] Divide1_t_0_0;  // sfix34

  initial begin
    Discrete_Time_Integrator1_x_reg = 32'sb00000000000000000000000000000000;
  end

  assign kp_dtc = {kp[31], kp};



  always @(kp_divisor, kp_dtc) begin
    Divide_div_temp = 34'sh000000000;
    Divide_t_0_0 = 34'sh000000000;
    if (kp_divisor == 32'sb00000000000000000000000000000000) begin
      if (kp_dtc < 33'sh000000000) begin
        Divide_c = 33'sh100000000;
      end
      else begin
        Divide_c = 33'sh0FFFFFFFF;
      end
    end
    else begin
      Divide_t_0_0 = {kp_dtc[32], kp_dtc};
      Divide_div_temp = Divide_t_0_0 / kp_divisor;
      if ((Divide_div_temp[33] == 1'b0) && (Divide_div_temp[32] != 1'b0)) begin
        Divide_c = 33'sh0FFFFFFFF;
      end
      else if ((Divide_div_temp[33] == 1'b1) && (Divide_div_temp[32] != 1'b1)) begin
        Divide_c = 33'sh100000000;
      end
      else begin
        Divide_c = Divide_div_temp[32:0];
      end
    end
    if ((Divide_c[32] == 1'b0) && (Divide_c[31] != 1'b0)) begin
      Divide_out1 = 32'sb01111111111111111111111111111111;
    end
    else if ((Divide_c[32] == 1'b1) && (Divide_c[31] != 1'b1)) begin
      Divide_out1 = 32'sb10000000000000000000000000000000;
    end
    else begin
      Divide_out1 = Divide_c[31:0];
    end
  end


  assign Product_mul_temp = error * Divide_out1;
  assign Product_out1 = Product_mul_temp[31:0];


  assign Product2_mul_temp = ki * ki_multiplier;
  assign Product2_out1 = Product2_mul_temp[31:0];


  assign alpha1_port_dtc = {alpha1_port[31], alpha1_port};



  assign Tt_dtc = {Tt[31], Tt};



  assign Product1_mul_temp = error * Product2_out1;
  assign Product1_out1 = Product1_mul_temp[31:0];


  always @(Tt_divisor, Tt_dtc) begin
    Divide2_div_temp = 34'sh000000000;
    Divide2_t_0_0 = 34'sh000000000;
    if (Tt_divisor == 32'sb00000000000000000000000000000000) begin
      if (Tt_dtc < 33'sh000000000) begin
        Divide2_c = 33'sh100000000;
      end
      else begin
        Divide2_c = 33'sh0FFFFFFFF;
      end
    end
    else begin
      Divide2_t_0_0 = {Tt_dtc[32], Tt_dtc};
      Divide2_div_temp = Divide2_t_0_0 / Tt_divisor;
      if ((Divide2_div_temp[33] == 1'b0) && (Divide2_div_temp[32] != 1'b0)) begin
        Divide2_c = 33'sh0FFFFFFFF;
      end
      else if ((Divide2_div_temp[33] == 1'b1) && (Divide2_div_temp[32] != 1'b1)) begin
        Divide2_c = 33'sh100000000;
      end
      else begin
        Divide2_c = Divide2_div_temp[32:0];
      end
    end
    if ((Divide2_c[32] == 1'b0) && (Divide2_c[31] != 1'b0)) begin
      Divide2_out1 = 32'sb01111111111111111111111111111111;
    end
    else if ((Divide2_c[32] == 1'b1) && (Divide2_c[31] != 1'b1)) begin
      Divide2_out1 = 32'sb10000000000000000000000000000000;
    end
    else begin
      Divide2_out1 = Divide2_c[31:0];
    end
  end


  always @(Divide2_out1, alpha1_port_dtc) begin
    Divide1_div_temp = 34'sh000000000;
    Divide1_t_0_0 = 34'sh000000000;
    if (Divide2_out1 == 32'sb00000000000000000000000000000000) begin
      if (alpha1_port_dtc < 33'sh000000000) begin
        Divide1_c = 33'sh100000000;
      end
      else begin
        Divide1_c = 33'sh0FFFFFFFF;
      end
    end
    else begin
      Divide1_t_0_0 = {alpha1_port_dtc[32], alpha1_port_dtc};
      Divide1_div_temp = Divide1_t_0_0 / Divide2_out1;
      if ((Divide1_div_temp[33] == 1'b0) && (Divide1_div_temp[32] != 1'b0)) begin
        Divide1_c = 33'sh0FFFFFFFF;
      end
      else if ((Divide1_div_temp[33] == 1'b1) && (Divide1_div_temp[32] != 1'b1)) begin
        Divide1_c = 33'sh100000000;
      end
      else begin
        Divide1_c = Divide1_div_temp[32:0];
      end
    end
    if ((Divide1_c[32] == 1'b0) && (Divide1_c[31] != 1'b0)) begin
      Divide1_out1 = 32'sb01111111111111111111111111111111;
    end
    else if ((Divide1_c[32] == 1'b1) && (Divide1_c[31] != 1'b1)) begin
      Divide1_out1 = 32'sb10000000000000000000000000000000;
    end
    else begin
      Divide1_out1 = Divide1_c[31:0];
    end
  end


  assign Add3_out1 = Saturation_out1 - Add1_out1;


  assign Product3_mul_temp = Add3_out1 * Divide1_out1;
  assign Product3_out1 = Product3_mul_temp[31:0];


  assign Add2_out1 = Product1_out1 + Product3_out1;


  assign Discrete_Time_Integrator1_indtc = Add2_out1;



  assign gain_mul_temp = 32'sb01010101111001100011101110001001 * Discrete_Time_Integrator1_indtc;
  assign Discrete_Time_Integrator1_u_gain = {{22{gain_mul_temp[63]}}, gain_mul_temp[63:54]};



  assign Discrete_Time_Integrator1_u_dtc = Discrete_Time_Integrator1_u_gain;



  assign Discrete_Time_Integrator1_u_add = Discrete_Time_Integrator1_x_reg + Discrete_Time_Integrator1_u_dtc;



  always @(posedge clk)
    begin : Discrete_Time_Integrator1_reg_process
      Discrete_Time_Integrator1_x_reg <= Discrete_Time_Integrator1_u_add;
    end


  assign Add1_out1 = Product_out1 + Discrete_Time_Integrator1_x_reg;


  assign Saturation_out1 = (Add1_out1 > 32'sb00000000000000000000000011111111 ? 32'sb00000000000000000000000011111111 :
              (Add1_out1 < 32'sb00000000000000000000000000000000 ? 32'sb00000000000000000000000000000000 :
              Add1_out1));


  assign Data_Type_Conversion2_out1 = Saturation_out1[7:0];


  assign saturated_MV = Data_Type_Conversion2_out1;

  assign p_action = Product_out1;

  assign i_action = Discrete_Time_Integrator1_x_reg;

  assign Data_Type_Conversion3_out1 = Add1_out1[7:0];


  assign unsaturated_MV = Data_Type_Conversion3_out1;

endmodule  // PID

