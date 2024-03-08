#include<iostream>

int CommonYerMonthDays[12]={31,28,31,30,31,30,31,31,30,31,30,31};
int LeapYearMonthDays[12]={31,29,31,30,31,30,31,31,30,31,30,31};

int isLeap(int Year)
{
    if((Year%4==0 && Year%100!=0)||Year%400==0)
    {
        return 1;
    }
    return 0;
}

int main()
{
    int Year,Month,Day;
    scanf("%d%d%d",&Year,&Month,&Day);
    if(isLeap(Year))
    {
        printf("%d年%d月%d日，是这一年中的第",Year,Month,Day);
        int temp=0;
        for(int i=0;i<Month-1;i++)
        {
            // if(i==0)
            // {
            //     break;
            // }
            temp+=LeapYearMonthDays[i];
            printf("%d+",LeapYearMonthDays[i]);
        }
        printf("%d",Day);
        temp+=Day;
        printf("=%d天",temp);
    }
    else
    {
        printf("%d年%d月%d日，是这一年中的第",Year,Month,Day);
        int temp=0;
        for(int i=0;i<Month-1;i++)
        {
            // if(i==0)
            // {
            //     break;
            // }
            temp+=CommonYerMonthDays[i];
            printf("%d+",CommonYerMonthDays[i]);
        }
        printf("%d",Day);
        temp+=Day;
        printf("=%d天",temp);
    }
}