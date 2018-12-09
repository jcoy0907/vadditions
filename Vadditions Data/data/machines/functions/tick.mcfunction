#@s - console
#called by machines:tick

#bonsai pots
    #removal check
execute as @e[tag=VADS_BonsaiPot] at @s unless block ~ ~ ~ #vadditions:holds/bonsai_pot run function machines:bonsai_pots/remove
    #fullness check
execute as @e[tag=VADS_BonsaiPot,tag=!VADS_BonsaiPot.Empty] at @s unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt"}]} run function machines:bonsai_pots/create/empty
execute as @e[tag=VADS_BonsaiPot,tag=!VADS_BonsaiPot.Filled_1] at @s if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]} run function machines:bonsai_pots/create/filled_1
execute as @e[tag=VADS_BonsaiPot,tag=!VADS_BonsaiPot.Filled_2] at @s if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:0b,id:"minecraft:dirt",Count:2b}]} run function machines:bonsai_pots/create/filled_2
    #overflow check
execute as @e[tag=VADS_BonsaiPot] at @s if block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{id:"minecraft:dirt"}]} store result score @s VADS_BPDirtCount run data get block ~ ~ ~ Items[0].Count
execute at @e[tag=VADS_BonsaiPot,scores={VADS_BPDirtCount=3..}] run summon minecraft:item ~ ~1 ~ {Tags:["VADS_BPDirtCount"],Item:{id:"minecraft:dirt",Count:1b}}
execute as @e[tag=VADS_BonsaiPot,scores={VADS_BPDirtCount=3..}] at @s positioned ~ ~1 ~ store result entity @e[type=minecraft:item,tag=VADS_BPDirtCount,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s VADS_BPDirtCount
execute as @e[tag=VADS_BonsaiPot,scores={VADS_BPDirtCount=3..}] at @s positioned ~ ~1 ~ run particle minecraft:block minecraft:dirt ~ ~ ~ 0 .25 0 0 30 normal @a
execute as @e[tag=VADS_BonsaiPot,scores={VADS_BPDirtCount=3..}] at @s positioned ~ ~1 ~ run playsound minecraft:block.gravel.break block @a[distance=..10] ~ ~ ~ 100 .75 1
execute as @e[tag=VADS_BonsaiPot,scores={VADS_BPDirtCount=3..}] at @s run function machines:bonsai_pots/create/empty
    #disabled slots
execute at @e[tag=VADS_BonsaiPot] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}} 1
execute at @e[tag=VADS_BonsaiPot] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}} 1
execute at @e[tag=VADS_BonsaiPot] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:3b}]} run replaceitem block ~ ~ ~ container.3 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""}} 1
execute at @e[tag=VADS_BonsaiPot] unless block ~ ~ ~ #vadditions:holds/bonsai_pot{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 minecraft:barrier{vadditions:{visual_item:1b},display:{Name:"\"\""},display:{Name:"\"\""}} 1

execute at @e[tag=VADS_BonsaiPot] if block ~ ~-1 ~ #minecraft:container run setblock ~ ~-1 ~ minecraft:air destroy
    #saplings
execute as @e[tag=VADS_BonsaiPot.Filled_2] at @s unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run particle minecraft:block minecraft:grass ~ ~1 ~ 0 .25 0 0 1 normal
execute as @e[tag=VADS_BonsaiPot.Filled_2,scores={VADS_Random3=1..5}] at @s unless block ~ ~ ~ #vadditions:holds/bonsai_pot[enabled=false] if block ~ ~2 ~ #vadditions:holds/sapling if block ~ ~3 ~ #minecraft:saplings run function machines:bonsai_pots/check_sapling

#sand extractors
    #removal check
execute as @e[tag=VADS_SandExtractor] at @s unless block ~ ~.2 ~ #vadditions:holds/sand_extractor run function machines:sand_extractors/remove
    #extraction check
execute as @e[tag=VADS_SandExtractor,scores={VADS_Random3=1..10}] at @s unless block ~ ~ ~ #vadditions:holds/sand_extractor[enabled=false] if block ~ ~1.2 ~ #minecraft:sand run function machines:sand_extractors/extract

#lazers
    #kill checks
