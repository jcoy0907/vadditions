#@s - @e[type=minecraft:item,tag=!VADS_NoSummon,nbt={Item:{tag:{VADS_Machine:"vadditions:lazer.transanium",isMachine:1b}},OnGround:1b}]
#called by machines:tick

#summon entity
execute align xyz run summon minecraft:armor_stand ~.5 ~.075 ~.5 {Marker:1,CustomName:"\"VADS_TransaniumLazer\"",Tags:["VADS_Entity","VADS_Lazer","VADS_TransaniumLazer","VADS_LazerBottom"],NoGravity:1,Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1,tag:{CustomModelData:4}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.67F],DisabledSlots:2039583,Passengers:[{id:"minecraft:guardian",Team:"VADS_NoCollision",CustomName:"\"Transanium Lazer\"",Tags:["VADS_Entity","VADS_Lazer","VADS_TransaniumLazer","VADS_LazerTop"],NoGravity:1,Invulnerable:1,PersistenceRequired:1,Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b},{Id:11,Amplifier:255,Duration:20000000,ShowParticles:0b}]}]}
#set block
setblock ~ ~ ~ minecraft:stone_slab[type=bottom,waterlogged=false] destroy
#kill items
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:stone_slab"}}]
kill @s[type=!minecraft:player]
