execute as @s at @s align xz positioned ~.5 ~ ~.5 run particle minecraft:block minecraft:crafting_table ~.5 ~ ~ .5 .5 .5 .5 100 normal @a
execute as @s at @s align xz positioned ~.5 ~ ~.5 run particle minecraft:block minecraft:nether_portal ~.5 ~ ~ .5 .5 .5 .5 100 normal @a
playsound minecraft:block.portal.trigger voice @a ~ ~ ~ 100 2
playsound minecraft:block.portal.trigger voice @a ~ ~ ~ 100 1
execute if score Hardmode VADS_Overall matches 0 run tellraw @a [{"color":"dark_green","selector":"@p"},{"translate":"text.vadditions.chat.summonunknownforces"}]
execute if score Hardmode VADS_Overall matches 0 run tellraw @a [{"translate":"text.vadditions.chat.enterhardmode"}]
execute if score Hardmode VADS_Overall matches 0 run playsound minecraft:block.note_block.pling record @a
execute if score Hardmode VADS_Overall matches 0 run scoreboard players set Hardmode VADS_Overall 1

execute unless entity @s[type=minecraft:player] as @a[distance=...5,gamemode=!creative,gamemode=!spectator] run function death:hardmode_activation