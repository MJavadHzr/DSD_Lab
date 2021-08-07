module onebit_comparator (
	input a,
	input b,
	input eq_prev,
	input gt_prev,
	input lt_prev,
	output eq,
	output gt,
	output lt
);

	assign eq = (eq_prev == 1) ? ((a == b) ? 1 : 0) : 0;
	assign gt = (eq_prev == 1) ? ((a > b) ? 1 : 0) : gt_prev;
	assign lt = (eq_prev == 1) ? ((a < b) ? 1 : 0) : lt_prev;

endmodule