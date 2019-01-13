#@s - newly-created uncrafter with hardmode criterion met
#called by custom_crafting:uncrafter/create

#audiovisuals
execute align xz positioned ~.5 ~ ~.5 run particle minecraft:block minecraft:crafting_table ~.5 ~ ~ .5 .5 .5 .5 100 normal @a
execute align xz positioned ~.5 ~ ~.5 run particle minecraft:block minecraft:nether_portal ~.5 ~ ~ .5 .5 .5 .5 100 normal @a
playsound minecraft:block.portal.trigger voice @a ~ ~ ~ 100 2
playsound minecraft:block.portal.trigger voice @a ~ ~ ~ 100 1
tellraw @a [{"color":"dark_green","selector":"@p"},{"translate":"text.vadditions.chat.summonunknownforces"}]
tellraw @a [{"translate":"text.vadditions.chat.enterhardmode"}]
playsound minecraft:block.note_block.pling record @a
#notify server of hardmode activation
scoreboard players set Hardmode VADS_Overall 1
#run deaths nearby
execute unless entity @s[type=minecraft:player] as @a[distance=..1,gamemode=!creative,gamemode=!spectator] run function death:hardmode_activation
