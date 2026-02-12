module Indicator_1(
    input wire [3:0] BCD, // 4-bit input to represent water levels (0000 - 1111, representing levels 0 to 15)
    output reg [6:0] seg );           // 7-segment display output (common anode)

// 7-segment encoding for common anode display
always @ (*) begin
    case (BCD)
        4'b0000: seg = 7'b0000001;  // Display '0' for level 0
        4'b0001: seg = 7'b1001111;  // Display '1' for level 1
        4'b0010: seg = 7'b0010010;  // Display '2' for level 2-
        4'b0011: seg = 7'b0000110;  // Display '3' for level 3
        4'b0100: seg = 7'b1001100;  // Display '4' for level 4
        4'b0101: seg = 7'b0100100;  // Display '5' for level 5
        4'b0110: seg = 7'b0100000;  // Display '6' for level 6
        4'b0111: seg = 7'b0001111;  // Display '7' for level 7
        4'b1000: seg = 7'b0000000;  // Display '8' for level 8
        4'b1001: seg = 7'b0000100;  // Display '9' for level 9
        default: seg = 7'b1111111;  // Turn off display for levels 10-15
    endcase
end

endmodule