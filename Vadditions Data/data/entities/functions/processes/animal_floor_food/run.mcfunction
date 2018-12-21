#@s - @e[tag=VADS_CanBreed]
#called by entities:clock

#tag entities respective of their food source(s)
tag @s[type=minecraft:pig,tag=!VADS_EatsCarrots] add VADS_EatsCarrots
tag @s[type=minecraft:rabbit,tag=!VADS_EatsCarrots] add VADS_EatsCarrots
tag @s[type=minecraft:pig,tag=!VADS_EatsPotatoes] add VADS_EatsPotatoes
tag @s[type=minecraft:chicken,tag=!VADS_EatsSeeds] add VADS_EatsSeeds
tag @s[type=minecraft:cow,tag=!VADS_EatsWheat] add VADS_EatsWheat
tag @s[type=minecraft:llama,tag=!VADS_EatsWheat] add VADS_EatsWheat
tag @s[type=minecraft:sheep,tag=!VADS_EatsWheat] add VADS_EatsWheat
#run eating checks
execute if entity @s[tag=VADS_EatsCarrots] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/carrots
execute if entity @s[tag=VADS_EatsPotatoes] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/potatoes
execute if entity @s[tag=VADS_EatsSeeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/wheat
execute if entity @s[tag=VADS_EatsSeeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/melon
execute if entity @s[tag=VADS_EatsSeeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/pumpkin
execute if entity @s[tag=VADS_EatsSeeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/beetroot
execute if entity @s[tag=VADS_EatsWheat] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/wheat
