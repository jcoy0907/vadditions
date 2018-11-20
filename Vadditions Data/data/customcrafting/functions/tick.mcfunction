#@s - console
#called by #customcrafting:tick

#run remove checks
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:basic/remove
execute as @e[type=minecraft:armor_stand,tag=VADS_AdvancedCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:advanced/remove
execute as @e[type=minecraft:armor_stand,tag=VADS_Compressor] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:compressor/remove
execute as @e[type=minecraft:armor_stand,tag=VADS_MachineCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:machine/remove
execute as @e[type=minecraft:armor_stand,tag=VADS_Smeltry] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:smeltry/remove
execute as @e[type=minecraft:armor_stand,tag=VADS_Uncrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function customcrafting:uncrafting/remove
#remove empty tags
execute as @e[type=minecraft:armor_stand,tag=VADS_CustomCrafter] at @s store result score @s VADS_TagCount run data get block ~ ~ ~ Items[0].tag
execute as @e[type=minecraft:armor_stand,tag=VADS_CustomCrafter,scores={VADS_TagCount=0}] at @s if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{tag:{}}]} run data remove block ~ ~ ~ Items[0].tag

#fire check
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s unless block ~ ~1 ~ minecraft:fire unless block ~1 ~ ~ minecraft:fire unless block ~-1 ~ ~ minecraft:fire unless block ~ ~ ~1 minecraft:fire unless block ~ ~ ~-1 minecraft:fire unless block ~ ~-1 ~ minecraft:fire run scoreboard players reset @s VADS_CCFire
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~ ~1 ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~ ~-1 ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~1 ~ ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~-1 ~ ~ minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~ ~ ~1 minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter] at @s if block ~ ~ ~-1 minecraft:fire run scoreboard players add @s VADS_CCFire 1
execute as @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter,scores={VADS_CCFire=1..}] run data merge entity @s {Marker:0b}
execute at @e[type=minecraft:armor_stand,tag=VADS_BasicCrafter,scores={VADS_CCFire=60..}] run setblock ~ ~ ~ minecraft:air destroy