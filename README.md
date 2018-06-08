# Protecting Ada applications with Intel SGX

This sample code demonstrates how an Ada application can be executed inside of an SGX enclave. It is based on Intel's SGX SDK for Linux.

## Building/Executing

1. Install Intel(R) SGX SDK for Linux* OS
2. Make sure your environment is set:
    `$ source ${sgx-sdk-install-path}/environment`
3. Build the project with the prepared Makefile:
    - Hardware Mode, Debug build:
        - `$ make`
    - Hardware Mode, Pre-release build:
        - `$ make SGX_PRERELEASE=1 SGX_DEBUG=0`
    - Hardware Mode, Release build:
        - `$ make SGX_DEBUG=0`
    - Simulation Mode, Debug build:
        - `$ make SGX_MODE=SIM`
    - Simulation Mode, Pre-release build:
        - `$ make SGX_MODE=SIM SGX_PRERELEASE=1 SGX_DEBUG=0`
    - Simulation Mode, Release build:
        - `$ make SGX_MODE=SIM SGX_DEBUG=0`
4. Execute the binary directly:
    - `$ ./app`
5. Remember to "make clean" before switching build mode
