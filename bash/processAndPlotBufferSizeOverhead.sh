bash ./processAndPlotEpidemicOverheadXBufferSize.sh
bash ./processAndPlotProphetOverheadXBufferSize.sh
bash ./processAndPlotSnWOverheadXBufferSize.sh
cd ../python/
python overheadAvg.py BufferSize 5 15 25 35 45
cd ../bash/