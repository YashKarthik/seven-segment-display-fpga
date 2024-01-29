library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter IS
	PORT (
		i_btn		: in std_logic;
		o_count	: out std_logic_vector(3 downto 0)
	);
END counter;

ARCHITECTURE behaviour OF counter IS
	SIGNAL count: std_logic_vector(3 downto 0) := "0000";
	
BEGIN
	PROCESS(i_btn)
	BEGIN
		if (i_btn = '1') then
			count <= count + 1;
			--count(0) <= count(0) xor '1';	
			--count(1) <= count(1) xor (count(0) and '1');
			--count(2) <= count(2) xor (count(1) and (count(0) and '1'));
			--count(3) <= count(3) xor (count(2) and (count(1) and (count(0) and '1')));
		
		end if;
	END PROCESS;
	
	o_count <= count;
END behaviour;
