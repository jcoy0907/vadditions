#@s - @e[type=minecraft:item,nbt={CRAFTING_TABLE}] if block ~ ~-1 ~ CUSTOM CRAFTER RECIPE
#called by custom_crafting:clock

#kill any nearby basic crafters
execute align xz run kill @e[tag=VADS_BasicCrafter,distance=..1]

#summon crafter
summon minecraft:armor_stand ~.5 ~-.5 ~.5 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:7}}],Tags:["VADS_Entity","VADS_FireStand","VADS_AdvancedCrafter","VADS_CustomCrafter"],NoGravity:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:"\"VADS_AdvancedCrafter\""}

#kick players out of dropper inventory
setblock ~ ~-1 ~ minecraft:air
setblock ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.advanced\"}"}

#audiovisuals
playsound minecraft:block.beacon.activate voice @a[distance=..16] ~ ~ ~ 100 1.5 1
playsound minecraft:block.beacon.activate voice @a[distance=..16] ~ ~ ~ 100 .5 1
playsound minecraft:block.enchantment_table.use voice @a[distance=..16] ~ ~ ~ 100 2 1
playsound minecraft:block.enchantment_table.use voice @a[distance=..16] ~ ~ ~ 100 .5 1

#advancements
advancement grant @a[distance=..5] only vadditions:custom_crafting/advanced_crafter

#kill item
kill @s[type=!minecraft:player]
