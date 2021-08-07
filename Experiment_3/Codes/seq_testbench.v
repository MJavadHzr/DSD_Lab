module seq_testbench();
	reg a, b;
	reg reset, clk;
	wire eq, gt, lt;
	
	comparator_seq comp (a, b, reset, clk, eq, gt, lt);
	
	//generate clock
	initial begin
		clk = 1'b0;
	   forever #1 clk = ~clk;
	end
	
	//monitor
	initial $monitor("a:%b\t,b:%b,\t result: {eq:%b, gt:%b, lt:%b}", a, b, eq, gt, lt);
	
	//generate inputs
	initial begin
		reset <= 0;
		#2
		reset <= 1;
		
		//a = {0110}, b = {1100}
		a <= 0;
		b <= 0;
		#2
		a <= 1;
		b <= 0;
		#2
		a <= 1;
		b <= 1;
		#2
		a <= 0;
		b <= 1;
		#2
		$finish;
	end
	
endmodule