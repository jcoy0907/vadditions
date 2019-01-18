execute store success score FillLayer VADS_SuccessChck run fill ~50 0 ~50 ~-50 0 ~-50 minecraft:barrier replace minecraft:bedrock
fill ~63 1 ~63 ~ 1 ~ minecraft:air replace minecraft:gold_ore
fill ~-63 1 ~-63 ~ 1 ~ minecraft:air replace minecraft:gold_ore
fill ~63 1 ~-63 ~ 1 ~ minecraft:air replace minecraft:gold_ore
fill ~-63 1 ~63 ~ 1 ~ minecraft:air replace minecraft:gold_ore

fill ~63 1 ~63 ~ 1 ~ minecraft:repeating_command_block{Command:"function vadditions:modules/structures/spawn/check",auto:1b} keep
fill ~-63 1 ~-63 ~ 1 ~ minecraft:repeating_command_block{Command:"function vadditions:modules/structures/spawn/check",auto:1b} keep
fill ~63 1 ~-63 ~ 1 ~ minecraft:repeating_command_block{Command:"function vadditions:modules/structures/spawn/check",auto:1b} keep
fill ~-63 1 ~63 ~ 1 ~ minecraft:repeating_command_block{Command:"function vadditions:modules/structures/spawn/check",auto:1b} keep

execute if score FillLayer VADS_SuccessChck matches 1 run title @a actionbar {"translate":"text.vadditions.generating_terrain"}
scoreboard players set FillLayer VADS_SuccessChck 0
