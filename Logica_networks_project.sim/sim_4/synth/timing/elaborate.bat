@echo off
set xv_path=C:\\Users\\marco\\.Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 2bdbe6e6b3f0423d93d794b6b9e6a435 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot project_tb_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.project_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
