import matplotlib.pyplot as plt

X=[12,13,14,15,16,18,20,22,24,26]
Y=[52.0,55.0,58.0,61.0,65.0,70.0,75.0,80.0,85.0,91.0]

averageX=sum(X)/len(X)
averageY=sum(Y)/len(Y)
sumXY=0
sumXX=0
for i,j in zip(X,Y):
    sumXY+=i*j
    sumXX+=i**2
k=(sumXY-len(X)*averageX*averageY)/(sumXX-len(X)*averageX**2)
b=averageY-k*averageX

x=[0,30]
y=[j*k+b for j in x]
plt.figure()
plt.scatter(X,Y)
plt.xlabel('mm')
plt.ylabel('kv')
plt.plot(x,y)
if(b>0):
    plt.title("y={:.2f}*x+{:.2f}".format(k,b))
elif(b==0):
    plt.title("y={:.2f}*x".format(k,b))
else:
    plt.title("y={:.2f}*x-{:.2f}".format(k,b))
plt.xlim(0,30)
plt.ylim(y)
plt.xticks(range(0,30,2))
plt.show()
