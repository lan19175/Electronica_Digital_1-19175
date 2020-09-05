module testbench();

  reg C, R, S;
  reg [3:0] A;
  wire [3:0] Y;

//Variables para módulo
	FlipD U1(C, A, R, S, Y);


//Prueba para FLipFlop
initial begin
	C=0;
	forever #1 C = ~C;
end
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 4, FlipFlop D");
    $display("  Q    D  C   S");
    $display("------------");
    $monitor("%b %b %b %b", Y, A, C, S);
	//es escogieron números aleatorios para A
       R = 0; A = 4'b0000;
    #1 R = 0; A = 4'b1100;
    #1 R = 0; A = 4'b1111;
	#1 R = 0; A = 4'b1111;
	#1 R = 0; A = 4'b0011;
	#1 R = 0; A = 4'b0011;
	#1 R = 0; A = 4'b1111;
	#1 R = 1; A = 4'b1111;
	#1 R = 0; A = 4'b1100;
	#1 S = 1; A = 4'b1100;
	#1 S = 1; A = 4'b1100;
	#1 S = 0; A = 4'b1100;
	#1 S = 0; A = 4'b1100;
  end
	initial
    #17 $finish;
  initial begin
    $dumpfile("FlipFlopD_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule