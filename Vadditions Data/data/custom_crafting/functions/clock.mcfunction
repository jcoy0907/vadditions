#@s - console
#called by #custom_crafting:clock

#validity check
execute as @e[tag=VADS_CustomCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true]{Items:[]} run function custom_crafting:recipe_validity_check

#run recipe checks
execute as @e[tag=VADS_BasicCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:basic/recipe_check

execute as @e[tag=VADS_AdvancedCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:basic/recipe_check
execute as @e[tag=VADS_AdvancedCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:advanced/recipe_check

execute as @e[tag=VADS_Compressor] at @s if block ~ ~1 ~ #minecraft:air unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:compressor/recipe_check

execute as @e[tag=VADS_MachineCrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:machine/recipe_check

execute as @e[tag=VADS_Smeltry] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:smeltry/recipe_check

execute as @e[tag=VADS_Uncrafter] at @s unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]} unless block ~ ~ ~ #vadditions:holds/custom_crafter[triggered=true] run function custom_crafting:uncrafter/recipe_check


#run creation checks
    #store slot count in certain entities
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",Count:1b},OnGround:1b}] at @s if block ~ ~-1 ~ #vadditions:holds/custom_crafter store result score @s VADS_SlotCount run data get block ~ ~-1 ~ Items
    #check
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b},OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:cobblestone",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:cobblestone",Count:1b},{Slot:7b,id:"minecraft:redstone",Count:1b},{Slot:8b,id:"minecraft:cobblestone",Count:1b}]} unless entity @e[tag=VADS_CustomCrafter,distance=..1] align xz run function custom_crafting:basic/create

execute at @e[nbt={Tags:["VADS_Entity","VADS_BasicCrafter"]},scores={VADS_SlotCount=3}] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b},OnGround:1b},distance=..1] at @s unless entity @e[tag=VADS_CustomCrafter,tag=!VADS_BasicCrafter,distance=..1] if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{id:"minecraft:obsidian",Count:1b},{id:"minecraft:iron_block",Count:1b},{id:"minecraft:diamond",Count:4b}]} align xz run function custom_crafting:advanced/create

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",Count:1b},OnGround:1b},scores={VADS_SlotCount=1}] at @s if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{id:"minecraft:iron_block",Count:8b}]} unless entity @e[tag=VADS_CustomCrafter,distance=..1] align xz run function custom_crafting:machine/create

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",Count:1b},OnGround:1b},scores={VADS_SlotCount=2}] at @s unless entity @e[tag=VADS_Compressor,distance=..1] if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{id:"minecraft:iron_block",Count:1b},{id:"minecraft:piston",Count:1b}]} align xz run function custom_crafting:compressor/create

execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:smeltry"}}},tag=!VADS_NoSummon] at @s store result score @s VADS_SmltryCnt align xyz if entity @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:smeltry"}}},dx=1,dy=1,dz=1,tag=!VADS_NoSummon]
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:smeltry"}},OnGround:1b},tag=!VADS_NoSummon,scores={VADS_SmltryCnt=1}] at @s if block ~ ~ ~ #minecraft:air align xz run function custom_crafting:smeltry/create

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"text\":\"Dinnerbone\"}"}}},OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:dispenser[facing=up]{Items:[]} unless entity @e[tag=VADS_CustomCrafter,distance=..1] align xz run function custom_crafting:uncrafter/create
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b,tag:{display:{Name:"{\"text\":\"Grumm\"}"}}},OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:dispenser[facing=up]{Items:[]} unless entity @e[tag=VADS_CustomCrafter,distance=..1] align xz run function custom_crafting:uncrafter/create

#kill basic crafters on top of advanced crafters
execute at @e[tag=VADS_AdvancedCrafter] run kill @e[tag=VADS_BasicCrafter,distance=...5]
