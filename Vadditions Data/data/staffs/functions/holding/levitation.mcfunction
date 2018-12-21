#@s - @a[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.levitation"}}}]
#called by staffs:holding

#visuals
particle minecraft:totem_of_undying
#detection
execute if entity @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..}] unless block ~ ~ ~ minecraft:water run function staffs:use/levitation
playsound minecraft:block.anvil.destroy voice @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99}] ~ ~ ~ 100 2 0
execute if entity @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..}] unless block ~ ~ ~ minecraft:water run scoreboard players set @s VADS_ItemCool 0
