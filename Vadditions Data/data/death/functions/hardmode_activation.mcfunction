#@s - uncrafter
#run by hardmode:activate
tellraw @a [{"selector":"@a[distance=...5,gamemode=!creative,gamemode=!spectator]"},{"translate":"text.vadditions.death.hardmode_activation"}]
gamerule showDeathMessages false
kill @a[distance=...5,gamemode=!creative,gamemode=!spectator]
gamerule showDeathMessages true