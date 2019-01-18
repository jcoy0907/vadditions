#@s - player in bed with a 'something pointy' in their hand or off-hand
#called by vadditions:modules/death/tick

#kill player
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
#post message in chat
tellraw @a [{"selector":"@s"},{"translate":"text.vadditions.death.pointy_sleeping"}]
