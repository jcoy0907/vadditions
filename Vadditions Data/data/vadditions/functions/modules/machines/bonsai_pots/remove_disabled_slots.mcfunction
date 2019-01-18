#@s - @e[tag=VADS_BonsaiPot] if block ~ ~ ~  #vadditions:holds/bonsai_pot{Items:[{tag:{vadditions:{visual_item:1b}}}]}
#called by vadditions:modules/machines/bonsai_pots/tick

execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,tag:{vadditions:{visual_item:1b}}}]} run replaceitem block ~ ~ ~ container.0 minecraft:air
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:1b,tag:{vadditions:{visual_item:1b}}}]} run replaceitem block ~ ~ ~ container.1 minecraft:air
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:2b,tag:{vadditions:{visual_item:1b}}}]} run replaceitem block ~ ~ ~ container.2 minecraft:air
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:3b,tag:{vadditions:{visual_item:1b}}}]} run replaceitem block ~ ~ ~ container.3 minecraft:air
execute if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:5b,tag:{vadditions:{visual_item:1b}}}]} run replaceitem block ~ ~ ~ container.5 minecraft:air
