# Natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:grass_block replace #vadditions:replace_natura

execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~2 ~-1 ~ ~2 ~-1 ~ minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~-2 ~-1 ~ ~-2 ~-1 ~ minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~ ~-1 ~2 ~ ~-1 ~2 minecraft:grass_block replace #vadditions:replace_natura
execute as @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] at @s run fill ~ ~-1 ~-2 ~ ~-1 ~-2 minecraft:grass_block replace #vadditions:replace_natura

scoreboard players set @a[scores={VADS_UseIronHoe=1..,VADS_ItemCool=100..},nbt={SelectedItem:{tag:{isTool:1b,VADS_Tool:"vadditions:natura"},id:"minecraft:iron_hoe"}}] VADS_ItemCool 0
scoreboard players set @a[scores={VADS_UseIronHoe=1..}] VADS_UseIronHoe 0

# Hammer
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:glass run function tools:hammer/destroy/glass
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:glass_pane run function tools:hammer/destroy/glass

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:black_stained_glass run function tools:hammer/destroy/black
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:black_stained_glass_pane run function tools:hammer/destroy/black

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:blue_stained_glass run function tools:hammer/destroy/blue
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:blue_stained_glass_pane run function tools:hammer/destroy/blue

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass run function tools:hammer/destroy/brown
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:brown_stained_glass_pane run function tools:hammer/destroy/brown

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:cyan_stained_glass run function tools:hammer/destroy/cyan
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:cyan_stained_glass_pane run function tools:hammer/destroy/cyan

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run function tools:hammer/destroy/gray
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass_pane run function tools:hammer/destroy/gray

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:green_stained_glass run function tools:hammer/destroy/green
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:green_stained_glass_pane run function tools:hammer/destroy/green

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:light_blue_stained_glass run function tools:hammer/destroy/light_blue
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:light_blue_stained_glass_pane run function tools:hammer/destroy/light_blue

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:light_gray_stained_glass run function tools:hammer/destroy/light_gray
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:light_gray_stained_glass_pane run function tools:hammer/destroy/light_gray

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:lime_stained_glass run function tools:hammer/destroy/lime
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:lime_stained_glass_pane run function tools:hammer/destroy/lime

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:magenta_stained_glass run function tools:hammer/destroy/magenta
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:magenta_stained_glass_pane run function tools:hammer/destroy/magenta

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:orange_stained_glass run function tools:hammer/destroy/orange
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:orange_stained_glass_pane run function tools:hammer/destroy/orange

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:pink_stained_glass run function tools:hammer/destroy/pink
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:pink_stained_glass_pane run function tools:hammer/destroy/pink

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:purple_stained_glass run function tools:hammer/destroy/purple
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:purple_stained_glass_pane run function tools:hammer/destroy/purple

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:red_stained_glass run function tools:hammer/destroy/red
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:red_stained_glass_pane run function tools:hammer/destroy/red

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run function tools:hammer/destroy/white
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass_pane run function tools:hammer/destroy/white

execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:yellow_stained_glass run function tools:hammer/destroy/yellow
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}}] at @s if block ~ ~-1 ~ minecraft:yellow_stained_glass_pane run function tools:hammer/destroy/yellow

execute as @e[type=minecraft:item] at @s run execute as @e[type=minecraft:item,nbt={Item:{tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},y=-1,dy=-100] run give @p minecraft:golden_axe{isTool:1b,VADS_Tool:"vadditions:hammer",display:{Name:"{\"translate\":\"item.vadditions.tool.hammer\"}"}}
execute as @e[type=minecraft:item] at @s run execute as @e[type=minecraft:item,nbt={Item:{tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},y=-1,dy=-100] run kill @s[type=!minecraft:player]