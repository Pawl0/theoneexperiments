import os
import pathlib
import matplotlib.pyplot as plt 

os.chdir(os.getcwd()+"/delivery")


directory = os.fsencode(os.getcwd())

print(directory)

medias = []
for file in sorted(os.listdir(directory)):
     filename = os.fsdecode(file)
     
     if filename.endswith("delivery_prob.txt"): 
         valores = []
         with open(filename,'r') as f:
            valores[:] = [float(x) for x in f.readlines()]
            medias.append(sum(valores)/len(valores))
     else:
         continue

print(medias)

# x axis values 
x = [100,300,500,700,900] 
# corresponding y axis values 
y = medias 
  
# plotting the points  
plt.plot(x, y) 
  
# naming the x axis 
plt.xlabel('TTL') 
# naming the y axis 
plt.ylabel('delivery probability') 
  
# giving a title to my graph 
plt.title('Delivery probability x TTL') 
  
# function to show the plot 
plt.show() 