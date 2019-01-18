#checks to see if the server is version X.X
#@s - console
#called by vadditions:load

#disable execution message if ran by player
execute if entity @s[type=minecraft:player] run gamerule sendCommandFeedback false
#summon test entity
summon minecraft:armor_stand ~ ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b,tag:{update:13}},{id:"minecraft:lectern",Count:1b,tag:{update:14}}],ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{update:15}},{id:"minecraft:stick",Count:1b,tag:{update:16}},{id:"minecraft:stick",Count:1b,tag:{update:17}},{id:"minecraft:stick",Count:1b,tag:{update:18}}],Tags:["VADS_VersionTest"]}
#test hand items
execute if entity @e[type=minecraft:armor_stand,tag=VADS_VersionTest,nbt={HandItems:[{tag:{update:13}}]}] run scoreboard players set ServerVersion VADS_Overall 13
execute if entity @e[type=minecraft:armor_stand,tag=VADS_VersionTest,nbt={HandItems:[{tag:{update:14}}]}] run scoreboard players set ServerVersion VADS_Overall 14
#disable pack is score is too low
execute unless score ServerVersion VADS_Overall matches 14.. run tellraw @a {"translate":"text.vadditions.server_version.too_low","color":"red"}
execute unless score ServerVersion VADS_Overall matches 14.. run datapack disable "file/Vadditions Data"
execute unless score ServerVersion VADS_Overall matches 14.. run tellraw @a {"translate":"text.vadditions.server_version.too_low.done","color":"green"}
#kill test entities
kill @e[type=minecraft:armor_stand,tag=VADS_VersionTest]
