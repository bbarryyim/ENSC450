# Create Floorplan (45 nm)

# floorPlan -su <aspectRatio> [<stdCellDensity> [<coreToLeft> <coreToBottom> <coreToRight> <coreToTop>]]

floorPlan -su 1  0.9  4 4 4 4   

editPin -fixedPin 1 -snap TRACK -side Top -unit TRACK -layer 2 -spreadType center -spacing 5.0 \
        -pin {{addressA[0]} {addressA[1]} {addressA[2]} {addressA[3]} {addressA[4]} {addressB[0]} {addressB[1]} {addressB[2]} {addressB[3]} {addressB[4]} {dataIn[0]} {dataIn[1]} {dataIn[2]} {dataIn[3]} {dataIn[4]} {dataIn[5]} {dataIn[6]} {dataIn[7]} {dataIn[8]} {dataIn[9]} {dataIn[10]} {dataIn[11]} {dataIn[12]} {dataIn[13]} {dataIn[14]} {dataIn[15]} {addressIn[0]} {addressIn[1]} {addressIn[2]} {addressIn[3]} {addressIn[4]} clk reset write }
editPin -fixedPin 1 -snap TRACK -side Bottom -use TIELOW -unit TRACK -layer 2 -spreadType center -spacing 10.0 \
        -pin {{outA[0]} {outA[1]} {outA[2]} {outA[3]} {outA[4]} {outA[5]} {outA[6]} {outA[7]} {outA[8]} {outA[9]} {outA[10]} {outA[11]} {outA[12]} {outA[13]} {outA[14]} {outA[15]} {outB[0]} {outB[1]} {outB[2]} {outB[3]} {outB[4]} {outB[5]} {outB[6]} {outB[7]} {outB[8]} {dataIn[9]} {outB[10]} {outB[11]} {outB[12]} {outB[13]} {outB[14]} {outB[15]}}

# Building a Power Ring for Vdd / Vdds, extending top/bottom segments to create pins
# From the LEF file we know that M9 and M10 are the highest metals, and that the min width of the M9 M10 metals
# is 0.8. We need to make this ring a multiple of 0.8.Since the area is small, we dont expect huge consumption,
# we keep it at pitch. 
# Note that in the foorplan we must reserve enough space between core (rows) and pins to build rings 

addRing -width_left 0.8 -width_bottom 0.8 -width_top 0.8 -width_right 0.8 \
        -spacing_bottom 0.8 -spacing_top 0.8 -spacing_left 0.8 -spacing_right 0.8 \
        -layer_top metal9 -layer_bottom metal9 -layer_left metal10 -layer_right metal10 \
        -lb 1 -lt 1 -rb 1 -rt 1 -nets {VDD VSS}

# Note:for such a small design it is not necessary to build a whole 
addStripe -direction vertical \
          -set_to_set_distance 9.6     \
          -spacing 4 \
          -layer metal10 -width 0.8 -nets {VSS VDD } 
          
sroute -noPadPins -noPadRings -routingEffort allowShortJogs  -nets {VDD VSS}

defOut -floorplan -noStdCells results/RegFile_floor.def

saveDesign ./DBS/02-floorplan.enc -relativePath -compress

summaryReport -outfile results/summary/02-floorplan.rpt
