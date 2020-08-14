module testbench();

//   | Var ejer1T1  |  Var ejer1T2 |    Var ejer1T3    |    Var ejer1T4   |    Var ejer2T1    |  Var ejer2T2  |    Var ejer2T3   | Var ejer2T4 | 
  reg A21, B21, C21, A41, B41, C41, A81, B81, C81, A22, B22, C22, A42, B42, C42, A82, B82, C82;
  wire Tabla1MUX2_1, Tabla1MUX4_1, Tabla1MUX8_1, Tabla2MUX2_1, Tabla2MUX4_1, Tabla2MUX8_1;

//Declaración Gate Level Modelling
	Tabla1Mux21 T12(A21, B21, C21, Tabla1MUX2_1);
	Tabla1Mux41 T14(A41, B41, C41, Tabla1MUX4_1);
	Tabla1Mux81 T18(A81, B81, C81, Tabla1MUX8_1);
	Tabla2Mux21 T22(A22, B22, C22, Tabla2MUX2_1);
	Tabla2Mux41 T24(A42, B42, C42, Tabla2MUX4_1);
	Tabla2Mux81 T28(A82, B82, C82, Tabla2MUX8_1);

//Tabla 1 MUX 2:1
  initial begin
	#3
    $display("\n");
	$display("Tabla 1 con MUX 2:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A21, B21, C21, Tabla1MUX2_1);
       A21 = 0; B21 = 0; C21 = 0;
    #1 A21 = 0; B21 = 0; C21 = 1;
    #1 A21 = 0; B21 = 1; C21 = 0;
    #1 A21 = 0; B21	= 1; C21 = 1;
    #1 A21 = 1; B21 = 0; C21 = 0;
    #1 A21 = 1; B21 = 0; C21 = 1;
    #1 A21 = 1; B21 = 1; C21 = 0;
    #1 A21 = 1; B21 = 1; C21 = 1;
  end
  
  
//Tabla 1 MUX 4:1
  initial begin
	#12
    $display("\n");
	$display("Tabla 1 con MUX 4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A41, B41, C41, Tabla1MUX4_1);
       A41 = 0; B41 = 0; C41 = 0;
    #1 A41 = 0; B41 = 0; C41 = 1;
    #1 A41 = 0; B41 = 1; C41 = 0;
    #1 A41 = 0; B41	= 1; C41 = 1;
    #1 A41 = 1; B41 = 0; C41 = 0;
    #1 A41 = 1; B41 = 0; C41 = 1;
    #1 A41 = 1; B41 = 1; C41 = 0;
    #1 A41 = 1; B41 = 1; C41 = 1;
  end
  
//Tabla 1 MUX 8:1
  initial begin
	#21
    $display("\n");
	$display("Tabla 1 con MUX 8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A81, B81, C81, Tabla1MUX8_1);
       A81 = 0; B81 = 0; C81 = 0;
    #1 A81 = 0; B81 = 0; C81 = 1;
    #1 A81 = 0; B81 = 1; C81 = 0;
    #1 A81 = 0; B81	= 1; C81 = 1;
    #1 A81 = 1; B81 = 0; C81 = 0;
    #1 A81 = 1; B81 = 0; C81 = 1;
    #1 A81 = 1; B81 = 1; C81 = 0;
    #1 A81 = 1; B81 = 1; C81 = 1;
  end
  
  
//Tabla 2 MUX 2:1
  initial begin
	#30
    $display("\n");
	$display("Tabla 2 con MUX 2:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A22, B22, C22, Tabla2MUX2_1);
       A22 = 0; B22 = 0; C22 = 0;
    #1 A22 = 0; B22 = 0; C22 = 1;
    #1 A22 = 0; B22 = 1; C22 = 0;
    #1 A22 = 0; B22	= 1; C22 = 1;
    #1 A22 = 1; B22 = 0; C22 = 0;
    #1 A22 = 1; B22 = 0; C22 = 1;
    #1 A22 = 1; B22 = 1; C22 = 0;
    #1 A22 = 1; B22 = 1; C22 = 1;
  end
  
  
//Tabla 2 MUX 4:1
  initial begin
	#39
    $display("\n");
	$display("Tabla 2 con MUX 4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A42, B42, C42, Tabla2MUX4_1);
       A42 = 0; B42 = 0; C42 = 0;
    #1 A42 = 0; B42 = 0; C42 = 1;
    #1 A42 = 0; B42 = 1; C42 = 0;
    #1 A42 = 0; B42	= 1; C42 = 1;
    #1 A42 = 1; B42 = 0; C42 = 0;
    #1 A42 = 1; B42 = 0; C42 = 1;
    #1 A42 = 1; B42 = 1; C42 = 0;
    #1 A42 = 1; B42 = 1; C42 = 1;
  end
  
  
//Tabla 2 MUX 8:1
  initial begin
	#48
    $display("\n");
	$display("Tabla 2 con MUX 8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A82, B82, C82, Tabla2MUX8_1);
       A82 = 0; B82 = 0; C82 = 0;
    #1 A82 = 0; B82 = 0; C82 = 1;
    #1 A82 = 0; B82 = 1; C82 = 0;
    #1 A82 = 0; B82	= 1; C82 = 1;
    #1 A82 = 1; B82 = 0; C82 = 0;
    #1 A82 = 1; B82 = 0; C82 = 1;
    #1 A82 = 1; B82 = 1; C82 = 0;
    #1 A82 = 1; B82 = 1; C82 = 1;
  end
  
  
  initial
    #64 $finish;

  initial begin
    $dumpfile("Ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end
  
  
endmodule