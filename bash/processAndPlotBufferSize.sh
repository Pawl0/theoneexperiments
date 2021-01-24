rm -rf ../python/epidemic/bufferSize/latency/*.txt
rm -rf ../python/prophet/bufferSize/latency/*.txt
rm -rf ../python/snw/bufferSize/latency/*.txt
rm -rf ../python/epidemic/bufferSize/overhead/*.txt
rm -rf ../python/snw/bufferSize/overhead/*.txt
rm -rf ../python/prophet/bufferSize/overhead/*.txt
rm -rf ../python/prophet/bufferSize/delivery/*.txt
rm -rf ../python/snw/bufferSize/delivery/*.txt
rm -rf ../python/epidemic/bufferSize/delivery/*.txt
bash ./processAndPlotBufferSizeOverhead.sh
bash ./processAndPlotBufferSizeDelivery.sh
bash ./processAndPlotBufferSizeLatency.sh