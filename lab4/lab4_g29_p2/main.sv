`timescale 1ns/1ps

module main (
    input logic ha_A_tb,
    input logic ha_B_tb,
    output logic ha_Sum_tb,
    output logic ha_Carry_tb,

    input logic fa_A_tb,
    input logic fa_B_tb,
    input logic fa_Cin_tb,
    output logic fa_Sum_tb,
    output logic fa_Cout_tb,

    input logic [4:0] rca_A_tb,
    input logic [4:0] rca_B_tb,
    input logic rca_Cin_tb,
    output logic [4:0] rca_Sum_tb,
    output logic rca_Cout_tb
);

    // Half-Adder Örneği
    half_adder ha (
        .A(ha_A_tb),
        .B(ha_B_tb),
        .Sum(ha_Sum_tb),
        .Carry(ha_Carry_tb)
    );

    // Full-Adder Örneği
    full_adder fa (
        .A(fa_A_tb),
        .B(fa_B_tb),
        .Cin(fa_Cin_tb),
        .Sum(fa_Sum_tb),
        .Cout(fa_Cout_tb)
    );

    // 5-bit Ripple-Carry Adder Örneği
    ripple_carry_adder_5bit rca (
        .A(rca_A_tb),
        .B(rca_B_tb),
        .Cin(rca_Cin_tb),
        .Sum(rca_Sum_tb),
        .Cout(rca_Cout_tb)
    );
endmodule


















