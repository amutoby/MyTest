`default_nettype none

module ks_3(
  input  wire        i_c0,
  input  wire [6:0] i_pk,
  input  wire [7:0] i_gk,
  input  wire [7:0] i_p_save,
  output wire        o_c0,
  output wire [4:0] o_pk,
  output wire [7:0] o_gk,
  output wire [7:0] o_p_save
);

wire [6:0] gkj;
wire [4:0] pkj;

assign o_c0      = i_c0;
assign o_p_save  = i_p_save[7:0];
assign gkj[0]    = i_c0;
assign gkj[6:1]  = i_gk[5:0];
assign pkj       = i_pk[4:0];
assign o_gk[0]   = i_gk[0];

grey gc_0(gkj[0], i_pk[0], i_gk[1], o_gk[1]);
grey gc_1(gkj[1], i_pk[1], i_gk[2], o_gk[2]);
black bc_0(pkj[0], gkj[2], i_pk[2], i_gk[3], o_gk[3], o_pk[0]);
black bc_1(pkj[1], gkj[3], i_pk[3], i_gk[4], o_gk[4], o_pk[1]);
black bc_2(pkj[2], gkj[4], i_pk[4], i_gk[5], o_gk[5], o_pk[2]);
black bc_3(pkj[3], gkj[5], i_pk[5], i_gk[6], o_gk[6], o_pk[3]);
black bc_4(pkj[4], gkj[6], i_pk[6], i_gk[7], o_gk[7], o_pk[4]);

endmodule
