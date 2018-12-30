#@s - console
#called by vadditions:load if it finds you are downdating

tellraw @a {"translate":"text.vadditions.downdate","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
datapack disable "file/Vadditions Data"
scoreboard players operation BuildNumber VADS_Overall = BuildNumber.Prev VADS_Overall
