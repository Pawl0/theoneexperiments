bash ./processAll.sh delivery_prob
mv *delivery_prob.txt python-average/delivery/
cd python-average
python deliveryAvg.py