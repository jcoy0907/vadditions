summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:9s}}],Tags:["VADS_Entity","VADS_FireStand","VADS_Uncrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_Uncrafter\""}
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}
execute if block ~ ~2 ~ minecraft:obsidian run function hardmode:activate
execute align xz positioned ~.5 ~ ~.5 run scoreboard players set @e[type=minecraft:armor_stand,tag=VADS_Uncrafter,distance=...6] VADS_StckMltplr 1
playsound minecraft:block.enchantment_table.use voice @a[distance=..16] ~ ~ ~ 100 0 1
playsound minecraft:entity.wither.spawn voice @a[distance=..16] ~ ~ ~ 100 0 1
kill @s[type=!minecraft:player]