#include <stdio.h>

// FIB_SINGLE_COMMENT

/* FIB_BLOCK_COMMENT */

#define FIB_A0 0
#define FIB_B0 1
#define FIB_I0 1
#define FIB_NEXT(x) ((x) + 1)

int main()
{
    int a, b, i, t, n;

    a = FIB_A0;
    b = FIB_B0;
    i = FIB_I0;

    scanf("%d", &n);

    printf("%d\n", a);
    printf("%d\n", b);

#ifdef FIB_DEBUG
    printf("debug\n");
#endif

    while (i < n)
    {
        t = b;
        b = a + b;

        printf("%d\n", b);

        a = t;
        i = FIB_NEXT(i);
    }

    return 0;
}