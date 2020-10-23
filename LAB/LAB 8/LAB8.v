//Ejercicio 1
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


//Ejercicio 2
module MemoriaRom (input wire [11:0]address, output wire [7:0]data);           
	reg [11:0] mem [0:4095] ;  
    
	assign data = mem[address];

initial begin
  $readmemb("memoria.txt", mem); 
end

endmodule


//Ejercicio 3
module ALU (input wire [3:0]A, input wire [3:0]B, input wire [2:0]sel, output reg [3:0]Y); 
reg [4:0]X;
reg menor;
	always @ (A or B or sel) 
		case (sel) 
			0 : Y = A&B; 
			1 : Y = A | B; 
			2 : begin
				X = A + B; 
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
				end
			3 : Y = 0;
			4 : Y = A&~B;
			5 : Y = A | ~B;
			6 : begin
				X = A - B; 
				Y[0] = X[0];
				Y[1] = X[1];
				Y[2] = X[2];
				Y[3] = X[3];
				end
			7 : begin
				menor = (A < B);
				if (menor)begin
				Y = 4'b1111;
				end else begin
				Y = 0;
				end
				end
			default : $display("Error in SEL"); 
		endcase 
    
endmodule