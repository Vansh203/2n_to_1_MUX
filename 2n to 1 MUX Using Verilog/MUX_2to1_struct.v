module MUX_2_to_1_struct(OUT,i2,i1,sel); 
input i1,i2,sel; 
output OUT; 
wire x1,x2,seln; 
not(seln,sl); 
nand(x1,i1,sel_n);
nand(x2,i2,sel);
nand(OUT,x1,x2);
endmodule
