#@s - console
#called by #vadditions:modules/custom_crafting/tick

#run remove checks
execute as @e[tag=VADS_BasicCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/basic/remove
execute as @e[tag=VADS_AdvancedCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/advanced/remove
execute as @e[tag=VADS_Compressor] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/compressor/remove
execute as @e[tag=VADS_MachineCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/machine/remove
execute as @e[tag=VADS_Smeltry] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/smeltry/remove
execute as @e[tag=VADS_Uncrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[facing=up] run function vadditions:modules/custom_crafting/uncrafter/remove
#remove empty tags
execute as @e[tag=VADS_CustomCrafter] at @s store result score @s VADS_TagCount run data get block ~ ~ ~ Items[0].tag
execute as @e[tag=VADS_CustomCrafter,scores={VADS_TagCount=0}] at @s if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{tag:{}}]} run data remove block ~ ~ ~ Items[0].tag

#fire check
execute as @e[tag=VADS_BasicCrafter] at @s run function vadditions:modules/custom_crafting/basic/fire_check
