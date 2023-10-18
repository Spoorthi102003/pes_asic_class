module pes_plant_watering_tb;

    reg clk;
    reg rst;
	 reg moisture_sensor;

    wire water_pump;

    pes_plant_watering uut (
        .clk(clk), 
        .rst(rst),
		  .moisture_sensor(moisture_sensor) ,
        .water_pump(water_pump)
    );

    
    initial clk = 0; 
    always #10 clk = ~clk; 

    initial begin
    
        rst = 1; 
        #50;       
        rst = 0;
		  moisture_sensor=0;
		  #10; 
		  moisture_sensor=0;
		  #10;
		  moisture_sensor=1; 
    end
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    end
      
endmodule
