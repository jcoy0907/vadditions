#@s - @e[tag=VADS_OreEntity,tag=VADS_OreTransanium] unless block ~ ~ ~ #vadditions:modules/structures/holds_ore
#called by vadditions:modules/structures/tick

#visuals
particle minecraft:block minecraft:stone ~ ~ ~ .1 .25 .1 .05 30 normal @a
#summon item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:2,isCustomItem:1b,VADS_Item:"vadditions:ore.transanium",display:{Name:"{\"translate\":\"item.vadditions.ore.transanium\"}"}}}}
#kill entity
kill @s[type=!minecraft:player]
