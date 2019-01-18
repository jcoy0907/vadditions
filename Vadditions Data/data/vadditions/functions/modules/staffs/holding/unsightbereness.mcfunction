#@s - @a[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.unsightbereness"}}}]
#called by vadditions:modules/staffs/holding

#visuals
particle minecraft:cloud ~ ~ ~
#detection
execute if entity @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..}] run function vadditions:modules/staffs/use/unsightbereness
playsound minecraft:block.anvil.destroy voice @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99}] ~ ~ ~ 100 2 0
scoreboard players set @s[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..}] VADS_ItemCool 0
