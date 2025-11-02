# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Vitis\USERS\10_Zedboard_audio_in\Zedboard-DMA-2018.2-1\sdk_appsrc_with_GPIO\sdk_appsrc_with_GPIO\Audio_with_GPIO\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Vitis\USERS\10_Zedboard_audio_in\Zedboard-DMA-2018.2-1\sdk_appsrc_with_GPIO\sdk_appsrc_with_GPIO\Audio_with_GPIO\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Audio_with_GPIO}\
-hw {D:\Vitis\USERS\10_Zedboard_audio_in\Zedboard-DMA-2018.2-1\sdk_appsrc_with_GPIO\hw\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/Vitis/USERS/10_Zedboard_audio_in/Zedboard-DMA-2018.2-1/sdk_appsrc_with_GPIO/sdk_appsrc_with_GPIO}

platform write
platform generate -domains 
platform active {Audio_with_GPIO}
bsp reload
bsp setlib -name xilffs -ver 4.7
bsp write
bsp reload
catch {bsp regenerate}
platform generate
