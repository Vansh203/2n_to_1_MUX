module mux_32to1_tb;
    reg [31:0] in;  
    reg [4:0] sel;
    wire out;
    mux_32to1_with_2to1 uut(
        .OUT(out),
        .inp(in),
        .sel(sel)
    );
integer i;
    initial 
    begin
        in = 32'h0000_0000;
        sel = 0;
        #10 in = 32'habcd_ef12;
        sel = 31;
        #10;
        for (i = 0; i < 32; i=i+1) 
        begin
            in[i] = $random;
            sel = $random %15;
        end
        #10;
        $finish;
    end

endmodule