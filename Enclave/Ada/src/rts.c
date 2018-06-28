#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void *__gnat_malloc(size_t size) {
    return malloc(size);
}

void __gnat_free(void *ptr) {
    free(ptr);
}

void __gnat_unhandled_terminate() {
    puts("error: unhandled exception");
    abort();
}

void *allocate_secondary_stack(void *thread, size_t size) {
    (void) thread;
    return malloc(size);
}

void *sgx_thread_self();

void *get_thread() {
    return sgx_thread_self();
}

void raise_ada_exception(char *name, char *message) {
    printf("%s: %s\n", name, message);
    abort();
}

void warn_unimplemented_function(const char *message) {
    (void) message;
}
