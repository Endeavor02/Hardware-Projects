#!/bin/sh

# 
# Vivado(TM)
# route_design_reports.sh: a Vivado-generated reports generation script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Vivado/Vivado/2020.1/ids_lite/ISE/bin/nt64;D:/Vivado/Vivado/2020.1/ids_lite/ISE/lib/nt64:D:/Vivado/Vivado/2020.1/bin
else
  PATH=D:/Vivado/Vivado/2020.1/ids_lite/ISE/bin/nt64;D:/Vivado/Vivado/2020.1/ids_lite/ISE/lib/nt64:D:/Vivado/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/jblan/Documents/GitHub/Hardware-Projects/Processor Design/Processor.runs/impl_1'
cd "$HD_PWD"

HD_LOG=route_design_reports.log
/bin/touch $HD_LOG

ISEStep="./ISEWrapReports.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -m64 -nolog -nojournal -notrace -mode batch -product Vivado -source Processor_reports.tcl -tclargs route_design