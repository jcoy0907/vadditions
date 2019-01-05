#@s - @e[tag=VADS_CanBreed]
#called by entities:clock

#run eating checks
execute if entity @s[type=#vadditions:eats/carrots] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/carrots
execute if entity @s[type=#vadditions:eats/potatoes] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/potatoes
execute if entity @s[type=#vadditions:eats/seeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/wheat
execute if entity @s[type=#vadditions:eats/seeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/melon
execute if entity @s[type=#vadditions:eats/seeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/pumpkin
execute if entity @s[type=#vadditions:eats/seeds] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/seeds/beetroot
execute if entity @s[type=#vadditions:eats/wheat] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat"},OnGround:1b},sort=nearest,limit=1,distance=...5] run function entities:processes/animal_floor_food/wheat
