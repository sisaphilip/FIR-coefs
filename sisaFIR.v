module sisaFIR(
  input         clock,
  input         reset,
  input  [63:0] io_in,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] z1; // @[logic.scala 15:19]
  reg [63:0] z2; // @[logic.scala 16:19]
  reg [63:0] z3; // @[logic.scala 17:19]
  reg [63:0] z4; // @[logic.scala 18:19]
  reg [63:0] z5; // @[logic.scala 19:19]
  reg [63:0] z6; // @[logic.scala 20:19]
  reg [63:0] z7; // @[logic.scala 21:19]
  reg [63:0] z8; // @[logic.scala 22:19]
  reg [63:0] z9; // @[logic.scala 23:19]
  wire [66:0] _T = io_in * 64'h5; // @[logic.scala 27:19]
  wire [67:0] _T_1 = z1 * 64'hc; // @[logic.scala 27:28]
  wire [67:0] _GEN_0 = {{1'd0}, _T}; // @[logic.scala 27:24]
  wire [67:0] _T_3 = _GEN_0 + _T_1; // @[logic.scala 27:24]
  wire [68:0] _T_4 = z2 * 64'h1e; // @[logic.scala 27:38]
  wire [68:0] _GEN_1 = {{1'd0}, _T_3}; // @[logic.scala 27:34]
  wire [68:0] _T_6 = _GEN_1 + _T_4; // @[logic.scala 27:34]
  wire [69:0] _T_7 = z3 * 64'h32; // @[logic.scala 27:48]
  wire [69:0] _GEN_2 = {{1'd0}, _T_6}; // @[logic.scala 27:44]
  wire [69:0] _T_9 = _GEN_2 + _T_7; // @[logic.scala 27:44]
  wire [69:0] _T_10 = z4 * 64'h3f; // @[logic.scala 27:58]
  wire [69:0] _T_12 = _T_9 + _T_10; // @[logic.scala 27:54]
  wire [69:0] _T_13 = z5 * 64'h3f; // @[logic.scala 27:68]
  wire [69:0] _T_15 = _T_12 + _T_13; // @[logic.scala 27:64]
  wire [69:0] _T_16 = z6 * 64'h32; // @[logic.scala 27:78]
  wire [69:0] _T_18 = _T_15 + _T_16; // @[logic.scala 27:74]
  wire [68:0] _T_19 = z7 * 64'h1e; // @[logic.scala 27:88]
  wire [69:0] _GEN_3 = {{1'd0}, _T_19}; // @[logic.scala 27:84]
  wire [69:0] _T_21 = _T_18 + _GEN_3; // @[logic.scala 27:84]
  wire [67:0] _T_22 = z8 * 64'hc; // @[logic.scala 27:98]
  wire [69:0] _GEN_4 = {{2'd0}, _T_22}; // @[logic.scala 27:94]
  wire [69:0] _T_24 = _T_21 + _GEN_4; // @[logic.scala 27:94]
  wire [66:0] _T_25 = z9 * 64'h5; // @[logic.scala 27:108]
  wire [69:0] _GEN_5 = {{3'd0}, _T_25}; // @[logic.scala 27:104]
  wire [69:0] _T_27 = _T_24 + _GEN_5; // @[logic.scala 27:104]
  assign io_out = _T_27[63:0]; // @[logic.scala 27:10]
  always @(posedge clock) begin
    z1 <= io_in; // @[logic.scala 15:19]
    z2 <= z1; // @[logic.scala 16:19]
    z3 <= z2; // @[logic.scala 17:19]
    z4 <= z3; // @[logic.scala 18:19]
    z5 <= z4; // @[logic.scala 19:19]
    z6 <= z5; // @[logic.scala 20:19]
    z7 <= z6; // @[logic.scala 21:19]
    z8 <= z7; // @[logic.scala 22:19]
    z9 <= z8; // @[logic.scala 23:19]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  z1 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  z2 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  z3 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  z4 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  z5 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  z6 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  z7 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  z8 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  z9 = _RAND_8[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
