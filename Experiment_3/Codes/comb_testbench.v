module comb_testbench();
	reg [3:0] A;
	reg [3:0] B;
	wire eq, gt, lt;
	
	fourbit_comparator comp (A, B, eq, gt, lt);	
	
	initial begin
		$monitor("A:%b\t, B:%b\t, result: {eq:%b, gt:%b, lt:%b}", A, B, eq, gt, lt);
		
		//inputs
		A <= 4'b0000;
		B <= 4'b0000;
		#5
		A <= 4'b1000;
		B <= 4'b0010;
		#5
		A <= 4'b0100;
		B <= 4'b0101;
		#5
		A <= 4'b0001;
		B <= 4'b0100;
		#5
		A <= 4'b0101;
		B <= 4'b0101;
		
		$finish;
	end

	
endmodule