#pointy sleeping
    #sleep timer
scoreboard players add @a[nbt={Sleeping:1b}] VADS_TimeSlept 1
scoreboard players reset @a[nbt={Sleeping:0b},scores={VADS_TimeSlept=0..}] VADS_TimeSlept
    #death check
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run function death:pointy_sleeping

execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_sword"}]}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_sword"}]}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_sword"}]}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}] run function death:pointy_sleeping
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] run function death:pointy_sleeping