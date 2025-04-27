module decoder8 (
    input wire [2:0] A, 
    input wire EN,       
    output reg [7:0] Y   
);

always @(*) begin
    if (EN == 0) begin
        Y = 8'b11111111; 
        Y[A] = 1'b0;    
    end else begin
        Y = 8'bz;       
    end
end

endmodule

