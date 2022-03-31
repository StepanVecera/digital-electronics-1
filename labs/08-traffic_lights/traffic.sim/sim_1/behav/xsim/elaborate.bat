@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Mar 31 12:02:57 +0200 2022
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto c3f321b7fed348dd815df8d815818bd5 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_tlc_behav xil_defaultlib.tb_tlc -log elaborate.log"
call xelab  -wto c3f321b7fed348dd815df8d815818bd5 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_tlc_behav xil_defaultlib.tb_tlc -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
