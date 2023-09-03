module pes_plant_watering_tb();

    reg clk;
    reg reset;
    reg moisture_sensor;
    reg light_sensor;
    wire water_pump;

    // Instantiate the PlantWateringSystem module
    pes_plant_watering uut (
        .clk(clk),
        .reset(reset),
        .moisture_sensor(moisture_sensor),
        .light_sensor(light_sensor),
        .water_pump(water_pump)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Testbench stimulus
    initial begin
        clk = 0;
        reset = 1;
        moisture_sensor = 0;
        light_sensor = 1;

        // Release reset
        reset = 0;
        #10;

        // Simulate sensor inputs over time
        moisture_sensor = 1;
        #20;
        moisture_sensor = 0;
        light_sensor = 0;
        #20;
        moisture_sensor = 1;
        #20;
        moisture_sensor = 0;

        // Add more test scenarios as needed

        $finish;
    end

endmodule
