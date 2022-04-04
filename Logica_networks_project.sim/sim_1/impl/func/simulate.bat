@echo off
set xv_path=C:\\Users\\marco\\.Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xsim project_tb_func_impl -key {Post-Implementation:sim_1:Functional:project_tb} -tclbatch project_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
