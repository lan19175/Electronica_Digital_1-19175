module FlipD(input logic CLK, input logic [3:0]D, input logic reset, input logic set, output [3:0]Q);
reg Q;
	always @(posedge CLK or	posedge reset)
		if (reset)begin
		Q <= 4'b0000;
	end else if (set)begin
		Q <= 4'b1111;
	end else begin
		Q <= D;
	end
endmodule

