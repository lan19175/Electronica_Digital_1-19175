module testbench();

//   | Var ejer1T1  |  Var ejer1T2 |    Var ejer1T3    |    Var ejer1T4   |    Var ejer2T1    |  Var ejer2T2  |    Var ejer2T3   | Var ejer2T4 | 
  reg ASG, BSG, CSG, APG, BPG, CPG, AMG, BMG, CMG, ASO, BSO, CSO, APO, BPO, CPO, AMO, BMO, CMO;
  wire YSOPG, YPOSG, YMapaKarG, YSOPO, YPOSO, YMapaKarO;

//Declaración Gate Level Modelling
  SOPG G1(ASG, BSG, CSG, YSOPG);
  POSG G2(APG, BPG, CPG, YPOSG);
  MapaKarG G3(AMG, BMG, CMG, YMapaKarG);
//Declaración Operadores Lógicos
  SOPO OP1(ASO, BSO, CSO, YSOPO);
  POSO OP2(APO, BPO, CPO, YPOSO);
  MapaKarO OP3(AMO, BMO, CMO, YMapaKarO);

//Gate Level Modelling
//Ejercicio SOP
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 5, SOP Gate");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", ASG, BSG, CSG, YSOPG);
       ASG = 0; BSG = 0; CSG = 0;
    #1 ASG = 0; BSG = 0; CSG = 1;
    #1 ASG = 0; BSG = 1; CSG = 0;
    #1 ASG = 0; BSG	= 1; CSG = 1;
    #1 ASG = 1; BSG = 0; CSG = 0;
    #1 ASG = 1; BSG = 0; CSG = 1;
    #1 ASG = 1; BSG = 1; CSG = 0;
    #1 ASG = 1; BSG = 1; CSG = 1;
  end
  
  
  //Ejercicio POS
    initial begin
	#12
	$display("\n");
	$display("Ejercicio 5, POS Gate");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", APG, BPG, CPG, YPOSG);
       APG = 0; BPG = 0; CPG = 0;
    #1 APG = 0; BPG = 0; CPG = 1;
    #1 APG = 0; BPG = 1; CPG = 0;
    #1 APG = 0; BPG	= 1; CPG = 1;
    #1 APG = 1; BPG = 0; CPG = 0;
    #1 APG = 1; BPG = 0; CPG = 1;
    #1 APG = 1; BPG = 1; CPG = 0;
    #1 APG = 1; BPG = 1; CPG = 1;
  end
  
  
 //Ejercicio Mapa de Karnaugh
   initial begin
   #21
    $display("\n");
	$display("Ejercicio 5, Mapa de Karnaugh Gate");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", AMG, BMG, CMG, YMapaKarG);
       AMG = 0; BMG = 0; CMG = 0;
    #1 AMG = 0; BMG = 0; CMG = 1;
    #1 AMG = 0; BMG = 1; CMG = 0;
    #1 AMG = 0; BMG	= 1; CMG = 1;
    #1 AMG = 1; BMG = 0; CMG = 0;
    #1 AMG = 1; BMG = 0; CMG = 1;
    #1 AMG = 1; BMG = 1; CMG = 0;
    #1 AMG = 1; BMG = 1; CMG = 1;
  end


// Operadores Lógicos
//Ejercicio SOP
  initial begin
	#30
	$display("\n");
	$display("Ejercicio 5, SOP Operadores");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", ASO, BSO, CSO, YSOPO);
       ASO = 0; BSO = 0; CSO = 0;
    #1 ASO = 0; BSO = 0; CSO = 1;
    #1 ASO = 0; BSO = 1; CSO = 0;
    #1 ASO = 0; BSO	= 1; CSO = 1;
    #1 ASO = 1; BSO = 0; CSO = 0;
    #1 ASO = 1; BSO = 0; CSO = 1;
    #1 ASO = 1; BSO = 1; CSO = 0;
    #1 ASO = 1; BSO = 1; CSO = 1;
  end
  

//Ejercicio POS
  initial begin
    #39
    $display("\n");
	$display("Ejercicio 5, POS Operadores");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", APO, BPO, CPO, YPOSO);
       APO = 0; BPO = 0; CPO = 0;
    #1 APO = 0; BPO = 0; CPO = 1;
    #1 APO = 0; BPO = 1; CPO = 0;
    #1 APO = 0; BPO	= 1; CPO = 1;
    #1 APO = 1; BPO = 0; CPO = 0;
    #1 APO = 1; BPO = 0; CPO = 1;
    #1 APO = 1; BPO = 1; CPO = 0;
    #1 APO = 1; BPO = 1; CPO = 1;
  end


//Ejercicio Mapa de Karnaugh
  initial begin
    #48
    $display("\n");
	$display("Ejercicio 5, Mapa de Karnaugh Operadores");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", AMO, BMO, CMO, YMapaKarO);
       AMO = 0; BMO = 0; CMO = 0;
    #1 AMO = 0; BMO = 0; CMO = 1;
    #1 AMO = 0; BMO = 1; CMO = 0;
    #1 AMO = 0; BMO	= 1; CMO = 1;
    #1 AMO = 1; BMO = 0; CMO = 0;
    #1 AMO = 1; BMO = 0; CMO = 1;
    #1 AMO = 1; BMO = 1; CMO = 0;
    #1 AMO = 1; BMO = 1; CMO = 1;
  end
 
 
  initial
    #65 $finish;
  
  initial begin
    $dumpfile("codigoEjercicio5_tb.vcd");
    $dumpvars(0, testbench);
  end
  
endmodule