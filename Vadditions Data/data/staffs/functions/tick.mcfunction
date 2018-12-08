#@s - console
#called by #staffs:tick

#levitation
    #particles
execute at @a[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.levitation",isStaff:1b}}}] run particle minecraft:totem_of_undying
    #detection
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Staff:"vadditions:staff.levitation",isStaff:1b}}}] at @s unless block ~ ~ ~ minecraft:water run function staffs:use/levitation
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.levitation"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Staff:"vadditions:staff.levitation",isStaff:1b}}}] at @s unless block ~ ~ ~ minecraft:water run scoreboard players set @s VADS_ItemCool 0
#unsightbereness
    #particles
execute at @a[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.unsightbereness",isStaff:1b}}}] run particle minecraft:cloud ~ ~ ~
    #detection
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Staff:"vadditions:staff.unsightbereness",isStaff:1b}}}] at @s run function staffs:use/unsightbereness
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.unsightbereness"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0
scoreboard players set @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Staff:"vadditions:staff.unsightbereness",isStaff:1b}}}] VADS_ItemCool 0

#post
scoreboard players set @a[scores={VADS_UseCOAS=1..},nbt={SelectedItem:{tag:{isStaff:1b}}}] VADS_UseCOAS 0