module data_path #(parameter N = 4) (
    input [N-1:0] A,
    input [N-1:0] B,
    input [2:0] state,
    input subtract,
    input clk,
    input reset,
    output b0,
    output [2*N-1:0] result
);

    localparam IDLE = 3'b000;
    localparam SUB_SUM = 3'b001;
    localparam SHIFT = 3'b010;
    localparam CHECK_Z = 3'b011;
    localparam FINAL_SUM = 3'b100;

    reg [N-1:0] r_X;
    reg [N-1:0] r_A;
    reg [N-1:0] r_B;

    assign result = {r_X, r_B};
    assign b0 = r_B[0];
    
    always @(A or B) begin
        r_A <= A;
        r_B <= B;
    end

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            r_X <= 0;
        end else begin
            case (state)
                SUB_SUM: begin
                    r_X <= (subtract == 1) ? (r_X - r_A) : (r_X + r_A);
                end

                SHIFT: begin
                    {r_X, r_B} <= {r_X[N-1], r_X, r_B[N-1:1]};
                end

                FINAL_SUM: begin
                    r_X <= r_X + r_A;
                end

                default: r_X <= r_X; 
            endcase
        end
    end
    
endmodule