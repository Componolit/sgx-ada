#include <stdarg.h>
#include <stdio.h>

#include "Enclave.h"
#include "Enclave_t.h"
#include "Ada_Interface.h"

void puts(const char *s) {
    char buf[BUFSIZ] = {'\0'};
    snprintf(buf, BUFSIZ, "%s\n", s);
    ocall_print_string(buf);
}

void printf(const char *fmt, ...)
{
    char buf[BUFSIZ] = {'\0'};
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, BUFSIZ, fmt, ap);
    va_end(ap);
    ocall_print_string(buf);
}

void ecall_adamain() {
    ada_init();
    ada_main();
}
