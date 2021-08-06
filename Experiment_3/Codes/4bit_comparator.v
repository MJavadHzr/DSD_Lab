module FourBit_Comparator (
	input [3:0] A,
	input [3:0] B,
	output eq,
	output gt,
	output lt
);

	wire eq_init = 1'b1, qt_init = 1'b0, lt_init = 1'b0;
	wire eq_32, gt_32, lt_32;
	wire eq_21, gt_21, lt_21;
	wire eq_10, gt_10, lt_10;
	
	OneBit_Comparator comp_3 (A[3], B[3], eq_init, gt_init, lt_init, eq_32, gt_32, lt_32);
	OneBit_Comparator comp_2 (A[2], B[2], eq_32, gt_32, lt_32, eq_21, gt_21, lt_21);
	OneBit_Comparator comp_1 (A[1], B[1], eq_21, gt_21, lt_21, eq_10, gt_10, lt_10);
	OneBit_Comparator comp_0 (A[0], B[0], eq_10, gt_10, lt_10, eq, gt, lt);

endmodule