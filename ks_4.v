`default_nettype none

module ks_4(
  input  wire        i_c0,
  input  wire [4:0] i_pk,
  input  wire [7:0] i_gk,
  input  wire [7:0] i_p_save,
  output wire        o_c0,
  output wire o_pk,
  output wire [7:0] o_gk,
  output wire [7:0] o_p_save
);

wire [4:0] gkj;
wire pkj;

assign o_c0      = i_c0;
assign o_p_save  = i_p_save[7:0];
assign gkj[0]    = i_c0;
assign gkj[4:1] = i_gk[3:0];
assign pkj       = i_pk[0];
assign o_gk[2:0] = i_gk[2:0];

grey gc_0(gkj[0], i_pk[0], i_gk[3], o_gk[3]);
grey gc_1(gkj[1], i_pk[1], i_gk[4], o_gk[4]);
grey gc_2(gkj[2], i_pk[2], i_gk[5], o_gk[5]);
grey gc_3(gkj[3], i_pk[3], i_gk[6], o_gk[6]);
black bc_0(pkj, gkj[4], i_pk[4], i_gk[7], o_gk[7], o_pk);

endmodule
