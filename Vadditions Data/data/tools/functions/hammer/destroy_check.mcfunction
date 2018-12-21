#@s - @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:golden_axe",tag:{isTool:1b,VADS_Tool:"vadditions:hammer"}}},scores={VADS_Pos.Y=2..}]
#called by tools:tick

execute if block ~ ~-1 ~ minecraft:glass run function tools:hammer/destroy_glass/plain
execute if block ~ ~-1 ~ minecraft:glass_pane run function tools:hammer/destroy_glass/plain

execute if block ~ ~-1 ~ minecraft:black_stained_glass run function tools:hammer/destroy_glass/black
execute if block ~ ~-1 ~ minecraft:black_stained_glass_pane run function tools:hammer/destroy_glass/black

execute if block ~ ~-1 ~ minecraft:blue_stained_glass run function tools:hammer/destroy_glass/blue
execute if block ~ ~-1 ~ minecraft:blue_stained_glass_pane run function tools:hammer/destroy_glass/blue

execute if block ~ ~-1 ~ minecraft:brown_stained_glass run function tools:hammer/destroy_glass/brown
execute if block ~ ~-1 ~ minecraft:brown_stained_glass_pane run function tools:hammer/destroy_glass/brown

execute if block ~ ~-1 ~ minecraft:cyan_stained_glass run function tools:hammer/destroy_glass/cyan
execute if block ~ ~-1 ~ minecraft:cyan_stained_glass_pane run function tools:hammer/destroy_glass/cyan

execute if block ~ ~-1 ~ minecraft:gray_stained_glass run function tools:hammer/destroy_glass/gray
execute if block ~ ~-1 ~ minecraft:gray_stained_glass_pane run function tools:hammer/destroy_glass/gray

execute if block ~ ~-1 ~ minecraft:green_stained_glass run function tools:hammer/destroy_glass/green
execute if block ~ ~-1 ~ minecraft:green_stained_glass_pane run function tools:hammer/destroy_glass/green

execute if block ~ ~-1 ~ minecraft:light_blue_stained_glass run function tools:hammer/destroy_glass/light_blue
execute if block ~ ~-1 ~ minecraft:light_blue_stained_glass_pane run function tools:hammer/destroy_glass/light_blue

execute if block ~ ~-1 ~ minecraft:light_gray_stained_glass run function tools:hammer/destroy_glass/light_gray
execute if block ~ ~-1 ~ minecraft:light_gray_stained_glass_pane run function tools:hammer/destroy_glass/light_gray

execute if block ~ ~-1 ~ minecraft:lime_stained_glass run function tools:hammer/destroy_glass/lime
execute if block ~ ~-1 ~ minecraft:lime_stained_glass_pane run function tools:hammer/destroy_glass/lime

execute if block ~ ~-1 ~ minecraft:magenta_stained_glass run function tools:hammer/destroy_glass/magenta
execute if block ~ ~-1 ~ minecraft:magenta_stained_glass_pane run function tools:hammer/destroy_glass/magenta

execute if block ~ ~-1 ~ minecraft:orange_stained_glass run function tools:hammer/destroy_glass/orange
execute if block ~ ~-1 ~ minecraft:orange_stained_glass_pane run function tools:hammer/destroy_glass/orange

execute if block ~ ~-1 ~ minecraft:pink_stained_glass run function tools:hammer/destroy_glass/pink
execute if block ~ ~-1 ~ minecraft:pink_stained_glass_pane run function tools:hammer/destroy_glass/pink

execute if block ~ ~-1 ~ minecraft:purple_stained_glass run function tools:hammer/destroy_glass/purple
execute if block ~ ~-1 ~ minecraft:purple_stained_glass_pane run function tools:hammer/destroy_glass/purple

execute if block ~ ~-1 ~ minecraft:red_stained_glass run function tools:hammer/destroy_glass/red
execute if block ~ ~-1 ~ minecraft:red_stained_glass_pane run function tools:hammer/destroy_glass/red

execute if block ~ ~-1 ~ minecraft:white_stained_glass run function tools:hammer/destroy_glass/white
execute if block ~ ~-1 ~ minecraft:white_stained_glass_pane run function tools:hammer/destroy_glass/white

execute if block ~ ~-1 ~ minecraft:yellow_stained_glass run function tools:hammer/destroy_glass/yellow
execute if block ~ ~-1 ~ minecraft:yellow_stained_glass_pane run function tools:hammer/destroy_glass/yellow
