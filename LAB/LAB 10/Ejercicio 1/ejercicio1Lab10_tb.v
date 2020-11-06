module Ejercicio_1LAB10();

  reg Clk, reset, enable1, enable2, load; reg [11:0]data; 
  wire [3:0]Q1; wire [3:0]Q2;

//Variables para módulo
	Ejer1 U1(load, Clk, enable1, enable2, reset, data, Q1, Q2);


//Prueba para FLipFlop de 1 bit
initial begin
	Clk=0;
	forever #5 Clk = ~Clk;
end
  initial begin
	#3
    $display("\n");
	$display("         EJERCICIO 1\n");
    $display("CLK E R L      D       |  Q1    Q0");
    $display("------------------------------------");
    $monitor("%b   %b %b %b %b %b | %b  %b", Clk, enable1, enable2, reset, load, data, Q1, Q2);
	//es escogieron números aleatorios para A
       reset = 1; enable1 = 0; enable2 = 0; load = 0; data = 0;
    #1 reset = 0;
	#20 enable1 = 1; enable2 = 1;
	#50 data = 50; load = 1;
	#15 load = 0;
	#15 load = 0;
  end




	initial
    #150 $finish;
  initial begin
    $dumpfile("ejercicio1Lab10_tb.vcd");
    $dumpvars(0, Ejercicio_1LAB10);
  end
endmodule