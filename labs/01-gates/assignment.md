
# Lab 1: stepan vecera

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic function](images/equations.png)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_o   <= (not b_i and a_i) or (not c_i and b_i) ;
    fnand_o <= (not b_i nand a_i) nand (not c_i nand not b_i);
    fnor_o  <= not ((b_i nor not a_i) nor (b_i nor c_i));
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |1 | 1|
| 0 | 0 | 1 | 0 |0 | 0|
| 0 | 1 | 0 | 0 |0 | 0|
| 0 | 1 | 1 | 0 |0 | 0|
| 1 | 0 | 0 | 1 |1 | 1|
| 1 | 0 | 1 | 1 |1 | 1|
| 1 | 1 | 0 | 0 |0 | 0|
| 1 | 1 | 1 | 0 |0 | 0|

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure]
)
![fig 1](https://user-images.githubusercontent.com/99388270/153748366-88502c08-f1c6-43d8-8d5e-b7f670081f5f.png)

2. Link to your public EDA Playground example:

   [my link](https://www.edaplayground.com/x/BGk7)
