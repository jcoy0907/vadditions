#@s - @e[type=!minecraft:player,tag=!VADS_FoundMob]
#called by mobs:tick

tag @s[type=minecraft:creeper,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:enderman,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:skeleton,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:stray,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:spider,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:witch,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:zombie,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:zombie_villager,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:husk,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @s[type=minecraft:zombie_pigman,tag=!VADS_FoundMob] add VADS_ReplaceMob
tag @e[tag=!VADS_FoundMob] add VADS_FoundMob
execute as @s[tag=VADS_ReplaceMob] at @s run function mobs:spawn/run
