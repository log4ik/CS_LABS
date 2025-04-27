module decoder8_tb;
    reg [2:0] A;    
    reg EN;
    wire [7:0] Y; 

    decoder8 uut (
        .A(A),
        .EN(EN),
        .Y(Y)
    );

    initial begin
        
        A = 3'b000;
        EN = 1;

        #10;

        A = 3'b010;
        #10;
        
        EN = 0;
        A = 3'b000;
        #10;

        A = 3'b001;
        #10;

        A = 3'b010;
        #10;

        A = 3'b011;
        #10;

        A = 3'b100;
        #10;

        A = 3'b101;
        #10;

        A = 3'b110;
        #10;

        A = 3'b111;
        #10;

        $stop;
    end
endmodule

