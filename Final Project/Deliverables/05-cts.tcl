#############################################################################################
# Clock Tree Synthesis
#############################################################################################

setCTSMode -traceDPinAsLeaf true

specifyClockTree -file inputs/RegFile.cts
ckSynthesis -report results/RegFile.ctsrpt \
            -macromodel temp/macromodel.ctsmdl -fix_added_buffers

saveClockNets -output temp/clock_nets.ctsntf

global clockTreeExists
set clockTreeExists 1

saveNetlist results/verilog/RegFile.cts.v
saveDesign ./DBS/05-cts.enc -relativePath -compress

# Report Timing
trialRoute -highEffort 
extractRC

setAnalysisMode -checkType hold -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -hold -outDir ./results/timing/05-cts-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/05-cts_hold.rpt

setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir ./results/timing/05-cts-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/05-cts_setup.rpt

summaryReport  -outfile results/summary/05-cts.rpt

