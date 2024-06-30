module lab4_g29_p1_neg_edge (
    input logic D,     // Veri girişi
    input logic clk,   // Saat sinyali
    output logic Q     // Çıkış
);
    always @(negedge clk) begin
        Q <= D;        // Saat sinyalinin negatif kenarında D'yi Q'ya ata
    end
endmodule











