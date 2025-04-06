`default_nettype none

module ks_6(
  input  wire        i_c0,
  input  wire  i_pk,
  input  wire [7:0] i_gk,
  input  wire [7:0] i_p_save,
  output wire        o_c0,
  output wire [7:0] o_pk,
  output wire [7:0] o_gk
);

wire gkj;

assign o_c0       = i_c0;
assign o_pk       = i_p_save[7:0];

assign gkj  = i_gk[0];
assign o_gk[6:0] = i_gk[6:0];

grey gc_1(gkj, i_pk, i_gk[7], o_gk[7]);

endmodule
