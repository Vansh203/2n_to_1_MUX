module MUX_2to1_beh(OUT,i0,i1,s0); 
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
