library IEEE; use IEEE.std_logic_1164.all; use IEEE.numeric_std.all;

entity display IS
	PORT (
		i_val		: in std_logic_vector(3 downto 0);
		o_seg_A		: out std_logic;
		o_seg_B		: out std_logic;
		o_seg_C		: out std_logic;
		o_seg_D		: out std_logic;
		o_seg_E		: out std_logic;
		o_seg_F		: out std_logic;
		o_seg_G		: out std_logic
	);
END display;

ARCHITECTURE behaviour OF display IS
	signal temp: std_logic_vector(7 downto 0) := (others => '0');
BEGIN
	PROCESS(i_val)
	BEGIN
		--o_seg_A <= i_val(3) or i_val(1) or (i_val(2) and i_val(0)) or (not i_val(0) and not i_val(2) and not i_val(3));
		--o_seg_B <= not i_val(2) or (i_val(2) and i_val(3)) or (i_val(0) and i_val(1)) or (not i_val(0) and not i_val(1));
		--o_seg_C <= i_val(2) or i_val(0) or (not i_val(2) and i_val(3)) or (not i_val(0) and i_val(1));
		--o_seg_D <= i_val(3) or (not i_val(0) and i_val(1)) or (not i_val(2) and not i_val(3) and not i_val(0)) or (not i_val(2) and not i_val(3) and i_val(1)) or (i_val(2) and not i_val(1) and i_val(2));
		--o_seg_E <= (i_val(0) and i_val(2) and not i_val(3)) or (not i_val(0) and i_val(1) and not i_val(2)) or (not i_val(0) and not i_val(2) and not i_val(3));
		--o_seg_F <= i_val(3) or (i_val(2) and not i_val(0)) or (not i_val(0) and not i_val(1)) or (not i_val(2) and i_val(0) and i_val(1));
		--o_seg_G <= i_val(3) or (i_val(1) and not i_val(2)) or (not i_val(0) and i_val(2)) or (i_val(0) and not i_val(1) and i_val(2));
		
		case i_val is
        		when "0000" => temp <= X"7E";
		       	when "0001" => temp <= X"30";
		       	when "0010" => temp <= X"6D";
		       	when "0011" => temp <= X"79";
		       	when "0100" => temp <= X"33";
		       	when "0101" => temp <= X"5B";
		       	when "0110" => temp <= X"5F";
		       	when "0111" => temp <= X"70";
		       	when "1000" => temp <= X"7F";
		       	when "1001" => temp <= X"7B";
		       	when "1010" => temp <= X"00";
		       	when "1011" => temp <= X"00";
		       	when "1100" => temp <= X"00";
		       	when "1101" => temp <= X"00";
		       	when "1110" => temp <= X"00";
			when "1111" => temp <= X"00";
		end case;
	END PROCESS;
	
	o_seg_A <= temp(6);
	o_seg_B <= temp(5);
	o_seg_C <= temp(4);
	o_seg_D <= temp(3);
	o_seg_E <= temp(3);
	o_seg_F <= temp(1);
	o_seg_G <= temp(0);
END behaviour;