execute as @e[tag=VADS_LazerBottom] at @s unless entity @e[tag=VADS_LazerTop,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect
execute as @e[tag=VADS_LazerTop,type=minecraft:guardian] at @s unless entity @e[tag=VADS_LazerBottom,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect

execute as @e[tag=VADS_Lazer] at @s if block ~ ~-1 ~ #minecraft:air run function machines:lazers/kill/manual/transanium
execute as @e[tag=VADS_Lazer] at @s unless block ~ ~ ~ #vadditions:holds/lazer run function machines:lazers/kill/manual/transanium
    #summon check
execute as @e[type=minecraft:item,tag=!VADS_NoSummon,nbt={Item:{tag:{VADS_Machine:"vadditions:lazer.transanium",isMachine:1b}},OnGround:1b}] at @s run function machines:lazers/create/transanium
    #freeze attack
scoreboard players add @e[tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] VADS_FrzUseTimer 1
scoreboard players set @e[tag=VADS_LazerBottom,tag=VADS_TransaniumLazer,scores={VADS_FrzUseTimer=200..}] VADS_FrzUseTimer 0
execute at @e[scores={VADS_FrzUseTimer=199},tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:run/freeze
execute at @e[scores={VADS_FrzUseTimer=180..198},tag=VADS_LazerBottom,tag=VADS_TransaniumLazer] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:entity/charge_up
    #aesthetics
#execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}]
#execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] run summon minecraft:item ~ ~.5 ~ {Item:{id:"minecraft:redstone_torch",Count:1},PickupDelay:40s,Tags:["VADS_VisualEntity"]}
execute at @e[tag=VADS_LazerTop,type=minecraft:guardian] if entity @e[gamemode=!creative,gamemode=!spectator,distance=..1,tag=!VADS_NoWeaponDamage,tag=!VADS_Lazer] run function machines:lazers/damage_entities

execute at @e[tag=VADS_LazerBottom] run particle minecraft:dolphin ~ ~ ~ .5 .5 .5 0 10 normal @a[distance=..10]

#elevators
    #spawn detect
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ladder",Count:1b},OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:iron_block unless entity @e[tag=VADS_Elevator,distance=..1] align xz run function machines:elevators/create
    #teleporting
        #up
execute as @e[tag=VADS_ElevatorUp] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] positioned ~ ~1 ~ as @a[distance=..1,gamemode=!spectator,scores={VADS_ItemCool=100..}] at @s if block ~ ~5 ~ minecraft:iron_block run function machines:elevators/teleport_up
        #down
execute as @e[tag=VADS_ElevatorDown] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] positioned ~ ~1 ~ as @a[distance=..1,gamemode=!spectator,scores={VADS_ItemCool=100..}] at @s if block ~ ~-7 ~ minecraft:iron_block run function machines:elevators/teleport_down
    #general
execute as @e[tag=VADS_Elevator] at @s unless block ~1 ~ ~ minecraft:lever[powered=true] unless block ~-1 ~ ~ minecraft:lever[powered=true] unless block ~ ~ ~1 minecraft:lever[powered=true] unless block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:bubble_pop ~ ~.5 ~ 0 .5 0 0 10 normal @a

execute as @e[tag=VADS_Elevator] at @s if block ~1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute as @e[tag=VADS_Elevator] at @s if block ~-1 ~ ~ minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute as @e[tag=VADS_Elevator] at @s if block ~ ~ ~1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a
execute as @e[tag=VADS_Elevator] at @s if block ~ ~ ~-1 minecraft:lever[powered=true] run particle minecraft:falling_dust minecraft:redstone_wire ~ ~1 ~ 0 1 0 1 2 normal @a

execute as @e[tag=VADS_Elevator] at @s if block ~1 ~ ~ minecraft:lever[powered=true] if block ~-1 ~ ~ minecraft:lever[powered=true] if block ~ ~ ~1 minecraft:lever[powered=true] if block ~ ~ ~-1 minecraft:lever[powered=true] run function machines:elevators/kill

execute as @e[tag=VADS_Elevator] at @s facing entity @p[gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},distance=..20] feet run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=VADS_Elevator] at @s unless entity @p[distance=..20,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]}] run teleport @s ~ ~ ~ 0 0

execute as @e[tag=VADS_Elevator] at @s if block ~ ~ ~ minecraft:air run function machines:elevators/kill

execute as @e[tag=VADS_Elevator] at @s if block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s add VADS_ElevatorUp
execute as @e[tag=VADS_Elevator] at @s unless block ~ ~1 ~ #minecraft:wooden_buttons[powered=true] run tag @s remove VADS_ElevatorUp
execute as @e[tag=VADS_Elevator] at @s if block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s add VADS_ElevatorDown
execute as @e[tag=VADS_Elevator] at @s unless block ~ ~1 ~ minecraft:stone_button[powered=true] run tag @s remove VADS_ElevatorDown