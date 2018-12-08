# @s - console
# referenced by #vadditions:clock

#general
tag @a[tag=VADS_Crash] remove VADS_Crash
#check for joining players and run commands
execute as @a[scores={VADS_LeaveGame=1..}] run function #minecraft:load
execute as @a[scores={VADS_LeaveGame=1..}] run scoreboard players set @s VADS_LeaveGame 0
#name visible tags
tag @e[name="name visible"] add VADS_NameVisible
tag @e[name="name not visible"] remove VADS_NameVisible
execute as @e[name="name visible"] run data merge entity @s {CustomNameVisible:1,CustomName:""}
execute as @e[name="name not visible"] run data merge entity @s {CustomNameVisible:0,CustomName:""}