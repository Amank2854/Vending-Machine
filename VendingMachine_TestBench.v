// Predefining the clock period
`define clock_period 10

// Module for the testbench
module VendingMachine_TestBench();
    // Defining the inputs and the outputs
    reg [3:0] item_number;
    reg nickel_in, dime_in, clock, reset;
    wire nickel_out, dispense;
    
    // Calling the module 
    VendingMachine VM(.item_number(item_number), .nickel_in(nickel_in), .dime_in(dime_in), .clock(clock), .reset(reset), .nickel_out(nickel_out), .dispense(dispense));

    // Intialising the clock value
    initial clock = 1;

    // Updating clock value at a regular interval
    always #(`clock_period/2) clock = (~clock);

    // Input beginning
    initial begin
        // Initialising the values
        item_number = 4'b0100;
        nickel_in = 0;
        dime_in = 0;
        reset = 0;

        // Giving new inputs at regular intervals
        #(`clock_period);
        reset = 1;

        #(`clock_period);
        reset = 0;

        #(`clock_period);
        nickel_in = 1;
        dime_in = 0;
        
        #(`clock_period);
        nickel_in = 0; 
        dime_in = 1;

        #(`clock_period);
        nickel_in = 0;
        dime_in = 0;
        
        #(`clock_period);
        nickel_in = 1;
        dime_in = 0;

        #(`clock_period);
        nickel_in = 0;
        dime_in = 1;

        #(`clock_period);
        nickel_in = 0;
        dime_in = 0;

        #(`clock_period);

        #(`clock_period*5);
        $finish;
    end

    // Dumping the file and variables
    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars; 
    end
endmodule