bash ./processAndPlotEpidemicLatencyXBufferSize.sh
bash ./processAndPlotProphetLatencyXBufferSize.sh
bash ./processAndPlotSnWLatencyXBufferSize.sh
cd ../python/
python latencyAvg.py BufferSize 5 15 25 35 45
cd ../bash/