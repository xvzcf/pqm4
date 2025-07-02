# Formosa ML-DSA lowram implementation benchmarks

Stack-usage and performance benchmarks using the pqm4 project of the
formosa-crypto stack-optimized `lowram` implementation of ML-DSA for the arm-m4
architecture.

# Stack-usage benchmarking

0. Run `make PLATFORM=mps2-an386 IMPLEMENTATION_PATH=crypto_sign/formosa-ml-dsa-65/lowram`
1. Run `qemu-system-arm -M mps2-an386 -nographic -semihosting -kernel elf/crypto_sign_formosa-ml-dsa-65_lowram_stack.elf`

# Performance benchmarking 

We assume the use of a nucleo-l4r5zi board that is connected via USB to a computer
running Linux.

0. Run `make PLATFORM=nucleo-l4r5zi IMPLEMENTATION_PATH=crypto_sign/formosa-ml-dsa-65/lowram`

1. Make sure you have [OpenOCD](https://openocd.org/) installed.

2. Using `dmesg` (or simply listing /dev before and after the board is connected),
figure out what device file denotes the serial interface to the board; this could
be `/dev/ttyUSB0` or `/dev/ttyACM0` for example

3. Replace line 9 of the `hostside/host_unidirectional.py` script with the filename
identified in the previous step, and then run this script.

4. In the project root directory, flash the benchmarking binary using the following command:

```
openocd -f st_nucleo_l4r5.cfg -f flash-formosa-lowram.cfg
```

Output should be printed to the standard output of `hostside/host_unidirectional.py`.

# Code-size reporting

Use `arm-none-eabi-size`.
