#@s - @e[tag=VADS_Elevator]
#called by vadditions:modules/machines/tick


execute unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:bubble_pop ~ ~.5 ~ 0 .5 0 0 10 normal @a

execute if block ~1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute if block ~-1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute if block ~ ~ ~1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute if block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a

execute if block ~1 ~ ~ minecraft:lever[powered=true] if block ~-1 ~ ~ minecraft:lever[powered=true] if block ~ ~ ~1 minecraft:lever[powered=true] if block ~ ~ ~-1 minecraft:lever[powered=true] run function vadditions:modules/machines/elevators/kill

execute facing entity @p[gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},distance=..20] feet run teleport @s ~ ~ ~ ~ ~
execute unless entity @p[distance=..20,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]}] run teleport @s ~ ~ ~ 0 0

execute if block ~ ~ ~ minecraft:air run function vadditions:modules/machines/elevators/kill

execute if block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s add VADS_ElevatorUp
execute unless block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s remove VADS_ElevatorUp
execute if block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s add VADS_ElevatorDown
execute unless block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s remove VADS_ElevatorDown
