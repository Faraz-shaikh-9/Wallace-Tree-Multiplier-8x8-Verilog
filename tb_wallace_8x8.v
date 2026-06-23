`timescale 1ns/1ps

module tb_wallace_8x8;

    reg  [7:0] A;
    reg  [7:0] B;

    wire [15:0] Product;

    wallace_8x8 uut(
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin

        $dumpfile("wallace_8x8.vcd");
        $dumpvars(0, tb_wallace_8x8);

        $monitor("A=%d B=%d Product=%d",
                  A, B, Product);

        // Test 1
        A = 8'd0;
        B = 8'd0;
        #10;

        // Test 2
        A = 8'd2;
        B = 8'd3;
        #10;

        // Test 3
        A = 8'd5;
        B = 8'd5;
        #10;

        // Test 4
        A = 8'd10;
        B = 8'd10;
        #10;

        // Test 5
        A = 8'd15;
        B = 8'd15;
        #10;

        // Test 6
        A = 8'd255;
        B = 8'd255;
        #10;

        $finish;

    end

endmodule