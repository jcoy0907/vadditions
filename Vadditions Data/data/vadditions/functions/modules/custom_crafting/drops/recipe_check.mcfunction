#@s - console
#called by #vadditions:modules/custom_crafting/tick

#iron ore to iron ingot
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] at @s if block ~ ~-.2 ~ minecraft:lava run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"{\"italic\":\"false\",\"text\":\"Charred Iron Ingot\"}"}}},Tags:["VADS_Entity"],Health:500s,Fire:0s,Invulnerable:1}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ore",Count:1b}}] at @s if block ~ ~-.2 ~ minecraft:lava run kill @s[type=!minecraft:player]
