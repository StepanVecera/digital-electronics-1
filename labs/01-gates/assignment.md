
# Lab 1: stepan vecera

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

![de morgan vyrazy](https://user-images.githubusercontent.com/99388270/153748799-3e17418e-cb34-4cf9-8063-2dbe732b4a63.jpg)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_o   <= (not b_i and a_i) or (not c_i and b_i) ;
    fnand_o <= ((b_i nand b_i) nand a_i) nand ((c_i nand c_i) nand (b_i nand b_i));
    fnor_o  <= ((b_i nor (a_i nor a_i)) nor (b_i nor c_i)) nor((b_i nor (a_i nor a_i)) nor (b_i nor c_i));
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |1 | 1|
| 0 | 0 | 1 | 1 |1 | 1|
| 0 | 1 | 0 | 0 |0 | 0|
| 0 | 1 | 1 | 0 |0 | 0|
| 1 | 0 | 0 | 0 |0 | 0|
| 1 | 0 | 1 | 1 |1 | 1|
| 1 | 1 | 0 | 0 |0 | 0|
| 1 | 1 | 1 | 0 |0 | 0|

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

![distributive laws](https://user-images.githubusercontent.com/99388270/153749635-81b33703-2f6a-4b65-af6a-0d003f5bdb2c.png)

2. Link to your public EDA Playground example:

   [my link](https://www.edaplayground.com/x/AhjY)
