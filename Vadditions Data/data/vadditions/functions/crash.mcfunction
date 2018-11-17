tellraw @s[tag=!VADS_Crash] {"translate":"text.vadditions.crash.start"}
tag @s add VADS_Crash
function vadditions:crash
tellraw @s[tag=VADS_Crash] {"translate":"text.vadditions.crash.error"}
tag @s remove VADS_Crash