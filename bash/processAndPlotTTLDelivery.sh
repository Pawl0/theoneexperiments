bash ./processAndPlotEpidemicDeliveryXTTL.sh
bash ./processAndPlotProphetDeliveryXTTL.sh
bash ./processAndPlotSnWDeliveryXTTL.sh
cd ../python/
python deliveryAvg.py TTL 100 300 500 700 900
cd ../bash/