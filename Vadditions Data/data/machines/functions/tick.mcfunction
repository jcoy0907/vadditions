# Lazers
    # Kill Checks
execute as @e[tag=VADS_LazerBottom,type=minecraft:armor_stand] at @s unless entity @e[tag=VADS_LazerTop,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect
execute as @e[tag=VADS_LazerTop,type=minecraft:guardian] at @s unless entity @e[tag=VADS_LazerBottom,type=minecraft:armor_stand,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect

execute as @e[tag=VADS_Lazer,type=minecraft:armor_stand] at @s if block ~ ~-1 ~ #minecraft:air run function machines:lazers/kill/manual/transanium
execute as @e[tag=VADS_Lazer,type=minecraft:armor_stand] at @s unless block ~ ~ ~ minecraft:stone_slab run function machines:lazers/kill/manual/transanium

    # Summon check
execute as @e[type=minecraft:item,tag=!VADS_NoSummon,nbt={Item:{tag:{VADS_Machine:"vadditions:lazer.transanium",isMachine:1b}},OnGround:1b}] at @s run function machines:lazers/create/transanium

    # Freeze Attack
scoreboard players add @e[tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] VADS_FrzUseTimer 1
scoreboard players set @e[tag=VADS_LazerBottom,tag=VADS_TransaniumLazer,scores={VADS_FrzUseTimer=200..}] VADS_FrzUseTimer 0
execute at @e[scores={VADS_FrzUseTimer=199},tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:run/freeze
execute at @e[scores={VADS_FrzUseTimer=180..198},tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:entity/charge_up

    # Aesthetics
#execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}]
#execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] run summon minecraft:item ~ ~.5 ~ {Item:{id:"minecraft:redstone_torch",Count:1},PickupDelay:40s,Tags:["VADS_VisualEntity"]}
execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] if entity @e[gamemode=!creative,gamemode=!spectator,distance=..1,tag=!VADS_NoWeaponDamage,tag=!VADS_Lazer] run function machines:lazers/damage_entities

execute at @e[tag=VADS_LazerBottom,type=minecraft:armor_stand] run particle minecraft:dolphin ~ ~ ~ .5 .5 .5 0 10 force @a[distance=..10]

#elevators
    #spawn detect
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ladder",Count:1b},OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:iron_block unless entity @e[type=minecraft:armor_stand,tag=VADS_Elevator,distance=..1] align xz run function machines:elevators/create
    #teleporting
        #up
execute as @e[type=minecraft:armor_stand,tag=VADS_ElevatorUp] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] positioned ~ ~1 ~ as @a[distance=..1,gamemode=!spectator] at @s if block ~ ~5 ~ minecraft:iron_block run function machines:elevators/teleport_up
        #down
execute as @e[type=minecraft:armor_stand,tag=VADS_ElevatorDown] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] positioned ~ ~1 ~ as @a[distance=..1,gamemode=!spectator] at @s if block ~ ~-7 ~ minecraft:iron_block run function machines:elevators/teleport_down
    #general
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:bubble_pop ~ ~.5 ~ 0 .5 0 0 10 force @a

execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 force @a
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~-1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 force @a
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~ ~ ~1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 force @a
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 force @a

execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~1 ~ ~ minecraft:lever[powered=true] if block ~-1 ~ ~ minecraft:lever[powered=true] if block ~ ~ ~1 minecraft:lever[powered=true] if block ~ ~ ~-1 minecraft:lever[powered=true] run function machines:elevators/kill

execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s facing entity @p[gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},distance=..20] feet run teleport @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s unless entity @p[distance=..20,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]}] run teleport @s ~ ~ ~ 0 0

execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~ ~ ~ minecraft:air run function machines:elevators/kill

execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s add VADS_ElevatorUp
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s unless block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s remove VADS_ElevatorUp
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s if block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s add VADS_ElevatorDown
execute as @e[type=minecraft:armor_stand,tag=VADS_Elevator] at @s unless block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s remove VADS_ElevatorDown