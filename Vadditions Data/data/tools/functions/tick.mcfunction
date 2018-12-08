#natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:grass_block replace #vadditions:replace_natura

execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~2 ~-1 ~ ~2 ~-1 ~ minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~-2 ~-1 ~ ~-2 ~-1 ~ minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~ ~-1 ~2 ~ ~-1 ~2 minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~ ~-1 ~-2 ~ ~-1 ~-2 minecraft:grass_block replace #vadditions:replace_natura

execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Tool:"vadditions:natura"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] VADS_ItemCool 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..}] VADS_UseIronHoe 0

#hammer
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:glass run function tools:hammer/destroy_glass/plain
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:glass_pane run function tools:hammer/destroy_glass/plain

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:black_stained_glass run function tools:hammer/destroy_glass/black
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:black_stained_glass_pane run function tools:hammer/destroy_glass/black

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:blue_stained_glass run function tools:hammer/destroy_glass/blue
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:blue_stained_glass_pane run function tools:hammer/destroy_glass/blue

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function tools:hammer/destroy_glass/brown
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass_pane run function tools:hammer/destroy_glass/brown

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:cyan_stained_glass run function tools:hammer/destroy_glass/cyan
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:cyan_stained_glass_pane run function tools:hammer/destroy_glass/cyan

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run function tools:hammer/destroy_glass/gray
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass_pane run function tools:hammer/destroy_glass/gray

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:green_stained_glass run function tools:hammer/destroy_glass/green
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:green_stained_glass_pane run function tools:hammer/destroy_glass/green

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:light_blue_stained_glass run function tools:hammer/destroy_glass/light_blue
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:light_blue_stained_glass_pane run function tools:hammer/destroy_glass/light_blue

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:light_gray_stained_glass run function tools:hammer/destroy_glass/light_gray
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:light_gray_stained_glass_pane run function tools:hammer/destroy_glass/light_gray

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:lime_stained_glass run function tools:hammer/destroy_glass/lime
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:lime_stained_glass_pane run function tools:hammer/destroy_glass/lime

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:magenta_stained_glass run function tools:hammer/destroy_glass/magenta
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:magenta_stained_glass_pane run function tools:hammer/destroy_glass/magenta

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:orange_stained_glass run function tools:hammer/destroy_glass/orange
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:orange_stained_glass_pane run function tools:hammer/destroy_glass/orange

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:pink_stained_glass run function tools:hammer/destroy_glass/pink
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:pink_stained_glass_pane run function tools:hammer/destroy_glass/pink

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:purple_stained_glass run function tools:hammer/destroy_glass/purple
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:purple_stained_glass_pane run function tools:hammer/destroy_glass/purple

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:red_stained_glass run function tools:hammer/destroy_glass/red
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:red_stained_glass_pane run function tools:hammer/destroy_glass/red

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run function tools:hammer/destroy_glass/white
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass_pane run function tools:hammer/destroy_glass/white

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:yellow_stained_glass run function tools:hammer/destroy_glass/yellow
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}] at @s if block ~ ~-1 ~ minecraft:yellow_stained_glass_pane run function tools:hammer/destroy_glass/yellow

execute as @e[type=minecraft:item,nbt={Item:{tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=..-1}] run data merge entity @s {PickupDelay:0s}
kill @e[type=minecraft:item,nbt={Item:{tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=..-1}]