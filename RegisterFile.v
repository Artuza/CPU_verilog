module RegisterFile(
    input clk,
    input reset,
    input regWrite,
    input [4:0] readReg1,
    input [4:0] readReg2,
    input [4:0] writeReg,
    input [31:0] writeData,
    output [31:0] readData1,
    output [31:0] readData2
);
    reg [31:0] registers[31:0];

    always @(posedge clk) begin
        if (reset) begin
            // Inicialización de registros en el reset
        end else if (regWrite) begin
            registers[writeReg] <= writeData;
        end
    end

    assign readData1 = registers[readReg1];
    assign readData2 = registers[readReg2];
endmodule
