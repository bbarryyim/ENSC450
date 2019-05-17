# fcampi@sfu.ca July 2013
# Simple Synthesis example

set TOP assignment1

# -----------------------------
# Specifying Technology Libraries Design constraints
# -----------------------------

# We use SLOW timing libraries for worst case timing estimation and fix timing (Setup) in worst possible case
# Please note (1): TARGET_LIBRARY    libraries that can be used for synthesis, so the tool can CHOOSE TO USE THEM to implement your VHDL
#                  LINK_LIBRARY      libraries than can be linked by the tool, that is used by the designer in his design, but not CHOSEN by the tool
#                                    Example: Memory blocks, or a pre-layouted block or a standard cell explicitly defined by the designer in HDL 
#                  SYNTHETIC_LIBRARY Synthetic or DesignWare libraries. These slibraries are technology-independent, microarchitecture-level 
#                                    design libraries offered by synopsys and providing pre-packaged implementations for various IP blocks.
#                                    They differ from target libraries in that they are technology independent and contain operators 
#                                    (ex. Multiplier, adder etc) instead of cells
# Please Note (2) : Sometimes, for simplicity, these variables are set in a configuration file (.synopsys_dc.setup that is read by dc_shell at init

set search_path    "/ensc/fac1/fcampi/Tutorials/rgb2grayscale/syn_180/DB"

# Target library is the library that is used by the synthesis tool 
# in order to map the behavioral RTL logic that is being synthesized
set target_library "tpz973gwc.db vst_n18_sc_tsm_c4_wc.db"

# The synthetic library variable specified pre-designed technology independent architectures pre-packaged by Synopsys
set synthetic_library [list dw01.sldb dw02.sldb dw03.sldb \
                            dw04.sldb dw05.sldb  dw07.sldb \
			    dw_foundation.sldb ]  

# The link library must contain ALL CELLS used in the design.cOther than the two above, it shall include any IO cell, memory cell, 
# or other cell/block that the user wishes to include in the design from other sources
set link_library  [concat $target_library $synthetic_library]


# -----------------------------
# Running Logic Synthesis
# -----------------------------

# Reading input VHDL File(s): This steps only parses VHDL determining syntax errors, but the Synthesis process is not performed yet
analyze -format vhdl ../vhdl/assignment1.vhd

# Logic Synthesis
elaborate $TOP 

# The link command will resolve dependencies in the HDL hierarchy, so that if a sub-module in the hierarchy is missing or badly defined, 
# the tool will exit with an error.
# The uniquify command will force the tool to consider "independently" different instances of the same HDL entity. 
# Suppose that we have 120 FFs in our design: some of them will have high fanout, some low, some tight timing constraints, some loose. 
# Each must be synthesized independently, not each FF will be mapped on the same cell!

current_design $TOP
link
uniquify

# -----------------------------
# Setting Design constraints
# -----------------------------

# After Logic synthesis has been performed, the logic functionality of the HDL is known. With the following step, 
# the functionality is mapped over the available standard cells, in order to produce a netlist that will represent 
# the technology implementation of the HDL functionality
# Since as we know the synthesis process is driven by our CONSTRAINTS, before we perform technology mapping we need to specify the constraints 
# to our design. In particular, we must impose TIMINGS.
# If we specify nothing, the tool will produce the smallest AREA not considering timing

## Boundary Conditions
set_input_transition -max       1         [all_inputs]
set_load                        5         [all_outputs]

## Timing Constraints
# Establishing clock period:  Since clock is ideal, we don't want the tool to optimize the clk net so we set it as "dont touch"
create_clock -name CLK -period 20 -waveform {0 10.0} {clk}
set_dont_touch_network CLK  

# Delays imposed by the communication to/from other blocks in the system. 
# This number should be given to us by the designers of other blocks or by who is designing the TOP IC.
set_input_delay  0.8 -max -clock CLK  [all_inputs]
set_output_delay 0.8 -max -clock CLK  [all_outputs]

# There is no reason to make the reset line so fast to complete in one clock
#set_max_delay 20 -from resetn

# -----------------------------
# Running Technology Mapping
# ----------------------------- 

current_design $TOP
compile -map_effort high -incremental_mapping

# -----------------------------
# Producing Results
# -----------------------------

# Writing out reports: Used cells (Area), Timing, Power
report_reference  >  ./results/$TOP.rpt
report_timing    -transition_time -capacitance >> ./results/$TOP.rpt
report_power     >> ./results/$TOP.rpt

# Writing out final netlist (Verilog/ddc) and relative constraints
write -f ddc -hierarchy  -output ./results/$TOP.ddc
write_sdc -nosplit               ./results/$TOP.sdc
write -format verilog -hier -o   ./results/$TOP.ref.v

exit
