//Ejercicio 1

//Program Counter
module CounterLoad(input wire [11:0]data, input wire load, enable, clk, reset, output reg [11:0]out);
	always @(posedge clk or posedge load or posedge reset)
		if (reset) begin
			out <= 12'b0 ;
		end else if (load) begin
			out <= data;
		end else if (enable) begin
			out <= out + 1;
		end
endmodule 


//Memoria ROM
module MemoriaRom (input wire [11:0]address, output wire [7:0]data);           
	reg [11:0] mem [0:4095] ;  
    
	assign data = mem[address];

initial begin
  $readmemb("memoria.txt", mem); 
end

endmodule


//Fetch
module Fetch(input wire CLK, input wire [7:0]D, input wire reset, input wire enable, output [3:0]Q1, output [3:0]Q0);
reg Q1;
reg Q0;
wire [3:0]D1;
wire [3:0]D0;
assign D1[0] = D[4];
assign D1[1] = D[5];
assign D1[2] = D[6];
assign D1[3] = D[7];
assign D0[0] = D[0];
assign D0[1] = D[1];
assign D0[2] = D[2];
assign D0[3] = D[3];
	always @(posedge CLK or	posedge reset or posedge enable)
		if (reset)begin
		Q1 <= 0;
		Q0 <= 0;
	end else if(enable) begin
		Q1 <= D1;
		Q0 <= D0;
	end
endmodule


module Ejer1 (input wire load, clk, enable1, enable2, reset, input wire [11:0]data, output wire [3:0]Q1, output wire [3:0]Q0);
	wire [11:0]OutCL;
	wire [7:0]OutMR;
	CounterLoad O1(data, load,  enable1, clk, reset, OutCL);
	MemoriaRom O2(OutCL, OutMR);
	Fetch O3(clk, OutMR, reset, enable2, Q1, Q0);
endmodule
	
