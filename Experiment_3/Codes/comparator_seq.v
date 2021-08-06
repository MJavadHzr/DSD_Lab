module Comparator_Seq (
	input a,
	input b,
	input reset,
	input clk,
	output eq,
	output gt,
	output lt
);
	
	reg r_eq, r_gt, r_lt;
	
	always @ (posedge clk or negedge reset) begin
		if (!reset) begin
			r_eq <= 1;
			r_gt <= 0;
			r_lt <= 0;
		end else begin
			r_eq <= eq;
			r_gt <= gt;
			r_lt <= lt;
		end
	end
	
	assign eq = (a == b) ? r_eq : 0;
	assign gt = (a > b) ? 1 : ((a == b) ? r_gt : 0);
	assign lt = (a < b) ? 1 : ((a == b) ? r_lt : 0);


endmodule