extern const int ro_var_extern;
const int ro_var_noinit;
const int ro_var_init_zero = 0;
static const int ro_var_init = 7;

int f_ro_var_extern(void) {
    return ro_var_extern;
}

int f_ro_var_noinit(void) {
    return ro_var_noinit;
}

int f_ro_var_init_zero(void) {
    return ro_var_init_zero;
}

int f_ro_var_init(void) {
    return ro_var_init;
}
