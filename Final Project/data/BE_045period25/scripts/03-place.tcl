# Place standard cells

placeDesign
checkPlace

saveNetlist results/verilog/RegFile.place.v
saveDesign ./DBS/03-place.enc -relativePath -compress

# Trial Route to have sensible wire delays for timing checks
trialRoute

# Extract RC
setExtractRCMode -engine preRoute 
setDesignMode -process 90
extractRC

# Report Timing (TrialRoute net load)
setAnalysisMode -checktype setup -skew true -clockPropagation sdcControl
# Report Timings (no net loads, quite optimistic)
setAnalysisMode -analysistype single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir results/timing/03-place-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/03-place.setup.rpt

summaryReport  -outfile results/summary/03-place.rpt






