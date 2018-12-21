#@s - @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9}]
#called by death:tick

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run function death:pointy_sleeping/run_death

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_sword"}]}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_sword"}]}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_sword"}]}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}] run function death:pointy_sleeping/run_death
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] run function death:pointy_sleeping/run_death
