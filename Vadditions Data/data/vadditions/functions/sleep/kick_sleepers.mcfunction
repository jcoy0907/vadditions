#@s - player who clicked the kick all sleeping players chat message
#called by vadditions:sleep

#disable function execution message
gamerule sendCommandFeedback false
#notify players
execute unless entity @s[nbt={Sleeping:1b}] if entity @a[nbt={Sleeping:1b}] run tellraw @a [{"selector":"@s","color":"dark_red"}," ",{"translate":"text.vadditions.kicked_all_sleeping","color":"red"}]
execute unless entity @a[nbt={Sleeping:1b}] run tellraw @s {"translate":"text.vadditions.kicked_all_sleeping.no_sleepers","color":"red"}
execute if entity @s[nbt={Sleeping:1b}] run tellraw @s {"translate":"text.vadditions.kicked_all_sleeping.sleeping_player_clicked","color":"red"}
#kick sleepers
execute unless entity @s[nbt={Sleeping:1b}] at @a[nbt={Sleeping:1b}] run summon minecraft:snowball ~ ~.6 ~