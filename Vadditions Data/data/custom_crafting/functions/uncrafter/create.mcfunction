#@s - @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"text\":\"DINNERBONE OR GRUMM\"}"}}},OnGround:1b}]
#called by custom_crafting:clock

#summon entity
summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:9s}}],Tags:["VADS_Entity","VADS_FireStand","VADS_Uncrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_Uncrafter\""}
#kick players out of dispenser inventory
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dispenser[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.uncrafter\"}"}
#activate hardmode if the criterion is met
execute unless score Hardmode VADS_Overall matches 1 run if block ~ ~2 ~ minecraft:obsidian run function hardmode:activate
#audiovisuals
playsound minecraft:block.enchantment_table.use voice @a[distance=..16] ~ ~ ~ 100 0 1
playsound minecraft:entity.wither.spawn voice @a[distance=..16] ~ ~ ~ 100 0 1
#kill item
kill @s[type=!minecraft:player]
