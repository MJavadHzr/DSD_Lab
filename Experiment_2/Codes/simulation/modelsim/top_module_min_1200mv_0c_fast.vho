-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/31/2021 01:22:12"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_module IS
    PORT (
	close : OUT std_logic;
	\IN\ : IN std_logic;
	Ent : IN std_logic;
	\OUT\ : IN std_logic;
	clear : IN std_logic;
	T : IN std_logic;
	clk : IN std_logic;
	\open\ : OUT std_logic
	);
END top_module;

-- Design Ports Information
-- close	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_close : std_logic;
SIGNAL \ww_IN\ : std_logic;
SIGNAL ww_Ent : std_logic;
SIGNAL \ww_OUT\ : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_open\ : std_logic;
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \close~output_o\ : std_logic;
SIGNAL \open~output_o\ : std_logic;
SIGNAL \OUT~input_o\ : std_logic;
SIGNAL \Ent~input_o\ : std_logic;
SIGNAL \IN~input_o\ : std_logic;
SIGNAL \inst10|inst3~0_combout\ : std_logic;
SIGNAL \inst10|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst11|inst8~0_combout\ : std_logic;
SIGNAL \inst11|inst8~1_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst7~0_combout\ : std_logic;

BEGIN

close <= ww_close;
\ww_IN\ <= \IN\;
ww_Ent <= Ent;
\ww_OUT\ <= \OUT\;
ww_clear <= clear;
ww_T <= T;
ww_clk <= clk;
\open\ <= \ww_open\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_inst7~0_combout\ <= NOT \inst7~0_combout\;

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X14_Y0_N9
\close~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst7~0_combout\,
	devoe => ww_devoe,
	o => \close~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\open~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~0_combout\,
	devoe => ww_devoe,
	o => \open~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\OUT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_OUT\,
	o => \OUT~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\Ent~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent,
	o => \Ent~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\IN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\,
	o => \IN~input_o\);

-- Location: LCCOMB_X12_Y1_N18
\inst10|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst3~0_combout\ = (\Ent~input_o\ & \IN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ent~input_o\,
	datac => \IN~input_o\,
	combout => \inst10|inst3~0_combout\);

-- Location: LCCOMB_X12_Y1_N8
\inst10|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst3~1_combout\ = (\Ent~input_o\ & (\IN~input_o\ & !\OUT~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ent~input_o\,
	datac => \IN~input_o\,
	datad => \OUT~input_o\,
	combout => \inst10|inst3~1_combout\);

-- Location: LCCOMB_X12_Y1_N0
\inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = \inst|inst2~q\ $ (((\inst11|inst8~1_combout\ & (\inst|inst1~q\ $ (!\inst10|inst3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~q\,
	datab => \inst10|inst3~1_combout\,
	datac => \inst|inst2~q\,
	datad => \inst11|inst8~1_combout\,
	combout => \inst|inst2~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G19
\clear~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: FF_X12_Y1_N1
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X12_Y1_N26
\inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = \inst|inst3~q\ $ (((\inst11|inst8~1_combout\ & (\inst|inst2~q\ $ (!\inst10|inst3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst10|inst3~1_combout\,
	datac => \inst|inst3~q\,
	datad => \inst11|inst8~1_combout\,
	combout => \inst|inst3~0_combout\);

-- Location: FF_X12_Y1_N27
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X12_Y1_N24
\inst11|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst8~0_combout\ = (\inst|inst1~q\ & (\inst|inst2~q\ & (\inst|inst3~q\ & \inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst~q\,
	combout => \inst11|inst8~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\inst11|inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst8~1_combout\ = (\OUT~input_o\ & (((!\inst10|inst3~0_combout\)))) # (!\OUT~input_o\ & (\T~input_o\ & (\inst10|inst3~0_combout\ & !\inst11|inst8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \OUT~input_o\,
	datac => \inst10|inst3~0_combout\,
	datad => \inst11|inst8~0_combout\,
	combout => \inst11|inst8~1_combout\);

-- Location: LCCOMB_X12_Y1_N28
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = \inst|inst~q\ $ (\inst11|inst8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	datad => \inst11|inst8~1_combout\,
	combout => \inst|inst~0_combout\);

-- Location: FF_X12_Y1_N29
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X12_Y1_N22
\inst|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = \inst|inst1~q\ $ (((\inst11|inst8~1_combout\ & (\inst|inst~q\ $ (!\inst10|inst3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst10|inst3~1_combout\,
	datac => \inst|inst1~q\,
	datad => \inst11|inst8~1_combout\,
	combout => \inst|inst1~0_combout\);

-- Location: FF_X12_Y1_N23
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst1~0_combout\,
	clrn => \clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X12_Y1_N20
\inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\inst|inst~q\) # ((\inst|inst3~q\) # ((\inst|inst1~q\) # (\inst|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst2~q\,
	combout => \inst7~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\T~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: LCCOMB_X12_Y1_N16
\inst14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (((!\inst|inst2~q\) # (!\inst|inst1~q\)) # (!\inst|inst3~q\)) # (!\inst|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst2~q\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X12_Y1_N30
\inst19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\inst10|inst3~0_combout\ & ((\OUT~input_o\) # ((\T~input_o\ & \inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \inst14~0_combout\,
	datac => \inst10|inst3~0_combout\,
	datad => \OUT~input_o\,
	combout => \inst19~0_combout\);

ww_close <= \close~output_o\;

\ww_open\ <= \open~output_o\;
END structure;


