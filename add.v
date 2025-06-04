module add (
    input  wire [3:0] num1,
    input  wire [3:0] num2,
    
    output wire [3:0] out,
    output wire       cout //retirado ,
);

wire c1, c2, c3;

fadd f0 (
    .a(num1[0]),
    .b(num2[0]),
    .cin(1'b0), // alterado 1'b1
    .s(out[0]),
    .cout(c1)
);

fadd f1 (
    .a(num1[1]),
    .b(num2[1]),
    .cin(c1),
    .s(out[1]),
    .cout(c2)
);

fadd f2 (
    .a(num1[2]),
    .b(num2[2]),
    .cin(c2),
    .s(out[2]),
    .cout(c3)
);

fadd f3 (
    .a(num1[3]),
    .b(num2[3]),
    .cin(c3),
    .s(out[3]),
    .cout(cout)
);

endmodule
