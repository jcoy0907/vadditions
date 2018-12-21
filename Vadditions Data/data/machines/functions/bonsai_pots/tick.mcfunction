#@s - @s[tag=VADS_BonsaiPot]
#called by machines:tick

#removal check
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot run function machines:bonsai_pots/remove
#fullness check
execute if entity @s[tag=!VADS_BonsaiPot.Empty] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt"}]} run function machines:bonsai_pots/create/empty
execute if entity @s[tag=!VADS_BonsaiPot,tag=VADS_BonsaiPot.Filled_1] if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]} run function machines:bonsai_pots/create/filled_1
execute if entity @s[tag=!VADS_BonsaiPot,tag=VADS_BonsaiPot.Filled_2] if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:2b}]} run function machines:bonsai_pots/create/filled_2
#overflow check
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{id:"minecraft:dirt"}]} store result score @s VADS_BPDirtCount run data get block ~ ~ ~ Items[0].Count
execute if entity @s[scores={VADS_BPDirtCount=3..}] run function machines:bonsai_pots/overflow
#disabled slots
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}}
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}}
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:3b}]} run replaceitem block ~ ~ ~ container.3 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}}
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""},display:{Name:"\"\""}}

execute if block ~ ~-1 ~ #minecraft:container run setblock ~ ~-1 ~ minecraft:air destroy
#saplings
execute if entity @s[tag=VADS_BonsaiPot.Filled_2] unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run particle minecraft:block minecraft:grass ~ ~1 ~ 0 .25 0 0 1 normal
execute if entity @s[tag=VADS_BonsaiPot.Filled_2,scores={VADS_Random3=1..5}] unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run function machines:bonsai_pots/check_sapling
