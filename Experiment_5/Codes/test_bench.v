module test_bench;

    localparam N = 4;
    localparam half_clock = 1;
    
    reg [N-1:0] A;
    reg [N-1:0] B;
    reg data_ready;
    reg clk;
    reg reset;
    wire result_ready;
    wire [2*N-1:0] result;

    multiplier #(N) mult (
        .A(A),
        .B(B),
        .data_ready(data_ready),
        .clk(clk),
        .reset(reset),
        .result_ready(result_ready),
        .result(result)
    );

    initial begin
        clk = 0;
        forever #half_clock clk = ~clk;
    end
    
    initial begin
        $monitor("time: %d, A: %d, B: %d, result: %b -(%d), result_ready: %b, state:%b, counter:%d",
         $time, A, B, result, result, result_ready, mult.w_state, mult.cu.counter);
    end

    initial begin
        A <= 3;
        B <= 13;
        data_ready <= 0;
        reset <= 1;

        #(0.3*half_clock) reset <= 0;
        #(1.9*half_clock) reset <= 1;
        
        #(2*half_clock) data_ready <= 1;
    end

    always @(*) begin
        if (result_ready == 1) begin
            #(2*half_clock)
            $display("finished");
            $finish;
        end
    end
    
endmodule