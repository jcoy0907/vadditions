setblock ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:4b,id:"minecraft:piston",Count:1b}],CustomName:"{\"translate\":\"block.vadditions.customcrafter.compressor\"}"}
gamerule doTileDrops false
setblock ~ ~1 ~ minecraft:chest{LootTable:"vadditions:modules/custom_crafting/compressor/grass_block",Lock:"VADS_Compressor"} keep
execute if block ~ ~1 ~ minecraft:chest run setblock ~ ~1 ~ minecraft:air destroy
setblock ~ ~1 ~ minecraft:chest{LootTable:"vadditions:modules/custom_crafting/compressor/grass_block",Lock:"VADS_Compressor"} keep
execute if block ~ ~1 ~ minecraft:chest run setblock ~ ~1 ~ minecraft:air destroy
setblock ~ ~1 ~ minecraft:chest{LootTable:"vadditions:modules/custom_crafting/compressor/grass_block",Lock:"VADS_Compressor"} keep
execute if block ~ ~1 ~ minecraft:chest run setblock ~ ~1 ~ minecraft:air destroy
gamerule doTileDrops true
playsound minecraft:block.piston.contract voice @a[distance=..16] ~ ~ ~ 100 1 1