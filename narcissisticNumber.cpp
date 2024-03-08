#include <iostream>
#include <cmath>

int main()
{
    int cn=0;
    for (int i=100;i<1000;i++)
    {
        if(i==(pow(i%10,3)+std::pow((i%100)/10,3)+std::pow((i/100),3)))
        {
            cn++;
            std::cout<<i<<" ";
        }
    }

    std::cout<<std::endl<<"一共有"<<cn<<"个水仙花数";
}