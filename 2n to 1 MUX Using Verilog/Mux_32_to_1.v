module mux_32to1_with_2to1(OUT,inp,sel);
input [31:0] inp;
input [4:0] sel;
output OUT;
wire [15:0] y;
wire [7:0] x;
wire [3:0] m;
wire l0,l1;
MUX_2to1 m0(y[0],inp[1],inp[0],sel[0]);
MUX_2to1 m1(y[1],inp[3],inp[2],sel[0]);
MUX_2to1 m2(y[2],inp[5],inp[4],sel[0]);
MUX_2to1 m3(y[3],inp[7],inp[6],sel[0]);
MUX_2to1 m4(y[4],inp[9],inp[8],sel[0]);
MUX_2to1 m5(y[5],inp[11],inp[10],sel[0]);
MUX_2to1 m6(y[6],inp[13],inp[12],sel[0]);
MUX_2to1 m7(y[7],inp[15],inp[14],sel[0]);
MUX_2to1 m8(y[8],inp[17],inp[16],sel[0]);
MUX_2to1 m9(y[9],inp[19],inp[18],sel[0]);
MUX_2to1 m10(y[10],inp[21],inp[20],sel[0]);
MUX_2to1 m11(y[11],inp[23],inp[22],sel[0]);
MUX_2to1 m12(y[12],inp[25],inp[24],sel[0]);
MUX_2to1 m13(y[13],inp[27],inp[26],sel[0]);
MUX_2to1 m14(y[14],inp[29],inp[28],sel[0]);
MUX_2to1 m15(y[15],inp[31],inp[30],sel[0]);
MUX_2to1 m16(x[0],y[1],y[0],sel[1]);
MUX_2to1 m17(x[1],y[3],y[2],sel[1]);
MUX_2to1 m18(x[2],y[5],y[4],sel[1]);
MUX_2to1 m19(x[3],y[7],y[6],sel[1]);
MUX_2to1 m20(x[4],y[9],y[8],sel[1]);
MUX_2to1 m21(x[5],y[11],y[10],sel[1]);
MUX_2to1 m22(x[6],y[13],y[12],sel[1]);
MUX_2to1 m23(x[7],y[15],y[14],sel[1]);
MUX_2to1 m24(m[0],x[1],x[0],sel[2]);
MUX_2to1 m25(m[1],x[3],x[2],sel[2]);
MUX_2to1 m26(m[2],x[5],x[4],sel[2]);
MUX_2to1 m27(m[3],x[7],x[6],sel[2]);
MUX_2to1 m28(l0,m[1],m[0],sel[3]);
MUX_2to1 m29(l1,m[3],m[2],sel[3]);
MUX_2to1 m30(OUT,l1,l0,sel[4]);
endmodule


//module instantiated
module MUX_2to1(OUT,i0,i1,s0); 
input i0, i1, s0;
output OUT; 
reg OUT; 
always@(s0 or i0 or i1)
begin
if(s0) 
OUT = i1;  
else
OUT = i0;
end
endmodule
