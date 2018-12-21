#@s - console
#called by #tools:tick

#natura
    #check
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run function tools:natura/fill_blocks
    #scoreboard management
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Tool:"vadditions:natura"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] VADS_ItemCool 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..}] VADS_UseIronHoe 0

#hammer
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s run function tools:hammer/check_block
kill @e[type=minecraft:item,nbt={Item:{tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=..-1}]
