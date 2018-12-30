#@s - @e[tag=VADS_BonsaiPot] unless block ~ ~ ~ #vadditions:holds/bonsai_pot
#called by machines:bonsai_pots/tick

execute if entity @s[tag=!VADS_BonsaiPot.Empty] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt"}]} run function machines:bonsai_pots/create/empty
execute if entity @s[tag=!VADS_BonsaiPot.Filled_1] if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]} run function machines:bonsai_pots/create/filled_1
execute if entity @s[tag=!VADS_BonsaiPot.Filled_2] if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:2b}]} run function machines:bonsai_pots/create/filled_2
