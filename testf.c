#include <stdio.h>

unsigned long long factorial(int num) {
    unsigned long long fact = 1;
    for (int i = 1; i <= num; i++) {
        fact *= i;
    }
    return fact;
}

int main() {
    int n;
    printf("请输入 n 的值：");
    scanf("%d", &n);

    int m = 0;
    unsigned long long sum = 0;
    while (sum < n) {
        m++;
        sum += factorial(m);
    }

    printf("满足不等式的最大 m 值为：%d\n", m - 1);

    return 0;
}
