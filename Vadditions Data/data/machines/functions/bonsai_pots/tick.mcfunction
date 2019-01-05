#@s - @s[tag=VADS_BonsaiPot]
#called by machines:tick

#removal check
execute unless block ~ ~ ~ #vadditions:holds/bonsai_pot run function machines:bonsai_pots/remove
#state check
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot run function machines:bonsai_pots/check_state
#overflow check
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{id:"minecraft:dirt"}]} store result score @s VADS_BPDirtCount run data get block ~ ~ ~ Items[0].Count
execute if entity @s[scores={VADS_BPDirtCount=3..}] run function machines:bonsai_pots/overflow
#remove disabled slots as of build 27
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{tag:{vadditions:{visual_item:1b}}}]} run function machines:bonsai_pots/remove_disabled_slots
#saplings
execute if entity @s[tag=VADS_BonsaiPot.Filled_2] unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run particle minecraft:block minecraft:grass ~ ~1 ~ 0 .25 0 0 1 normal
execute if entity @s[tag=VADS_BonsaiPot.Filled_2,scores={VADS_Random3=1..5}] unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run function machines:bonsai_pots/check_sapling
