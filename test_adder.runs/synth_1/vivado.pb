
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
550.8712	
237.988Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/hassa/test_adder/test_adder.srcs/utils_1/imports/synth_1/adder_1_bit.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2S
QC:/Users/hassa/test_adder/test_adder.srcs/utils_1/imports/synth_1/adder_1_bit.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7a35tcpg236-1Z4-113h px� 
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
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 
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
38612Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1401.230 ; gain = 448.328
h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
cout2B
>C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/top.sv2
668@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
sum2B
>C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/top.sv2
668@Z8-6901h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2B
>C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/top.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
adder_n_bit2
 2J
FC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/adder_4_bit.sv2
238@Z8-6157h px� 
D
%s
*synth2,
*	Parameter N bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
adder_1_bit2
 2J
FC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/adder_1_bit.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder_1_bit2
 2
02
12J
FC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/adder_1_bit.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder_n_bit2
 2
02
12J
FC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/adder_4_bit.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
cycle_display2
 2L
HC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/cycle_display.sv2
238@Z8-6157h px� 
E
%s
*synth2-
+	Parameter N bound to: 28 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter NUM_DISP bound to: 6 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
clock_div_n_bit2
 2N
JC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/clock_div_n_bit.sv2
238@Z8-6157h px� 
E
%s
*synth2-
+	Parameter N bound to: 28 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clock_div_n_bit2
 2
02
12N
JC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/clock_div_n_bit.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
n_bit_char_sr2
 2L
HC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/n_bit_char_sr.sv2
238@Z8-6157h px� 
E
%s
*synth2-
+	Parameter N bound to: 24 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
n_bit_char_sr2
 2
02
12L
HC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/n_bit_char_sr.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ssdec2
 2D
@C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/ssdec.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ssdec2
 2
02
12D
@C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/ssdec.sv2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
dec2
72
ssdec2L
HC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/cycle_display.sv2
608@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cycle_display2
 2
02
12L
HC:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/cycle_display.sv2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72	
seg_out2
82
cycle_display2B
>C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/top.sv2
798@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12B
>C:/Users/hassa/test_adder/test_adder.srcs/sources_1/new/top.sv2
238@Z8-6155h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[15]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[14]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[13]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[12]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[11]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[10]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[9]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[8]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[7]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[6]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[5]2
0Z8-3917h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnU2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnL2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnR2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnD2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1512.164 ; gain = 559.262
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1512.164 ; gain = 559.262
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1512.164 ; gain = 559.262
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
00:00:00.0032

1512.1642
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
Z
Parsing XDC File [%s]
179*designutils2
D:/Basys-3-Master.xdc8Z20-179h px� 
c
Finished Parsing XDC File [%s]
178*designutils2
D:/Basys-3-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2
D:/Basys-3-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1607.9922
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
00:00:00.0022

1607.9922
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
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
.	               24 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
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
,	   2 Input   24 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 2     
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
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[15]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[14]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[13]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[12]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[11]2
0Z8-3917h px� 
d
+design %s has port %s driven by constant %s3447*oasys2
top2	
led[10]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[9]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[8]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[7]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[6]2
0Z8-3917h px� 
c
+design %s has port %s driven by constant %s3447*oasys2
top2
led[5]2
0Z8-3917h px� 
_
+design %s has port %s driven by constant %s3447*oasys2
top2
dp2
1Z8-3917h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnU2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnL2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnR2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnD2
topZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
g
%s*synth2O
M+------------+----------------------------+---------------+----------------+
h px� 
h
%s*synth2P
N|Module Name | RTL Object                 | Depth x Width | Implemented As | 
h px� 
g
%s*synth2O
M+------------+----------------------------+---------------+----------------+
h px� 
h
%s*synth2P
N|ssdec       | dec_intermediate           | 32x7          | LUT            | 
h px� 
h
%s*synth2P
N|top         | disp/dec1/dec_intermediate | 32x7          | LUT            | 
h px� 
h
%s*synth2P
N+------------+----------------------------+---------------+----------------+

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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
}Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
vFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    14|
h px� 
2
%s*synth2
|3     |LUT2   |     1|
h px� 
2
%s*synth2
|4     |LUT3   |     2|
h px� 
2
%s*synth2
|5     |LUT4   |    44|
h px� 
2
%s*synth2
|6     |LUT5   |    26|
h px� 
2
%s*synth2
|7     |LUT6   |    17|
h px� 
2
%s*synth2
|8     |FDCE   |    81|
h px� 
2
%s*synth2
|9     |FDPE   |     3|
h px� 
2
%s*synth2
|10    |IBUF   |    14|
h px� 
2
%s*synth2
|11    |OBUF   |    28|
h px� 
2
%s*synth2
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 21 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 1607.992 ; gain = 559.262
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1607.992 ; gain = 655.090
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
00:00:00.0022

1607.9922
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
14Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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
00:00:00.0012

1607.9922
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ef3cebb1Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362
442
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

00:00:262

00:00:272

1607.9922

1051.961Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1607.9922
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2;
9C:/Users/hassa/test_adder/test_adder.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Jul  2 23:27:50 2024Z17-206h px� 


End Record