
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:062	
463.2232	
185.281Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/utils_1/imports/synth_1/InterfaceController.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2m
kC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/utils_1/imports/synth_1/InterfaceController.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top Videokaart_full -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
34220Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1312.566 ; gain = 441.176
h px� 
�
synthesizing module '%s'638*oasys2
Videokaart_full2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
428@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
threeFlipFlop2e
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
342
ff02
threeFlipFlop2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1498@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
threeFlipFlop2g
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
408@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Dflipflop2a
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/Dflipflop.vhd2
42
FF02
	Dflipflop2g
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
508@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	Dflipflop2c
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/Dflipflop.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Dflipflop2
02
12c
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/Dflipflop.vhd2
118@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Dflipflop2a
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/Dflipflop.vhd2
42
FF12
	Dflipflop2g
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
518@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Dflipflop2a
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/Dflipflop.vhd2
42
FF22
	Dflipflop2g
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
528@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
threeFlipFlop2
02
12g
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
408@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
threeFlipFlop2e
cC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/new/threeFlipFlop.vhd2
342
ff12
threeFlipFlop2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1508@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02~
|C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/clk_wiz_0_stub.v2
62
z02
	clk_wiz_02a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1518@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2�
|C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/clk_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12�
|C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/clk_wiz_0_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
InterfaceController2c
aC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/InterfaceController.vhd2
342
z12
InterfaceController2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1528@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
InterfaceController2e
aC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/InterfaceController.vhd2
468@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
InterfaceController2
02
12e
aC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/InterfaceController.vhd2
468@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
spriteController2`
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
292
z22
spriteController2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1548@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
spriteController2b
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
418@Z8-638h px� 
�
default block is never used226*oasys2b
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
808@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
hpos2b
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
598@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
vpos2b
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
598@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
spriteController2
02
12b
^C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/spriteController.vhd2
418@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Sprite15x15_12�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/Sprite15x15_1_stub.v2
62
z32
sprite15x15_12a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1568@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
Sprite15x15_12
 2�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/Sprite15x15_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Sprite15x15_12
 2
02
12�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/Sprite15x15_1_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sprite31x31_22�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite31x31_2_stub.v2
62
z52
sprite31x31_22a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1578@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
sprite31x31_22
 2�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite31x31_2_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sprite31x31_22
 2
02
12�
�C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite31x31_2_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sprite63x632�
~C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite63x63_stub.v2
62
z62
sprite63x632a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1588@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
sprite63x632
 2�
~C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite63x63_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sprite63x632
 2
02
12�
~C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/sprite63x63_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA2]
[C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/Progh/vga.vhd2
202
z82
VGA2a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
1608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
VGA2_
[C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/Progh/vga.vhd2
308@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

background2
}C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/background_stub.v2
62
z02

background2_
[C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/Progh/vga.vhd2
918@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

background2
 2�
}C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/background_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

background2
 2
02
12�
}C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/.Xil/Vivado-34548-Laptop-Ben-T/realtime/background_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA2
02
12_
[C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/imports/Progh/vga.vhd2
308@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Videokaart_full2
02
12a
]C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/sources_1/new/Videokaart_full.vhd2
428@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1550.543 ; gain = 679.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1550.543 ; gain = 679.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1550.543 ; gain = 679.152
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1432

1550.5432
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2x
tc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
z0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2x
tc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
z0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/Sprite15x15_1/Sprite15x15_1/Sprite15x15_1_in_context.xdc2
z3	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/Sprite15x15_1/Sprite15x15_1/Sprite15x15_1_in_context.xdc2
z3	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2~
zc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/sprite63x63/sprite63x63/sprite63x63_in_context.xdc2
z6	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2~
zc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/sprite63x63/sprite63x63/sprite63x63_in_context.xdc2
z6	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/sprite31x31_2/sprite31x31_2/sprite31x31_2_in_context.xdc2
z5	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/sprite31x31_2/sprite31x31_2/sprite31x31_2_in_context.xdc2
z5	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2{
wc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/background/background/background_in_context.xdc2	
z8/z0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2{
wc:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/background/background/background_in_context.xdc2	
z8/z0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2c
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/constrs_1/new/Constr_videokaart.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2c
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/constrs_1/new/Constr_videokaart.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2a
_C:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.srcs/constrs_1/new/Constr_videokaart.xdc2#
!.Xil/Videokaart_full_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2V
RC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2V
RC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1652.2582
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0372

1652.2582
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
counter_reg2
InterfaceControllerZ8-802h px� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
spriteControllerZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              100 |                               10
h p
x
� 

%s
*synth2
*
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
counter_reg2	
one-hot2
InterfaceControllerZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
spriteControllerZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   10 Bit       Adders := 108   
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 108   
h p
x
� 
F
%s
*synth2.
,	   4 Input   10 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    9 Bit       Adders := 211   
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 214   
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 107   
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 12    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	 105 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    6 Bit        Muxes := 106   
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   3 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	 105 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
W
%s
*synth2?
=DSP Report: Generating DSP addrout3, operation Mode is: A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator addrout3 is absorbed into DSP addrout3.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP addrout0, operation Mode is: C+A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator addrout0 is absorbed into DSP addrout0.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator addrout1 is absorbed into DSP addrout0.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP addrout0, operation Mode is: PCIN+(A:0x0):B+C.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator addrout0 is absorbed into DSP addrout0.
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:51 ; elapsed = 00:00:56 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
k
%s
*synth2S
Q Sort Area is spriteController__GB5 addrout0_2 : 0 0 : 1765 1865 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is spriteController__GB5 addrout0_2 : 0 1 : 100 1865 : Used 1 time 0
h p
x
� 
i
%s
*synth2Q
O Sort Area is spriteController__GB5 addrout3_0 : 0 0 : 560 560 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+-----------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name      | DSP Mapping      | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+-----------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|spriteController | A*B              | 10     | 8      | -      | -      | 18     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|spriteController | C+A*B            | 17     | 14     | 17     | -      | 17     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Videokaart_full  | PCIN+(A:0x0):B+C | 30     | 10     | 10     | -      | -1     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+-----------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:00 ; elapsed = 00:01:05 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:08 ; elapsed = 00:01:12 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:14 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:15 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:15 ; elapsed = 00:01:20 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:16 ; elapsed = 00:01:20 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:16 ; elapsed = 00:01:20 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:16 ; elapsed = 00:01:20 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name      | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|spriteController | A*B         | 10     | 6      | -      | -      | 18     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|spriteController | C+A*B       | 17     | 14     | 17     | -      | 17     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Videokaart_full  | PCIN+A:B+C  | 0      | 10     | -      | -      | 17     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#|2     |Sprite15x15_1 |         1|
h p
x
� 
=
%s
*synth2%
#|3     |sprite31x31_2 |         1|
h p
x
� 
=
%s
*synth2%
#|4     |sprite63x63   |         1|
h p
x
� 
=
%s
*synth2%
#|5     |background    |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
7
%s*synth2
+------+------------+------+
h px� 
7
%s*synth2
|      |Cell        |Count |
h px� 
7
%s*synth2
+------+------------+------+
h px� 
7
%s*synth2
|1     |Sprite15x15 |     1|
h px� 
7
%s*synth2
|2     |background  |     1|
h px� 
7
%s*synth2
|3     |clk_wiz     |     1|
h px� 
7
%s*synth2
|4     |sprite31x31 |     1|
h px� 
7
%s*synth2
|5     |sprite63x63 |     1|
h px� 
7
%s*synth2
|6     |BUFG        |     1|
h px� 
7
%s*synth2
|7     |CARRY4      |  2450|
h px� 
7
%s*synth2
|8     |DSP48E1     |     3|
h px� 
7
%s*synth2
|11    |LUT1        |   747|
h px� 
7
%s*synth2
|12    |LUT2        |  5124|
h px� 
7
%s*synth2
|13    |LUT3        |   206|
h px� 
7
%s*synth2
|14    |LUT4        |  3272|
h px� 
7
%s*synth2
|15    |LUT5        |  1641|
h px� 
7
%s*synth2
|16    |LUT6        |  2206|
h px� 
7
%s*synth2
|17    |MUXF7       |   401|
h px� 
7
%s*synth2
|18    |MUXF8       |   174|
h px� 
7
%s*synth2
|19    |FDRE        |  3208|
h px� 
7
%s*synth2
|20    |FDSE        |    35|
h px� 
7
%s*synth2
|21    |IBUF        |     3|
h px� 
7
%s*synth2
|22    |OBUF        |    15|
h px� 
7
%s*synth2
+------+------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:16 ; elapsed = 00:01:21 . Memory (MB): peak = 1652.258 ; gain = 780.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:03 ; elapsed = 00:01:17 . Memory (MB): peak = 1652.258 ; gain = 679.152
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:16 ; elapsed = 00:01:21 . Memory (MB): peak = 1652.258 ; gain = 780.867
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.2252

1652.2582
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
3028Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
Videokaart_full2
spriteControllerZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

1652.2582
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

c90549a7Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612
42
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:232

00:01:292

1652.2582

1174.215Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0662

1652.2582
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Y
WC:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.runs/synth_1/Videokaart_full.dcpZ17-1381h px� 
�
%s4*runtcl2v
tExecuting : report_utilization -file Videokaart_full_utilization_synth.rpt -pb Videokaart_full_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Apr  4 11:19:24 2024Z17-206h px� 


End Record