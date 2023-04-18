import turtle as tl
import random as rd
import math

tl.setup(1223,1223)
tl.speed(0)
colors=["red","blue","green","yellow","black"]
r=0
tl.hideturtle()
for i in range(5):
    r=r+60
    tl.penup()
    tl.goto(0,-r)
    tl.pencolor(colors[i])
    tl.pensize(i)
    tl.pendown()
    tl.circle(r)

x=rd.randrange(-400,400)
y=rd.randrange(-400,400)
tl.penup()
tl.goto(x,y)
tl.pendown()
tl.dot(5,'red')
if math.sqrt(x**2+y**2)>300:
    print("涓嶅湪鍚屽績鍦嗕腑")
elif math.sqrt(x**2+y**2)<=60:
    print("鍦ㄧ涓€涓渾涓�")
else:
    print("鍦▄}涓拰绗瑊}涓渾涔嬮棿".format(int(math.sqrt(x**2+y**2)/60),int(math.sqrt(x**2+y**2)/60)+1))
tl.done()

# import numpy as np
# import math

# def f(x):
#     y1=np.sqrt(3-(x**2)/2)
#     return y1

# def f1(x):
#     y1=np.sqrt(x**2-1)
#     return y1

# def f2(x):
#     y1=(2-x)/5
#     return y1

# def f3(x):
#     y1=-2*x**2-1
#     return y1

# n=10000000
# x_min,x_max=-6,6
# y_min,y_max=-6,6

# x = np.random.uniform(x_min, x_max, n) 
# y = np.random.uniform(y_min, y_max, n)

# res=sum(np.where((-f(x)<y)&(y<f(x))&(-f1(x)>y)&(f1(x)<y)&(y<f2(x))&(y>f3(x)),-6,6))

# integral = res / n
# print("鎵€鍥村浘褰㈤潰绉负?",integral)

# import random as rd

# temp=rd.choice(range(1,20))

# for i in range(5):
#     indata=eval(input("杈撳叆1鈥�100涔嬮棿5鐨勫€嶆暟?"))
#     if indata>temp*5:
#         print("杈撳叆鐨勬暟澶т簡")
#     elif indata<temp*5:
#         print("杈撳叆鐨勬暟灏忎簡")
#     else:
#         print("鐚滃浜嗭紝灏辨槸{}".format(temp*5))
#         break
    