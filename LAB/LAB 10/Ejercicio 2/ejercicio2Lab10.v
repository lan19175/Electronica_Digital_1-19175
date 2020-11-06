//Ejercicio 1

//Bus Driver
module BufTri(input wire enable, input wire [3:0]IN, output wire [3:0]OUT);
	assign OUT = enable ? IN : 4'bz;
endmodule


//ALU
module ALU (input wire [3:0]A, input wire [3:0]B, input wire [2:0]sel, output reg [3:0]Y, output reg zero, output reg carry); 
reg [4:0]X;

	always @ (A or B or sel) 
		case (sel) 
			0 : begin
				Y = A;
				zero = ~Y[0]&~Y[1]&~Y[2]&~Y[3];
				end
			1 : begin
				X = A - B; 
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
				carry = X[4];
				zero = ~Y[0]&~Y[1]&~Y[2]&~Y[3];
				end 
			2 : begin
				Y = B;
				zero = ~Y[0]&~Y[1]&~Y[2]&~Y[3];
				end
			3 : begin
				X = A + B; 
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
				carry = X[4];
				zero = ~Y[0]&~Y[1]&~Y[2]&~Y[3];
				end
			4 : begin
				Y = ~(A&B);
				zero = ~Y[0]&~Y[1]&~Y[2]&~Y[3];
				end
			default : $display("Error in SEL"); 
		endcase 
endmodule


//Accumulador
module ACC(input wire CLK, input wire [3:0]D, input wire reset, input wire enable, output [3:0]Q);
reg Q;
	always @(posedge CLK or	posedge reset or posedge enable)
		if (reset)begin
		Q <= 0;
	end else if(enable) begin
		Q <= D;
	end
endmodule


//modulo final
module Eje2(input wire clk, reset, enable1, enable2, enable3, input wire [3:0]IN, input wire [2:0]sel, output wire [3:0]Y, output wire zero, carry);
	wire [3:0]YBuf1;
	wire [3:0]YACC;
	wire [3:0]YALU;
	BufTri O1(enable1, IN, YBuf1);
	ACC O3(clk, YALU, reset, enable3, YACC);
	ALU O2(YACC, YBuf1, sel, YALU, zero, carry);
	BufTri O4(enable2, YALU, Y);
endmodule