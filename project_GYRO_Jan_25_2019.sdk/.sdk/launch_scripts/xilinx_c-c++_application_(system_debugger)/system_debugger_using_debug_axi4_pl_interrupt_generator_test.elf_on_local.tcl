connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
loadhw -hw C:/Xilinx/Vivado/projects/project_GYRO_Jan_25_2019/project_GYRO_Jan_25_2019.sdk/design_1_wrapper_hw_platform_4/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
configparams force-mem-access 0
