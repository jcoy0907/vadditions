#@s - sleeping player
#called by advancement 'vadditions:technical_chain/sleep'

#store player count
execute store result score players VADS_Count if entity @a
#notify players
execute if score players VADS_Count matches 2.. run tellraw @a [{"selector":"@s","color":"gold"}," ",{"translate":"text.vadditions.sleeping","color":"yellow"}," ",{"translate":"text.vadditions.kick_all_sleeping","color":"red","clickEvent":{"action":"run_command","value":"/function vadditions:sleep/kick_sleepers"}}]