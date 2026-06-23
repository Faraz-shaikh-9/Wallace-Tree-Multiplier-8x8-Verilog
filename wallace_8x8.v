module wallace_8x8(
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] Product
);
    wire [7:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7;

    wire [15:0] pp0_ext;
    wire [15:0] pp1_shift;
    wire [15:0] pp2_shift;
    wire [15:0] pp3_shift;
    wire [15:0] pp4_shift;
    wire [15:0] pp5_shift;
    wire [15:0] pp6_shift;
    wire [15:0] pp7_shift;

    assign pp0 = A & {8{B[0]}};
    assign pp1 = A & {8{B[1]}};
    assign pp2 = A & {8{B[2]}};
    assign pp3 = A & {8{B[3]}};
    assign pp4 = A & {8{B[4]}};
    assign pp5 = A & {8{B[5]}};
    assign pp6 = A & {8{B[6]}};
    assign pp7 = A & {8{B[7]}};

    assign pp0_ext   = {8'b00000000, pp0};

    assign pp1_shift = ({8'b00000000, pp1} << 1);

    assign pp2_shift = ({8'b00000000, pp2} << 2);

    assign pp3_shift = ({8'b00000000, pp3} << 3);

    assign pp4_shift = ({8'b00000000, pp4} << 4);

    assign pp5_shift = ({8'b00000000, pp5} << 5);

    assign pp6_shift = ({8'b00000000, pp6} << 6);

    assign pp7_shift = ({8'b00000000, pp7} << 7);

    wire [15:0] sum1;
    wire [15:0] carry1;
    wire [15:0] sum2;
    wire [15:0] carry2;
    wire [15:0] carry1_shift;
    wire [15:0] carry2_shift;

    wire [15:0] sum3;
    wire [15:0] carry3;

    wire [15:0] sum4;
    wire [15:0] carry4;

    assign carry1_shift = carry1 << 1;
    assign carry2_shift = carry2 << 1;

    wire [15:0] carry3_shift;

    wire [15:0] sum5;
    wire [15:0] carry5;

    assign carry3_shift = carry3 << 1;

    wire [15:0] carry4_shift;
    wire [15:0] carry5_shift;

    assign carry4_shift = carry4 << 1;
    assign carry5_shift = carry5 << 1;

    wire [15:0] sum6;
    wire [15:0] carry6;

    csa_16bit csa1(
    .A(pp0_ext),
    .B(pp1_shift),
    .C(pp2_shift),
    .Sum(sum1),
    .Carry(carry1)
);
    csa_16bit csa2(
    .A(pp3_shift),
    .B(pp4_shift),
    .C(pp5_shift),
    .Sum(sum2),
    .Carry(carry2)
);
    csa_16bit csa3(
    .A(sum1),
    .B(carry1_shift),
    .C(sum2),
    .Sum(sum3),
    .Carry(carry3)
);
    csa_16bit csa4(
    .A(carry2_shift),
    .B(pp6_shift),
    .C(pp7_shift),
    .Sum(sum4),
    .Carry(carry4)
);
    csa_16bit csa5(
    .A(sum3),
    .B(carry3_shift),
    .C(sum4),
    .Sum(sum5),
    .Carry(carry5)
);  
    csa_16bit csa6(
    .A(sum5),
    .B(carry5_shift),
    .C(carry4_shift),
    .Sum(sum6),
    .Carry(carry6)
);
    wire [15:0] carry6_shift;
    wire final_cout;
    assign carry6_shift = carry6 << 1;

    cla_16bit final_add(
    .A(sum6),
    .B(carry6_shift),
    .Cin(1'b0),
    .Sum(Product),
    .Cout(final_cout)
);

endmodule
