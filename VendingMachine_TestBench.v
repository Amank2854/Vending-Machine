//predefining the clock period
`define clock_period 10
//module for the testbench
module VendingMachine_TestBench();
    //defining the inputs and the outputs
    reg [3:0] item_number;
    reg nickel_in, dime_in, clock, reset;
    wire nickel_out, dispense;
    //calling the module 
    VendingMachine VM(.item_number(item_number), .nickel_in(nickel_in), .dime_in(dime_in), .clock(clock), .reset(reset), .nickel_out(nickel_out), .dispense(dispense));
    //intialising the clock value
    initial clock = 1;
    //updating clock value at regular interval
    always #(`clock_period/2) clock = (~clock);
    //starting the input
    initial begin
        //initialising the values
        item_number = 4'b0100;
        nickel_in = 0;
        dime_in = 0;
        reset = 0;
        //giving new inputs at regular intervals
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
        //ending the input
        $finish;
    end
    //dumping the file and variables
    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars;
    end
//ending of the testbench module
endmodule
