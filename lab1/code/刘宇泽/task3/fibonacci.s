    .option nopic
    .attribute arch, "rv64gc"
    .attribute unaligned_access, 0
    .attribute stack_align, 16

    .section .rodata
    .align 3
.LC0:
    .string "%d"
    .align 3
.LC1:
    .string "%d\n"

    .text
    .align 1
    .globl main
    .type main, @function

main:
    addi sp, sp, -64
    sd ra, 56(sp)
    sd s0, 48(sp)
    sd s1, 40(sp)
    sd s2, 32(sp)
    sd s3, 24(sp)
    sd s4, 16(sp)

    # a = 0, b = 1, i = 1
    li s0, 0
    li s1, 1
    li s2, 1

    # scanf("%d", &n)
    lui a0, %hi(.LC0)
    addi a0, a0, %lo(.LC0)
    addi a1, sp, 8
    call scanf
    lw s4, 8(sp)

    # 输出初始值 a
    lui a0, %hi(.LC1)
    addi a0, a0, %lo(.LC1)
    mv a1, s0
    call printf

    # 输出初始值 b
    lui a0, %hi(.LC1)
    addi a0, a0, %lo(.LC1)
    mv a1, s1
    call printf

.Lloop:
    # if (i >= n) 结束循环
    bge s2, s4, .Lend

    # t = b; b = a + b
    mv s3, s1
    add s1, s0, s1

    # printf("%d\n", b)
    lui a0, %hi(.LC1)
    addi a0, a0, %lo(.LC1)
    mv a1, s1
    call printf

    # a = t; i = i + 1
    mv s0, s3
    addi s2, s2, 1
    j .Lloop

.Lend:
    # return 0
    li a0, 0

    ld ra, 56(sp)
    ld s0, 48(sp)
    ld s1, 40(sp)
    ld s2, 32(sp)
    ld s3, 24(sp)
    ld s4, 16(sp)
    addi sp, sp, 64
    ret

    .size main, .-main
    .section .note.GNU-stack,"",@progbits