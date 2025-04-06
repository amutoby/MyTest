`default_nettype none

module ks_7(
  input  wire        i_c0,
  input  wire [7:0] i_pk,
  input  wire [7:0] i_gk,
  output wire [7:0] o_s,
  output wire        o_carry
);

assign o_carry   = i_gk[7];
assign o_s[0]    = i_c0 ^ i_pk[0];
assign o_s[7:1] = i_gk[6:0] ^ i_pk[7:1];

endmodule
