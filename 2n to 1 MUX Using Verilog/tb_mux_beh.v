module testbench();
  reg i1,i2,sel;
  wire OUT;
  MUX_2to1_beh mux(
  .OUT(OUT),
  .i0(i1),
  .i1(i2),
  .s0(sel)
  );
  initial 
  begin
    #5 i1 = 1;i2 = 0;sel = 0;
    #5 i1 = 0; i2 = 1; sel = 1;
    #5 i1 = 1; i2 = 0; sel = 1;
    #5 i1 = 0;i2 = 1;sel = 0;
    #5 $finish;
  end
endmodule