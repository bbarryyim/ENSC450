\rm -rf work

vlib work
vmap work work

vcom ../vhdl/SingleRegister.vhd
vcom ../vhdl/16bitRegFile.vhd
vcom -novopt ../vhdl/tb_16bitRegFile.vhd
