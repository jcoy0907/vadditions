#@s - @e[tag=VADS_BasicCrafter]
#called by custom_crafting:tick

#reset fire if no nearby blocks
execute unless block ~ ~1 ~ minecraft:fire unless block ~1 ~ ~ minecraft:fire unless block ~-1 ~ ~ minecraft:fire unless block ~ ~ ~1 minecraft:fire unless block ~ ~ ~-1 minecraft:fire unless block ~ ~-1 ~ minecraft:fire run scoreboard players reset @s VADS_CCFire
#check for fire
execute if block ~ ~1 ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute if block ~ ~-1 ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute if block ~1 ~ ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute if block ~-1 ~ ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute if block ~ ~ ~1 minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute if block ~ ~ ~-1 minecraft:fire run scoreboard players add @s VADS_CCFire 1
#make sure fire shows on crafter
execute if entity @s[scores={VADS_CCFire=1..}] run data merge entity @s {Marker:0b}
#if on fire for at least 3 seconds, break crafter
execute if entity @s[scores={VADS_CCFire=60..}] run setblock ~ ~ ~ minecraft:air destroy
