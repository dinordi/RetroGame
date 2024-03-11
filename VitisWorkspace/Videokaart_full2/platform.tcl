# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\github\RetroGame\VitisWorkspace\Videokaart_full2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\github\RetroGame\VitisWorkspace\Videokaart_full2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Videokaart_full2}\
-hw {C:\github\RetroGame\VHDL\VideoKaartMicroBlaze\Videokaart_full2.xsa}\
-out {C:/github/RetroGame/VitisWorkspace}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {Videokaart_full2}
platform generate -quick
platform generate
