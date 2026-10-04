struct A { int x; };
struct B { int y; };

int f(int x)
{
    return x;
}

void g(struct A value)
{
    (void)value;
}

int conflict(void)
{
    return 0;
}

int conflict(void)
{
    return 1;
}

int main(void)
{
    int a;
    struct B b;

    b = a;
    f();
    g(a);
    unknown = 1;

    int duplicate = 0;
    int duplicate = 1;

    break;
    return 0;
}