`timescale  1ns/1ns
module  tb_decoder3_8();

wire    [7:0]   out;

reg             in1;
reg             in2;
reg             in3;

initial begin
    in1 <= 1'b0;
    in2 <= 1'b0;
    in3 <= 1'b0;
end

always #10 in1 <= {$random} % 2;
always #10 in2 <= {$random} % 2;
always #10 in3 <= {$random} % 2;

initial begin
    $timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in1=%b in2=%b in3=%b out=%b", $time, in1, in2, in3, out);
end

decoder3_8  decoder3_8_inst(
    .in1    (in1),  
    .in2    (in2),  
    .in3    (in3),  

    .out    (out)   
);

endmodule
