
# global vars:
set defOutLefDNR 1
set defOutLefVia 1
set lefDefOutVersion 5.5

exec rm -rf temp
exec mkdir temp
exec rm -rf results
exec mkdir results
exec mkdir results/summary
exec mkdir results/timing
exec mkdir results/verilog

# Set top level module
set TOP RegFile

# Setting timing analysis report precision for caps and delays
set_global report_precision 5

# Read in libraries and verilog code
loadConfig   inputs/$TOP.conf

# Set Encounter in CTE mode: necessary for checkTA, reportTA
setCteReport

saveDesign ./DBS/01-importDesign.enc -relativePath -compress

# Report Timings (no net loads, quite optimistic)
setAnalysisMode -analysistype single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir results/timing/01-importDesign-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/01_Timing.rpt

summaryReport -outfile results/summary/01-importDesign.rpt


