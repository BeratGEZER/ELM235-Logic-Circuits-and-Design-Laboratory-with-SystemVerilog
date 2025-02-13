module lab5_g30_p3 (
    input logic clk,
    input logic reset,
    input logic A,
    output logic Y
);

    typedef enum logic [3:0] {
        s0, s1, s2, s3, s4, s5, s6, s7, s8
    } statetype;

    statetype state, nextstate;

    always_ff @(posedge clk or negedge reset) begin
        if (!reset)
            state <= s0;
        else
            state <= nextstate;
    end

    always_comb begin
        nextstate = state;
        case (state)
            s0: nextstate = (A) ? s5 : s1;
            s1: nextstate = (A) ? s5 : s2;
            s2: nextstate = (A) ? s5 : s3;
            s3: nextstate = (A) ? s5 : s4;
            s4: nextstate = (A) ? s5 : s4;
            s5: nextstate = (A) ? s6 : s0;
            s6: nextstate = (A) ? s7 : s0;
            s7: nextstate = (A) ? s8 : s0;
            s8: nextstate = (A) ? s8 : s0;
            default: nextstate = s0;
        endcase
    end

    assign Y = (state == s4 || state == s8);

endmodule
