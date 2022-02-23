# Lab 2: VLADIMIR_SKOUMAL

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-maps](photos/BgreaterA.png)

   Less than:

   ![K-maps](photos/BlessA.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](photos/cviko2Git.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx65**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0110"; -- ID = xxxx65
        s_a <= "0101"; --  ID = xxxx65
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0110,0101 FAILED" severity error;

 		-- Second test case
        s_b <= "0110"; 
        s_a <= "1000";    
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0110,1000 FAILED" severity error;
        
        -- Third test case
        s_b <= "0010"; 
        s_a <= "0010";    
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0010,0010 FAILED" severity error;
        
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![eda](photos/edaplayground.png)

3. Link to your public EDA Playground example:

   [www.edaplayground.com/...](https://www.edaplayground.com/x/Vvws)
