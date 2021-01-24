# Change directory to the ONE src
cd ../../src/
# Backups the original default_settings file
cp default_settings.txt default_settings_old.txt
# Sets the number of simulations to run
simulations=10
# Start each simulation with different values of the parameters passed
ls
for i in $3 $4 $5 $6
do
    ./one.bat -b $simulations $1-$2-$i-settings.txt
done

mv reports/*.txt ../theoneexperiments/reports/$1/$2/