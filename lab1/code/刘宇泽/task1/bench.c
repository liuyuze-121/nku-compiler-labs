#include <stdio.h>
#include <stdint.h>
#include <time.h>

static volatile uint64_t sink;

int main(void)
{
    int n, trials;

    if (scanf("%d%d", &n, &trials) != 2 || n < 1 || trials < 1)
        return 1;

    clock_t start = clock();

    for (int k = 0; k < trials; ++k)
    {
        int a = 0, b = 1, i = 1, t;

        while (i < n)
        {
            t = b;
            b = a + b;
            a = t;
            i = i + 1;
        }

        sink += (uint64_t)(unsigned int)b;
    }

    clock_t end = clock();
    double total = (double)(end - start) / CLOCKS_PER_SEC;

    printf("n=%d trials=%d total=%.6f average=%.9f sink=%llu\n",
           n, trials, total, total / trials,
           (unsigned long long)sink);

    return 0;
}