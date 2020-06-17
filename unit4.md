First we create a working file and download mega65 with git clone. We first check out the parts that need to be compiled. Make sure there is the latest file I need git pull。

![image-20200617202124998](C:\Users\huanghaozhe\AppData\Roaming\Typora\typora-user-images\image-20200617202124998.png)

During this time I found that I need to download make. Because I need fpgajtag installation to use the improved toolchain. The make process also needs to use the make statement.

The following is what I need and install in the compilation:

I need to install gcc (for compiling c. )
I need to install make (for makefile)
I need to install python (for some scripts)
I need to install libpng-dev (for image manipulation)
I need to install cbmconvert (make D81 image)
I also need to install the latest version of Xilinx Vivado WebPACK version with a valid license

Next I need to run the command in the mega65-core directory to wake up the compilation.

*src/tools/monitor_load -b bin/nexys4ddr.bit -k bin/HICKUP.M65*