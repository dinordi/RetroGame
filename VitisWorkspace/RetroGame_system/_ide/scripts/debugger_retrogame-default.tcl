# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\github\RetroGame\VitisWorkspace\RetroGame_system\_ide\scripts\debugger_retrogame-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\github\RetroGame\VitisWorkspace\RetroGame_system\_ide\scripts\debugger_retrogame-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183A3874EA" && level==0 && jtag_device_ctx=="jsn-Basys3-210183A3874EA-0362d093-0"}
fpga -file C:/github/RetroGame/VitisWorkspace/RetroGame/_ide/bitstream/Videokaart_full.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/github/RetroGame/VitisWorkspace/Videokaart_full/export/Videokaart_full/hw/Videokaart_full.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/github/RetroGame/VitisWorkspace/RetroGame/Debug/RetroGame.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
