//module for the first item
module Item_One(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    //defining the inputs and the outputs
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;
    reg [4:0] current_state, next_state;
    //defining the states
    localparam  S0  = 5'b00001,
                S5  = 5'b00010,
                S10 = 5'b00100,
                S15 = 5'b01000,
                S20 = 5'b10000;
    //the state will change when there is a positive edge in either clock or reset
    always @(posedge clock or reset) begin
        if(reset) begin
            current_state <= S0;
        end
        else begin
            current_state <= next_state;
        end
    end
    //defining the relationships among the states
    always @(nickel_in or dime_in) begin
        case(current_state)
            S0: 
                if(nickel_in)      begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S0;  {nickel_out, dispense} = 2'b00; end
            
            S5: 
                if(nickel_in)      begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S15; {nickel_out, dispense} = 2'b01; end
                else               begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
            
            S10:
                if(nickel_in)      begin next_state = S15; {nickel_out, dispense} = 2'b01; end
                else if(dime_in)   begin next_state = S20; {nickel_out, dispense} = 2'b11; end
                else               begin next_state = S10; {nickel_out, dispense} = 2'b00; end
            
            S15:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            S20:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end
//end of the module
endmodule
//module for the second item
module Item_Two(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;

    reg [5:0] current_state, next_state;
    localparam  S0  = 6'b000001,
                S5  = 6'b000010,
                S10 = 6'b000100,
                S15 = 6'b001000,
                S20 = 6'b010000,
                S25 = 6'b100000;
    
    always @(posedge clock or reset) begin
        if(reset) begin
            current_state <= S0;
        end
        else begin
            current_state <= next_state;
        end
    end

    always @(nickel_in or dime_in) begin
        case(current_state)
            S0: 
                if(nickel_in)      begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S0;  {nickel_out, dispense} = 2'b00; end
            
            S5: 
                if(nickel_in)      begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S15; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
            
            S10:
                if(nickel_in)      begin next_state = S15; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S20; {nickel_out, dispense} = 2'b01; end
                else               begin next_state = S10; {nickel_out, dispense} = 2'b00; end
            
            S15:
                if(nickel_in)      begin next_state = S20; {nickel_out, dispense} = 2'b01; end
                else if(dime_in)   begin next_state = S25; {nickel_out, dispense} = 2'b11; end
                else               begin next_state = S15; {nickel_out, dispense} = 2'b00; end
            
            S20:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            S25:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end

endmodule
//module for the third item
module Item_Three(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;
    
    reg [6:0] current_state, next_state;
    localparam  S0  = 7'b0000001,
                S5  = 7'b0000010,
                S10 = 7'b0000100,
                S15 = 7'b0001000,
                S20 = 7'b0010000,
                S25 = 7'b0100000,
                S30 = 7'b1000000;
    
    always @(posedge clock or reset) begin
        if(reset) begin
            current_state <= S0;
        end
        else begin
            current_state <= next_state;
        end
    end

    always @(nickel_in or dime_in) begin
        case(current_state)
            S0: 
                if(nickel_in)      begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S0;  {nickel_out, dispense} = 2'b00; end
            
            S5: 
                if(nickel_in)      begin next_state = S10; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S15; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
            
            S10:
                if(nickel_in)      begin next_state = S15; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S20; {nickel_out, dispense} = 2'b00; end
                else               begin next_state = S10; {nickel_out, dispense} = 2'b00; end
            
            S15:
                if(nickel_in)      begin next_state = S20; {nickel_out, dispense} = 2'b00; end
                else if(dime_in)   begin next_state = S25; {nickel_out, dispense} = 2'b01; end
                else               begin next_state = S15; {nickel_out, dispense} = 2'b00; end
            
            S20:
                if(nickel_in)      begin next_state = S25; {nickel_out, dispense} = 2'b01; end
                else if(dime_in)   begin next_state = S30; {nickel_out, dispense} = 2'b11; end
                else               begin next_state = S20; {nickel_out, dispense} = 2'b00; end
            
            S25:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            S30:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end

endmodule
