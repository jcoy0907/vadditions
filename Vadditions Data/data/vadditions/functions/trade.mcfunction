#@s - player who has traded
#called by advancement 'vadditions:technical_chain/trade'

#randomise
tellraw @s[scores={VADS_Random=1..30}] [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.1","color":"gray"}]
tellraw @s[scores={VADS_Random=31..60}] [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.2","color":"gray"}]
tellraw @s[scores={VADS_Random=61..90}] [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.3","color":"gray"}]
tellraw @s[scores={VADS_Random=91..100}] [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.regional","color":"gray"}]
#in case of a player running 'function vadditions:trade', disable execution notification
gamerule sendCommandFeedback false
#revoke advancement
advancement revoke @s only vadditions:technical_chain/trade