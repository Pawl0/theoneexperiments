bash ./processAndPlotEpidemicOverheadXTTL.sh
bash ./processAndPlotProphetOverheadXTTL.sh
bash ./processAndPlotSnWOverheadXTTL.sh
cd ../python/
python overheadAvg.py TTL 100 300 500 700 900
cd ../bash/