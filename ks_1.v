`default_nettype none

module ks_1(
  input wire i_c0,
  input  wire [7:0]i_a,
  input  wire [7:0]i_b,
  output wire [7:0]o_pk_1,
  output wire [7:0]o_gk_1,
  output wire o_c0_1
);

assign o_c0_1 = i_c0;

pg pg_0(i_a[0], i_b[0], o_pk_1[0], o_gk_1[0]);
pg pg_1(i_a[1], i_b[1], o_pk_1[1], o_gk_1[1]);
pg pg_2(i_a[2], i_b[2], o_pk_1[2], o_gk_1[2]);
pg pg_3(i_a[3], i_b[3], o_pk_1[3], o_gk_1[3]);
pg pg_4(i_a[4], i_b[4], o_pk_1[4], o_gk_1[4]);
pg pg_5(i_a[5], i_b[5], o_pk_1[5], o_gk_1[5]);
pg pg_6(i_a[6], i_b[6], o_pk_1[6], o_gk_1[6]);
pg pg_7(i_a[7], i_b[7], o_pk_1[7], o_gk_1[7]);

endmodule
