# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\github\RetroGame\VitisWorkspace\RetroGame2_system\_ide\scripts\debugger_retrogame2-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\github\RetroGame\VitisWorkspace\RetroGame2_system\_ide\scripts\debugger_retrogame2-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183A3874EA" && level==0 && jtag_device_ctx=="jsn-Basys3-210183A3874EA-0362d093-0"}
fpga -file C:/github/RetroGame/VitisWorkspace/RetroGame2/_ide/bitstream/Videokaart_full2.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/github/RetroGame/VitisWorkspace/Videokaart_full2/export/Videokaart_full2/hw/Videokaart_full2.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/github/RetroGame/VitisWorkspace/RetroGame2/Debug/RetroGame2.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
