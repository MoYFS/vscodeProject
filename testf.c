#include <stdio.h>

int main() {
int a[3],temp;
scanf("%d%d%d",&a[0],&a[1],&a[2]);
// if(a>b)
// {
//     temp=a;
//     a=b;
//     b=temp;
// }
// if(a>c)
// {
//     temp=a;
//     a=c;
//     c=temp;
// }
// if(b>c)
// {
//     temp=b;
//     b=c;
//     c=temp;
// }
for (int i=0;i<2;i++)
{
    for(int j=i;j<2;j++)
    {
        if(a[j]>a[j+1])
        {
            temp=a[j];
            a[j]=a[j+1];
            a[j+1]=temp;
        }
    }
}
printf("%d,%d,%d",a[0],a[1],a[2]);
return 0;
}
