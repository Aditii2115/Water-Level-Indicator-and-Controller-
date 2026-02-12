module Controller(
    input ug_ll, // Underground tank low water level 
    input uh_hl, // Overhead tank high water level 
    input uh_ll, // Overhead tank low water level 
    output reg pump       // Output to control the pump
);
    always @ (ug_ll,uh_hl,uh_ll) begin
        if (ug_ll== 1)     //Underground tank has enough water
		  begin
            if (uh_ll == 0)    //Overhead tank is at low level
				begin               
                pump = 1;    //Turn on the pump
            end
            else if (uh_hl== 1)     //// Overhead tank has reached the high level
				begin
                pump = 0;    // Turn off the pump
            end
        end
        else 
		  begin
            pump = 0;   // ug_ll==0, Turn off the pump
        end
    end
endmodule
