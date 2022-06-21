# Vending Machine - Verilog HDL

## Introduction 
A vending machine is an automated machine that dispenses various products such as
snacks, beverages, newspapers, tickets, etc., to the customers when money or credit card is
inserted. The machine usually works when a product is selected and some money is put in a
slot. Then, a button needs to be pushed, or a lever pulled. If there is enough money, the
selected item will be dropped to a tray, where it can be taken out by the person making the
purchase. This project aims to design a vending machine that can dispense four products of
different prices with the additional feature of ‘return change’ when a higher denomination
coin is inserted. The machine accepts coins of denominations five and ten. The design is
achieved by formulating the Verilog code using behavioral modeling and simulating the
testbench for three products. This machine is based on the Finite State Machine model.

## Specifications
▪ **Inputs:** item_number[3:0], nickel_in, dime_in, clock, reset. \
▪ **Outputs:** nickel_out, dispense. \
▪ **Other Variables:** current_state, next_state.

## Significance Of The Specifications
▪ **nickel_in:** if the user inserts a nickel, then it is 1 else, 0. \
▪ **dime_in:** if the user inserts a dime, then it is 1 else, 0. \
▪ **item_number:** Indicates which of the four items is selected. \
▪ **nickel_out:** It is 1 if Nickel is given out as change. \
▪ **current_state:** Stores the current state of the FSM. \
▪ **next_state:** Stores the next state to be achieved by the FSM. \
▪ **dispense:** It is 1 if the machine contains enough money and the item is ready to be
dispensed.

## Module Definitions
▪ **module Item_One(nickel_in, dime_in, clock, reset, nickel_out, dispense);** \
This module is responsible for the functioning of the machine if the first item is
selected. 

▪ **module Item_Two(nickel_in, dime_in, clock, reset, nickel_out, dispense);** \
This module is responsible for the functioning of the machine if the second item is
selected. 

▪ **module Item_Three(nickel_in, dime_in, clock, reset, nickel_out, dispense);** \
This module is responsible for the functioning of the machine if the third item is
selected. 

▪ **module Item_Four(nickel_in, dime_in, clock, reset, nickel_out, dispense);** \
This module is responsible for the functioning of the machine if the fourth item is
selected. 

▪ **module VendingMachine(item_number, nickel_in, dime_in, clock, reset, nickel_out,
dispense);** \
This module is responsible for selecting one of the four modules as per the user’s
choice.

## Functionality
First, the user selects the item of their choice. Then the machine initializes nickel_in and
dime_in to 0. Then the user inserts 1 Nickel or 1 Dime per cycle into the Vending Machine.
The item is not dispensed out until the amount required for the selected item is achieved.
Once enough money is collected, the chosen item is dispensed along with the change
money(if any), and this cycle continues.

## Validation Approach
We selected Item number 3. The cost of this item is 25. \
o The state of the machine is initialized to S0. \
o We inserted 1 Nickel, so the current state switches to S5. \
o We then inserted 1 Dime, so the current state switches to S15. \
o Then no coin is inserted into the machine, so the state of the machine remains
unchanged. \
o 1 Nickel is again inserted, so the current state becomes S20. \
o 1 Dime is inserted, which makes the current state S30. This state makes the machine
dispense the selected item and also outputs one Nickel as the change since the cost
of the article is only 25. \
o After the state S30 is reached, the machine resets and goes back to state S0.
The same procedure is applied for all items. The Vending Machine works properly for all the
things and dispenses the item whenever there is enough money in the machine, along with
the change money(if any).

## Result
The machine first gives the user a choice to select any of the four items, and then it starts
accepting money in the form of Nickels and Dimes. It keeps accepting the coins until there is
enough money in the machine, after which it dispenses the selected item and the change
money if there is any. After each dispense, the device resets and is ready to be used again.

## Future Modifications
We can further add a termination button to the machine. This button would allow the user
to terminate the purchase process and receive all the money back sequentially
