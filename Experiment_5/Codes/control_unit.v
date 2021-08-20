module control_unit #(parameter N = 4) (
    input data_ready,
    input b0,
    input clk,
    input reset,
    output o_subtract,
    output o_result_ready,
    output [2:0] o_state
);

    localparam IDLE = 3'b000;
    localparam SUB_SUM = 3'b001;
    localparam SHIFT = 3'b010;
    localparam CHECK_Z = 3'b011;
    localparam FINAL_SUM = 3'b100;

    reg [2:0] state;
    reg subtract;
    reg done;
    reg [$clog2(N):0] counter;

    assign o_state = state;
    assign o_subtract = subtract;
    assign o_result_ready = done;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            state <= IDLE;
            subtract <= 0;
            done <= 0;
            counter <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (data_ready) begin
                        state <= (b0 == 1) ? SUB_SUM : SHIFT;
                        subtract <= (b0 == 1) ? 1 : 0;
                    end else begin
                        state <= state;
                    end
                end
                
                SUB_SUM: begin
                    state <= SHIFT;
                end
                
                SHIFT: begin
                    state <= CHECK_Z;
                    counter <= counter + 1;
                end
                
                CHECK_Z: begin
                    if (counter == N) begin
                        state <= (subtract == 0) ? IDLE : FINAL_SUM;
                        done <= (subtract == 0) ? 1 : 0;
                        counter <= (subtract == 0) ? 0 : counter;
                    end else begin
                        state <= (subtract == b0) ? SHIFT : SUB_SUM;
                        subtract <= (subtract == b0) ? subtract : ~subtract;
                    end
                end
                
                FINAL_SUM: begin
                    done <= 1;
                    state <= IDLE;
                    counter <= 0;
                end

                default: state <= state;
            endcase
        end
    end

endmodule