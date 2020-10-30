//Ejercicio 3

module FlipD1(input wire CLK, input wire D, input wire reset, input wire enable, output Q);
reg Q;
	always @(posedge CLK or	posedge reset or posedge enable)
		if (reset)begin
		Q <= 0;
	end else if(enable) begin
		Q <= D;
	end
endmodule

//modulo FlipFlop JK
module FlipJK(input wire CLK, reset, enable, J, K, output wire Q);
	FlipD1 O5(CLK, ~K&Q | J&~Q, reset, enable, Q);
endmodule
