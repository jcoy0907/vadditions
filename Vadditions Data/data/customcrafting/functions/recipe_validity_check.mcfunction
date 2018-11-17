#recipe validity check (by GM4)
#@s = VADS_CustomCrafter unless block ~ ~ ~ #vadditions:holds/customcrafter{Items:[]}

#store number of full slots
execute store result score @s VADS_SlotCount run data get block ~ ~ ~ Items

#get number of items from first array element
execute store result score @s VADS_FrstStckSze run data get block ~ ~ ~ Items[0].Count

#check if each slot with an item in it has the same stack size
execute if score @s VADS_SlotCount matches 2.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[1].Count
execute if score @s VADS_SlotCount matches 2.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 3.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[2].Count
execute if score @s VADS_SlotCount matches 3.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 4.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[3].Count
execute if score @s VADS_SlotCount matches 4.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 5.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[4].Count
execute if score @s VADS_SlotCount matches 5.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 6.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[5].Count
execute if score @s VADS_SlotCount matches 6.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 7.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[6].Count
execute if score @s VADS_SlotCount matches 7.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 8.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[7].Count
execute if score @s VADS_SlotCount matches 8.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_SlotCount matches 9.. store result score @s VADS_StackSize run data get block ~ ~ ~ Items[8].Count
execute if score @s VADS_SlotCount matches 9.. unless score @s VADS_StackSize = @s VADS_FrstStckSze run scoreboard players set @s VADS_FrstStckSze 0

execute if score @s VADS_FrstStckSze matches 1.. run scoreboard players operation @s VADS_StackSize = @s VADS_FrstStckSze

#check if one of the recipes succeeded
execute if score @s VADS_StackSize matches 1.. if block ~ ~ ~ #vadditions:holds/customcrafter{Items:[{tag:{vadditions_customcrafters:{}}}]} run function customcrafting:apply_multiplier
#check unless one of the recipes succeeded
execute if score @s VADS_StackSize matches 1.. unless block ~ ~ ~ #vadditions:holds/customcrafter{Items:[{tag:{vadditions_customcrafters:{}}}]} run function customcrafting:check_original