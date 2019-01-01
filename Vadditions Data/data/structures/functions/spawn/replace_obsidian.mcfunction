execute store success score ReplaceObsidian VADS_SuccessChck run fill ~50 0 ~50 ~-50 0 ~-50 minecraft:barrier replace minecraft:obsidian

execute if score ReplaceObsidian VADS_SuccessChck matches 1 run title @a actionbar {"translate":"text.vadditions.new_world_generation"}
scoreboard players set ReplaceObsidian VADS_SuccessChck 0
