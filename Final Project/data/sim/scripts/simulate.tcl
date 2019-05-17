vsim -novopt tb_16bitRegFile 
add wave -radix hex {sim:/tb_16bitRegFile/addressA} {sim:/tb_16bitRegFile/addressB} {sim:/tb_16bitRegFile/addressIn} {sim:/tb_16bitRegFile/dataIn} {sim:/tb_16bitRegFile/clk} {sim:/tb_16bitRegFile/reset} {sim:/tb_16bitRegFile/write} {sim:/tb_16bitRegFile/outA} {sim:/tb_16bitRegFile/outB} 
restart -f ; run 100 ns

