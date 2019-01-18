#@s - console
#called by #vadditions:modules/tools/tick

#natura
    #check
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run function vadditions:modules/tools/natura/fill_blocks
    #scoreboard management
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Tool:"vadditions:natura"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] VADS_ItemCool 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..}] VADS_UseIronHoe 0
