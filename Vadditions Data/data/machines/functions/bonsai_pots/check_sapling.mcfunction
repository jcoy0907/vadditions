#@s - bonsai pot if score @s VADS_Random matches 1..5 unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ minecraft:grass_block if block ~ ~3 ~ #minecraft:saplings
#called by machines:tick

#visuals
execute if block ~ ~4 ~ #minecraft:container run particle minecraft:happy_villager ~ ~5 ~
execute unless block ~ ~4 ~ #minecraft:container run particle minecraft:angry_villager ~ ~4 ~
execute unless block ~ ~4 ~ #minecraft:container run playsound minecraft:block.redstone_torch.burnout block @a[distance=..15] ~ ~4 ~ 1 2 1
#check sapling and summon loot
execute if block ~ ~3 ~ minecraft:oak_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/oak
execute if block ~ ~3 ~ minecraft:spruce_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/spruce
execute if block ~ ~3 ~ minecraft:birch_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/birch
execute if block ~ ~3 ~ minecraft:jungle_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/jungle
execute if block ~ ~3 ~ minecraft:acacia_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/acacia
execute if block ~ ~3 ~ minecraft:dark_oak_sapling run loot insert ~ ~4 ~ loot vadditions:machines/bonsai_pot/dark_oak
