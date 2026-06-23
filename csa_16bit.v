module csa_16bit(
    input  [15:0] A,
    input  [15:0] B,
    input  [15:0] C,
    output [15:0] Sum,
    output [15:0] Carry
);

    full_adder fa0(
    .a(A[0]),
    .b(B[0]),
    .cin(C[0]),
    .sum(Sum[0]),
    .cout(Carry[0])
);

    full_adder fa1(
    .a(A[1]),
    .b(B[1]),
    .cin(C[1]),
    .sum(Sum[1]),
    .cout(Carry[1])
);

    full_adder fa2(
    .a(A[2]),
    .b(B[2]),
    .cin(C[2]),
    .sum(Sum[2]),
    .cout(Carry[2])
);

    full_adder fa3(
    .a(A[3]),
    .b(B[3]),
    .cin(C[3]),
    .sum(Sum[3]),
    .cout(Carry[3])
);

full_adder fa4(
    .a(A[4]),
    .b(B[4]),
    .cin(C[4]),
    .sum(Sum[4]),
    .cout(Carry[4])
);

    full_adder fa5(
    .a(A[5]),
    .b(B[5]),
    .cin(C[5]),
    .sum(Sum[5]),
    .cout(Carry[5])
);

    full_adder fa6(
    .a(A[6]),
    .b(B[6]),
    .cin(C[6]),
    .sum(Sum[6]),
    .cout(Carry[6])
);

    full_adder fa7(
    .a(A[7]),
    .b(B[7]),
    .cin(C[7]),
    .sum(Sum[7]),
    .cout(Carry[7])
);

full_adder fa8(
    .a(A[8]),
    .b(B[8]),
    .cin(C[8]),
    .sum(Sum[8]),
    .cout(Carry[8])
);

    full_adder fa9(
    .a(A[9]),
    .b(B[9]),
    .cin(C[9]),
    .sum(Sum[9]),
    .cout(Carry[9])
);

    full_adder fa10(
    .a(A[10]),
    .b(B[10]),
    .cin(C[10]),
    .sum(Sum[10]),
    .cout(Carry[10])
);

    full_adder fa11(
    .a(A[11]),
    .b(B[11]),
    .cin(C[11]),
    .sum(Sum[11]),
    .cout(Carry[11])
);

full_adder fa12(
    .a(A[12]),
    .b(B[12]),
    .cin(C[12]),
    .sum(Sum[12]),
    .cout(Carry[12])
);

    full_adder fa13(
    .a(A[13]),
    .b(B[13]),
    .cin(C[13]),
    .sum(Sum[13]),
    .cout(Carry[13])
);

    full_adder fa14(
    .a(A[14]),
    .b(B[14]),
    .cin(C[14]),
    .sum(Sum[14]),
    .cout(Carry[14])
);

    full_adder fa15(
    .a(A[15]),
    .b(B[15]),
    .cin(C[15]),
    .sum(Sum[15]),
    .cout(Carry[15])
);
endmodule

