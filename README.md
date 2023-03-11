
# Vending Machine - Verilog HDL

The project involved designing a vending machine that could dispense four different products with varying prices and has the additional feature of returning change when a higher denomination coin was inserted. The vending machine only accepts coins of denominations five and ten.

The design of the vending machine was accomplished through the creation of a Finite State Machine (FSM) model, which defined the machine's different states, inputs, and outputs, as well as the transitions between the states. The FSM model was implemented using Verilog code, which defined the different states and their corresponding logic for accepting coins, dispensing products, and returning change.

A test-bench was created to simulate different scenarios, such as different coin denominations and product selections, to ensure that the vending machine worked correctly. The testing process was successful in verifying the proper functioning of the vending machine.

This project required knowledge of Verilog, FSMs, and digital design principles and provided a challenging and rewarding opportunity to better understand how vending machines operate. The completed project was a functional and efficient vending machine that could dispense products and return change with ease.

## Authors

- [@OptimalKnight](https://www.github.com/OptimalKnight)
- [@Amank2854](https://www.github.com/Amank2854)


## Run Locally

Follow along [these](https://medium.com/macoclock/running-verilog-code-on-linux-mac-3b06ddcccc55) steps for running Verilog code on Linux/Mac.


## Specifications

- **Inputs:** item_number[3:0], nickel_in, dime_in, clock, reset.
- **Outputs:** nickel_out, dispense.
- **Other Variables:** current_state, next_state.
## Significance Of The Specifications

- **item_number:** Indicates which of the four items is selected.
- **nickel_in:** Indicates whether the user has inserted a Nickel or not.
- **dime_in:** Indicates whether the user has inserted a Dime or not.
- **nickel_out:** Indicates whether a Nickel is given out as change or not.
- **dispense:** Indicates whether the item is ready to be dispensed or not.
- **current_state:** Stores the current state of the FSM.
- **next_state:** Stores the next state to be achieved by the FSM.
## Modules

    module Item_One(nickel_in, dime_in, clock, reset, nickel_out, dispense)
This module is responsible for the functioning of the machine if the first item is selected.

    module Item_Two(nickel_in, dime_in, clock, reset, nickel_out, dispense)
This module is responsible for the functioning of the machine if the second item is selected. 

    module Item_Three(nickel_in, dime_in, clock, reset, nickel_out, dispense)
This module is responsible for the functioning of the machine if the third item is selected. 

    module Item_Four(nickel_in, dime_in, clock, reset, nickel_out, dispense)
This module is responsible for the functioning of the machine if the fourth item is selected. 

    module VendingMachine(item_number, nickel_in, dime_in, clock, reset, nickel_out, dispense)
This module is responsible for selecting one of the four modules as per the user’s choice.
## Working

To operate the vending machine, the user first selects the item they wish to purchase. The machine then sets the values for nickel_in and dime_in to 0. The user can then insert either 1 Nickel or 1 Dime per cycle into the machine. The vending machine will not dispense the item until the required amount for the selected item is collected. Once enough money is collected, the machine will dispense the chosen item along with any change that is owed, and the cycle will continue.
## Example

- We selected Item number 3. The cost of this item is 25.
- The state of the machine is initialized to S0.
- We inserted 1 Nickel, so the current state switches to S5.
- We then inserted 1 Dime, so the current state switches to S15.
- Then no coin is inserted into the machine, so the state of the machine remains unchanged.
- 1 Nickel is again inserted, so the current state becomes S20.
- 1 Dime is inserted, which makes the current state S30. This state makes the machine dispense the selected item and also outputs one Nickel as the change since the cost of the article is only 25.
- After the state S30 is reached, the machine resets and goes back to state S0.



## Future Scope

We can further add a termination button to the machine. This button would allow the user to terminate the purchase process and receive all the money back sequentially.