bash ./processAndPlotEpidemicDeliveryXBufferSize.sh
bash ./processAndPlotProphetDeliveryXBufferSize.sh
bash ./processAndPlotSnWDeliveryXBufferSize.sh
cd ../python/
python deliveryAvg.py BufferSize 5 15 25 35 45
cd ../bash/