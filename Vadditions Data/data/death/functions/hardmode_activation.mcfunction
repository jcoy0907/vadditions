#@s - uncrafter
#called by hardmode:activate

#kill player
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
#post message in chat
tellraw @a [{"selector":"@s"},{"translate":"text.vadditions.death.hardmode_activation"}]
