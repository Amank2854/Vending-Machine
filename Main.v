module Item_One(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;
    
    reg [4:0] current_state, next_state;
    localparam  S0  = 7'b00001;
                S5  = 7'b00010;
                S10 = 7'b00100;
                S15 = 7'b01000;
                S20 = 7'b10000;
    
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
                else if(dime_in)   begin next_state = S15; {nickel_out, dispense} = 2'b01; end
                else               begin next_state = S5;  {nickel_out, dispense} = 2'b00; end
            
            S10:
                if(nickel_in)      begin next_state = S15; {nickel_out, dispense} = 2'b01; end
                else if(dime_in)   begin next_state = S20; {nickel_out, dispense} = 2'b11; end
                else               begin next_state = S10; {nickel_out, dispense} = 2'b00; end
            
            S15:
                next_state = S0;
            
            S20:
                next_state = S0;

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end

endmodule

module Item_Two(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;

    reg [5:0] current_state, next_state;
    localparam  S0  = 7'b000001;
                S5  = 7'b000010;
                S10 = 7'b000100;
                S15 = 7'b001000;
                S20 = 7'b010000;
                S25 = 7'b100000;
    
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
                next_state = S0;
            
            S25:
                next_state = S0;

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end

endmodule

module Item_Three(nickel_in, dime_in, clock, reset, nickel_out, dispense);
    input nickel_in, dime_in, clock, reset;
    output reg nickel_out, dispense;
    
    reg [6:0] current_state, next_state;
    localparam  S0  = 7'b0000001;
                S5  = 7'b0000010;
                S10 = 7'b0000100;
                S15 = 7'b0001000;
                S20 = 7'b0010000;
                S25 = 7'b0100000;
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
                next_state = S0;
            
            S30:
                next_state = S0;

            default:
                begin next_state = S0; {nickel_out, dispense} = 2'b00; end
            
            endcase
    end

endmodule
