module testbench();
  reg i1,i2,sel;
  wire OUT;
  MUX_2_to_1_struct mux(
  .OUT(OUT),
  .i1(i1),
  .i2(i2),
  .sel(sel)
  );
  initial 
  begin
    #20 i1 = 1;i2 = 0;sel = 0;
    #20 i1 = 0; i2 = 1; sel = 1;
    #20 i1 = 1; i2 = 0; sel = 1;
    #20 i1 = 0;i2 = 1;sel = 0;
    #20 $finish;
  end
endmodule