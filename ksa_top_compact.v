`default_nettype none

module ksa_top_compact(
  input  wire        c0,
  input  wire [7:0] i_a,
  input  wire [7:0] i_b,
  output wire [7:0] o_s,
  output wire        o_carry
);

wire [7:0] p1;
wire [7:0] g1;
wire        c1;

wire [6:0] p2;
wire [7:0] g2;
wire        c2;
wire [7:0] ps1;

wire [4:0] p3;
wire [7:0] g3;
wire        c3;
wire [7:0] ps2;

wire p4;
wire [7:0] g4;
wire        c4;
wire [7:0] ps3;

ks_1 s1(c0, i_a, i_b, p1, g1, c1);

ks_2 s2(c1, p1, g1, c2, p2, g2, ps1);
ks_3 s3(c2, p2, g2, ps1, c3, p3, g3, ps2);
ks_4 s4(c3, p3, g3, ps2, c4, p4, g4, ps3);

ks_post post(c4, p4, g4, ps3, o_s, o_carry);


endmodule
