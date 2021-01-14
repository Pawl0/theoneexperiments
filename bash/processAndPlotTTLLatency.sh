bash ./processAndPlotEpidemicLatencyXTTL.sh
bash ./processAndPlotProphetLatencyXTTL.sh
bash ./processAndPlotSnWLatencyXTTL.sh
cd ../python/
python latencyAvg.py TTL 100 300 500 700 900
cd ../bash/