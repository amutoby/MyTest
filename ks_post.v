`default_nettype none

module ks_post(
  input  wire  i_c0,
  input  wire  i_pk,
  input  wire [7:0] i_gk,
  input  wire [7:0] i_p_save,
  output wire [7:0] o_s,
  output wire       o_carry
);


assign o_s[0]    = i_c0 ^ i_p_save[0];
assign o_s[7:1] = i_gk[6:0] ^ i_p_save[7:1];

grey gc_1(i_c0, i_pk, i_gk[7], o_carry);


endmodule
