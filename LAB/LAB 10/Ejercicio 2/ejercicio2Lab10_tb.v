module Ejercicio_2LAB10();

  reg Clk, enable1, enable2, enable3, reset; reg [3:0]IN; reg [2:0]sel;
  wire [3:0]Y; wire zero, carry;

//Variables para módulo
	Eje2 U1(Clk, reset, enable1, enable2, enable3, IN, sel, Y, zero, carry);


//Prueba para FLipFlop de 1 bit
initial begin
	Clk=0;
	forever #5 Clk = ~Clk;
end
  initial begin
	#3
    $display("\n");
	$display("         EJERCICIO 2\n");
    $display("CLK R E1 E2 E3  IN   Sel | Y   zero carry");
    $display("-------------------------------------------");
    $monitor("%b   %b %b  %b  %b  %b  %b | %b  %b    %b", Clk, reset, enable1, enable2, enable3, IN, sel, Y, zero, carry);
	//es escogieron números aleatorios para A
       reset = 1; enable1 = 0; enable2 = 0; enable3 = 0; IN = 0; sel = 0;
	   #10 reset = 0; enable1 = 1; enable2 = 1; enable3 = 1;
	   #10 IN = 1;
	   #10 IN = 2;
	   #10 IN = 3;
	   #10 IN = 10;
	   #10 sel = 2;
	   #10 IN = 10;
	   #10 sel = 1; IN = 5;
	   #10 sel = 3;
	   #20 sel = 4;   
  end



	initial
    #130 $finish;
  initial begin
    $dumpfile("ejercicio2Lab10_tb.vcd");
    $dumpvars(0, Ejercicio_2LAB10);
  end
endmodule