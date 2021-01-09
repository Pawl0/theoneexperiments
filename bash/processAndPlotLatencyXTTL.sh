bash ./processAll.sh latency_avg
mv *latency_avg.txt python-average/latency/
cd python-average
python latencyAvg.py