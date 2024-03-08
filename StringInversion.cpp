#include<iostream>
#include <string.h>

void reverse(char* str ,int len)
{
    char temp[len-1];
    strcpy(temp,str);
    for (int i=0;i<=len-1;i++)
    {
        str[i]=temp[len-i-1];
    }
}

int main()
{
    char bur[]="good good study day day up!";
    std::cout<<bur<<std::endl;
    reverse(bur,strlen(bur));
    std::cout<<bur;
}