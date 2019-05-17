#############################################################################################
# Post Placement Timing aware optimization
#############################################################################################

initECO ipo1.txt

trialRoute -highEffort

setExtractRCMode -engine preRoute
extractRC
optDesign -preCTS

if {[isDesignOKForPlace] != 1} {fixDRCViolation -maxTran -maxCap -maxFanout}

endECO
cleanupECO

saveNetlist results/verilog/RegFile.postplaceopt.v
saveDesign ./DBS/04-postPlaceOpt.enc -relativePath -compress

setAnalysisMode -analysistype single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir ./results/timing/04-postPlaceOpt-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/04-postPlaceOpt.rpt

summaryReport  -outfile results/summary/04_postPlaceOpt.rpt

