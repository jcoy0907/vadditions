#@s - @e[type=minecraft:tnt,tag=VADS_StickyTNT]
#called by vadditions:modules/weapons/tick

execute unless block ~ ~1 ~ #minecraft:inadhesive run data merge entity @s {NoGravity:1}
execute unless block ~ ~ ~.5 #minecraft:inadhesive run function vadditions:modules/weapons/stick
execute unless block ~ ~ ~-.5 #minecraft:inadhesive run function vadditions:modules/weapons/stick
execute unless block ~.5 ~ ~ #minecraft:inadhesive run function vadditions:modules/weapons/stick
execute unless block ~-.5 ~ ~ #minecraft:inadhesive run function vadditions:modules/weapons/stick
execute unless block ~ ~ ~-.5 #minecraft:inadhesive run function vadditions:modules/weapons/stick
        #unstick
execute if block ~ ~1 ~ #minecraft:inadhesive if block ~ ~ ~.5 #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive if block ~.5 ~ ~ #minecraft:inadhesive if block ~-.5 ~ ~ #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive run data merge entity @s {NoGravity:0}
