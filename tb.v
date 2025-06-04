`timescale 1ns/1ps

module tb();

reg [3:0] num1;
reg [3:0] num2;
wire [3:0] out;
wire cout;

add u0 (
    .num1(num1),
    .num2(num2),
    .out(out),
    .cout(cout)
);

initial begin
    $display("Iniciando testes ADD/FADD/HADD...");

    // Soma básica 
    num1 = 4'd1; num2 = 4'd2; #1;
    if ({cout, out} == 5'd3) $display("OK"); else $display("ERRO");

    // Soma 
    num1 = 4'd5; num2 = 4'd9; #1;
    if ({cout, out} == 5'd14) $display("OK"); else $display("ERRO");

    // Soma 
    num1 = 4'd15; num2 = 4'd1; #1;
    if ({cout, out} == 5'd16) $display("OK"); else $display("ERRO");

    // Soma zeros
    num1 = 4'd0; num2 = 4'd0; #1;
    if ({cout, out} == 5'd0) $display("OK"); else $display("ERRO");

    // Soma 
    num1 = 4'd15; num2 = 4'd15; #1;
    if ({cout, out} == 5'd30) $display("OK"); else $display("ERRO");

    // Casos com bits alternados
    num1 = 4'b0101; num2 = 4'b1010; #1;
    if ({cout, out} == 5'd15) $display("OK"); else $display("ERRO");

    // Validar add
    num1 = 4'b0000; num2 = 4'b0000; #1; // 0 + 0 = 0
    if ({cout, out} == 5'd0) $display("OK"); else $display("ERRO");

    num1 = 4'b0001; num2 = 4'b0001; #1; // 1 + 1 = 2
    if ({cout, out} == 5'd2) $display("OK"); else $display("ERRO");

    num1 = 4'b0001; num2 = 4'b0000; #1; // 1 + 0 = 1
    if ({cout, out} == 5'd1) $display("OK"); else $display("ERRO");

    num1 = 4'b0010; num2 = 4'b0010; #1; // 2 + 2 = 4
    if ({cout, out} == 5'd4) $display("OK"); else $display("ERRO");

    num1 = 4'd8; num2 = 4'd8; #1; // 8 + 8 = 16
    if ({cout, out} == 5'd16) $display("OK"); else $display("ERRO");

    $display("Testes concluídos.");
    $finish;
end

endmodule
