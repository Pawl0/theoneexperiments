import os
import sys
import pathlib
import matplotlib.pyplot as plt 

param = sys.argv[1]

def calcAverages(algorithm):
    averages = []
    # changes directory to given path
    os.chdir(os.getcwd()+"/"+algorithm+"/"+param+"/latency")
    os.getcwd()
    directory = os.fsencode(os.getcwd())
    print(directory)
    sortedDirList = sorted(os.listdir(directory))
    sortedDirList.insert(0,sortedDirList[-1])
    sortedDirList.pop()
    print("SortedDirList: ",sortedDirList)
    for file in sortedDirList:
        filename = os.fsdecode(file)
        
        if filename.endswith("latency_avg.txt"): 
            valores = []
            with open(filename,'r') as f:
                valores[:] = [float(x) for x in f.readlines()]
                averages.append(sum(valores)/len(valores))
        else:
            continue
    
    print(averages)
    os.chdir("../../../")
    return averages
    

averagesEpidemic = calcAverages("epidemic")
averagesProphet = calcAverages("prophet")
averagesSnW = calcAverages("snw")

# x axis values 
x1 = x2 = x3 = [sys.argv[2],sys.argv[3],sys.argv[4],sys.argv[5],sys.argv[6]] 
# corresponding y axis values 
y1 = averagesEpidemic 
y2 = averagesProphet 
y3 = averagesSnW 
  
# plotting the points per algorithm 
plt.plot(x1, y1, label="Epidêmico") 
plt.plot(x2, y2, label="Prophet") 
plt.plot(x3, y3, label="SnW") 
  
# naming the x axis 
plt.xlabel(sys.argv[1]) 
# naming the y axis 
plt.ylabel('latency avg') 
  
# graph title
plt.title('Atraso Médio') 

# graph legend
plt.legend()
  
# function to save the plot 
plt.savefig('./graphs/latency_'+param+'.png')