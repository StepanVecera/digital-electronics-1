# Lab 2: Štěpán Večeřa

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

![karnaugh BA](https://user-images.githubusercontent.com/99388270/155003792-85319f58-c088-412d-8069-09419b043e42.png)

   Less than:

  ![karnaughAB](https://user-images.githubusercontent.com/99388270/155003770-d132556d-849b-47bc-bbdf-a7cc82982841.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

 ![SOP BA](https://user-images.githubusercontent.com/99388270/155003986-1a521e83-fe53-4923-b683-c20b025bbbd5.png)

![POS AB](https://user-images.githubusercontent.com/99388270/155004005-a37d39b2-ec9b-4ce9-9d6f-ae9606515706.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "BCD_OF_YOUR_SECOND_LAST_ID_DIGIT"; -- Such as "0101" if ID = xxxx56
        s_a <= "BCD_OF_YOUR_LAST_ID_DIGIT";        -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_equals_A  = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_less_A    = 'WRITE_CORRECT_VALUE_HERE'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![your figure]()

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
