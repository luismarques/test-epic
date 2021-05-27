void fn1(void);

void fn2(void) {
    fn1();
}

void (*fn3(void))(void) {
    return &fn1;
}

void (*const fn_var)(void) = &fn1;
