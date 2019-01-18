#checks what version the pack is and compares it to see if there is an update or a downdate
#@s - console
#called by vadditions:load

#disable execution message if ran by player
execute if entity @s[type=minecraft:player] run gamerule sendCommandFeedback false
#check for the new build system
execute if score VersionNum-Builds VADS_Overall matches 0.. run scoreboard players operation BuildNumber VADS_Overall = VersionNum-Builds VADS_Overall
execute unless score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall if score VersionNum-Builds VADS_Overall matches 0.. run tellraw @a {"translate":"text.vadditions.new_build_system","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
#store build number
scoreboard players operation BuildNumber.Prev VADS_Overall = BuildNumber VADS_Overall
#update current build number ***MODIFY BUILD COUNT HERE***
scoreboard players set BuildNumber VADS_Overall 33
#if updating, send update message
execute unless score VersionNum-Builds VADS_Overall matches 0.. if score BuildNumber.Prev VADS_Overall < BuildNumber VADS_Overall run tellraw @a {"translate":"text.vadditions.update","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
#if downdating, send warning message
execute if score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall run function vadditions:build/downdating
#remove fake players
scoreboard players reset BuildNumber.Prev VADS_Overall
scoreboard players reset VersionNum-Builds VADS_Overall
#check server version
function vadditions:build/server_version_check

#give feedback if ran by player and a build change has occured
tellraw @s[type=minecraft:player] [{"translate":"text.vadditions.update_force.build_number","color":"gray"},{"score":{"name":"BuildNumber","objective":"VADS_Overall"}},", ",{"translate":"text.vadditions.update_force.server_version_number","color":"gray"},{"score":{"name":"ServerVersion","objective":"VADS_Overall"}}]
