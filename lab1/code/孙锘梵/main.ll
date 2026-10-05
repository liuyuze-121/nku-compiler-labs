declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)

define i32 @main() {
entry:
    %n = alloca i32
    %i = alloca i32
    %f = alloca i32
    %tmp = call i32 @getint()
    store i32 %tmp, i32* %n
    store i32 2, i32* %i
    store i32 1, i32* %f
    br label %loop

loop:
    %i_val = load i32, i32* %i
    %n_val = load i32, i32* %n
    %cond = icmp sle i32 %i_val, %n_val
    br i1 %cond, label %body, label %end

body:
    %i_cur = load i32, i32* %i
    %f_cur = load i32, i32* %f
    %f_new = mul nsw i32 %f_cur, %i_cur
    store i32 %f_new, i32* %f
    %i_new = add nsw i32 %i_cur, 1
    store i32 %i_new, i32* %i
    br label %loop

end:
    %result = load i32, i32* %f
    call void @putint(i32 %result)
    call void @putch(i32 10)
    ret i32 0
}
