#@s - console
#called by #structures:tick

#kill ore entities without blocks
execute as @e[tag=VADS_OreEntity,tag=VADS_OreTransanium] at @s unless block ~ ~ ~ #structures:holds_ore unless block ~ ~ ~ minecraft:stone run function vadditions:ores/despawn/transanium
execute as @e[tag=VADS_OreEntity] at @s unless block ~ ~ ~ #structures:holds_ore run kill @s[type=!minecraft:player]
#randomise ore spawning
execute as @e[tag=VADS_OreEntity,tag=VADS_OreTransanium,scores={VADS_Random=1..25}] at @s align xyz run function vadditions:ores/despawn/no_item/transanium
#run room spawning
execute as @e[tag=VADS_SpawnRoom] at @s run function #structures:spawn_rooms
#fill layer
execute at @a[nbt=!{Dimension:1},nbt=!{Dimension:-1}] if block ~ 0 ~ minecraft:bedrock run function structures:spawn/fill_layer
execute at @a[nbt=!{Dimension:1},nbt=!{Dimension:-1}] if block ~ 0 ~ minecraft:obsidian run function structures:spawn/replace_obsidian
