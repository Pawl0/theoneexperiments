bash ./processAll.sh overhead_ratio
mv *overhead_ratio.txt python-average/overhead/
cd python-average
python overheadAvg.py