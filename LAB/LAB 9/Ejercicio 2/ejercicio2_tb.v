module Ejercicio_2();

  reg Clk, reset, enable; 
  wire QT; 

//Variables para módulo
	FlipT U4(Clk, reset, enable, QT);


initial begin
	Clk=0;
	forever #1 Clk = ~Clk;
end


//Prueba para FLipT
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 2");
    $display("Clk E R |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", Clk, enable, reset, QT);
	//es escogieron números aleatorios para A
       reset = 1; enable = 0;
    #1 reset = 0; enable = 1;

  end

	initial
    #15 $finish;
  initial begin
    $dumpfile("ejercicio2_tb.vcd");
    $dumpvars(0, Ejercicio_2);
  end
endmodule