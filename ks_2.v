`default_nettype none

module ks_2(
  input  wire        i_c0,
  input  wire [7:0] i_pk,
  input  wire [7:0] i_gk,
  output wire       o_c0,
  output wire [6:0] o_pk,
  output wire [7:0] o_gk,
  output wire [7:0] o_p_save
);


assign o_c0      = i_c0;
assign o_p_save  = i_pk[7:0];

grey gc_0(i_c0, i_pk[0], i_gk[0], o_gk[0]);
black bc_0(i_pk[0], i_gk[0], i_pk[1], i_gk[1], o_gk[1], o_pk[0]);
black bc_1(i_pk[1], i_gk[1], i_pk[2], i_gk[2], o_gk[2], o_pk[1]);
black bc_2(i_pk[2], i_gk[2], i_pk[3], i_gk[3], o_gk[3], o_pk[2]);
black bc_3(i_pk[3], i_gk[3], i_pk[4], i_gk[4], o_gk[4], o_pk[3]);
black bc_4(i_pk[4], i_gk[4], i_pk[5], i_gk[5], o_gk[5], o_pk[4]);
black bc_5(i_pk[5], i_gk[5], i_pk[6], i_gk[6], o_gk[6], o_pk[5]);
black bc_6(i_pk[6], i_gk[6], i_pk[7], i_gk[7], o_gk[7], o_pk[6]);

endmodule
