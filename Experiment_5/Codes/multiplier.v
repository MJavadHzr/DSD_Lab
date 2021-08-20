module multiplier #(parameter N = 4) (
    input [N-1:0] A,
    input [N-1:0] B,
    input data_ready,
    input clk,
    input reset,
    output result_ready,
    output [2*N-1:0] result
);

    wire [2:0] w_state;
    wire w_subtract;
    wire w_b0;

    data_path #(N) dp (
        .A(A),
        .B(B),
        .state(w_state),
        .subtract(w_subtract),
        .clk(clk),
        .reset(reset),
        .b0(w_b0),
        .result(result)
    );

    control_unit #(N) cu (
        .data_ready(data_ready),
        .b0(w_b0),
        .clk(clk),
        .reset(reset),
        .o_subtract(w_subtract),
        .o_result_ready(result_ready),
        .o_state(w_state)
    );
    
endmodule