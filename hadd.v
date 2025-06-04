module hadd (
    input wire A,
    input wire B,
    
    output wire S,
    output wire C
);

assign S = A ^ B;
assign C = A & B;

endmodule
