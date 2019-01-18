#@s = custom crafter unless block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[]}
#called by vadditions:modules/custom_crafting/clock

#pre
execute store result score @s VADS_FrstStckSze run data get block ~ ~ ~ Items[0].Count

#recipe checks
    #iron pack
execute if score @s VADS_SlotCount matches 9 if score @s VADS_StackSize matches ..8 if score @s VADS_FrstStckSze = @s VADS_StackSize if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:1b,id:"minecraft:iron_ore"},{Slot:2b,id:"minecraft:iron_ore"},{Slot:3b,id:"minecraft:iron_ore"},{Slot:4b,id:"minecraft:coal"},{Slot:5b,id:"minecraft:iron_ore"},{Slot:6b,id:"minecraft:iron_ore"},{Slot:7b,id:"minecraft:iron_ore"},{Slot:8b,id:"minecraft:iron_ore"}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:iron_ingot",Count:8b,tag:{vadditions:{multiply:true}}}]}
execute if score @s VADS_SlotCount matches 9 if score @s VADS_StackSize matches ..8 if score @s VADS_FrstStckSze = @s VADS_StackSize if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:1b,id:"minecraft:iron_ore"},{Slot:2b,id:"minecraft:iron_ore"},{Slot:3b,id:"minecraft:iron_ore"},{Slot:4b,id:"minecraft:charcoal"},{Slot:5b,id:"minecraft:iron_ore"},{Slot:6b,id:"minecraft:iron_ore"},{Slot:7b,id:"minecraft:iron_ore"},{Slot:8b,id:"minecraft:iron_ore"}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:iron_ingot",Count:8b,tag:{vadditions:{multiply:true}}}]}

#post
execute store result score @s VADS_NewStckSze run data get block ~ ~ ~ Items[0].Count
scoreboard players operation @s VADS_NewStckSze *= @s VADS_FrstStckSze
execute if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{tag:{vadditions:{multiply:true}}}]} store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get @s VADS_NewStckSze
execute if block ~ ~ ~ #vadditions:holds/custom_crafter{Items:[{tag:{vadditions:{multiply:true}}}]} run data remove block ~ ~ ~ Items[0].tag.vadditions
