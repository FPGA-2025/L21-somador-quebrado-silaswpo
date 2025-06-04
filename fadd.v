module fadd (
    input wire a,
    input wire b,
    input wire cin, // colocado ,
    
    output wire s,
    output wire cout
);

wire s1, c1, c2;

hadd u1 (
    .A(a),
    .B(b),
    .S(s1), //colocado . antes do s
    .C(c1)
);

hadd u2 (
    .A(s1), //trocado a por s1
    .B(cin),
    .S(s),
    .C(c2)
);

assign cout = c1 | c2;

endmodule
