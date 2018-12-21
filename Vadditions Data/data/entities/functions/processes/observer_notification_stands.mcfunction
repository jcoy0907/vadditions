#@s - @e[type=minecraft:armor_stand,tag=VADS_Entity]
#called by entities:tick

execute if block ~ ~-1 ~ minecraft:observer[powered=true] run effect give @s minecraft:glowing 1 0 true
execute if block ~ ~ ~ minecraft:observer[powered=true] run effect give @s minecraft:glowing 1 0 true

execute unless block ~ ~ ~ minecraft:observer[powered=true] unless block ~ ~-1 ~ minecraft:observer[powered=true] run effect clear @s minecraft:glowing
