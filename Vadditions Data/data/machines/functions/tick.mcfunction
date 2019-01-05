#@s - console
#called by #machines:tick

#bonsai pots
    #removal check
execute as @e[tag=VADS_BonsaiPot] at @s run function machines:bonsai_pots/tick

#sand extractors
    #removal check
execute as @e[tag=VADS_SandExtractor] at @s unless block ~ ~.2 ~ #vadditions:holds/sand_extractor run function machines:sand_extractors/remove
    #extraction check
execute as @e[tag=VADS_SandExtractor,scores={VADS_Random3=1..10}] at @s unless block ~ ~ ~ #vadditions:holds/sand_extractor[enabled=false] if block ~ ~1.2 ~ #minecraft:sand run function machines:sand_extractors/extract

#lazers
    #kill checks
execute as @e[tag=VADS_LazerBottom] at @s unless entity @e[tag=VADS_LazerTop,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect
execute as @e[type=minecraft:guardian,tag=VADS_LazerTop] at @s unless entity @e[tag=VADS_LazerBottom,distance=...75,sort=nearest,limit=1] run function machines:lazers/kill/incorrect

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
#execute at @e[type=minecraft:guardian,tag=VADS_LazerTop] if entity @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:redstone_torch"}}]
#execute at @e[type=minecraft:guardian,tag=VADS_LazerTop] run summon minecraft:item ~ ~.5 ~ {Item:{id:"minecraft:redstone_torch",Count:1},PickupDelay:40s,Tags:["VADS_VisualEntity"]}
execute at @e[type=minecraft:guardian,tag=VADS_LazerTop] if entity @e[gamemode=!creative,gamemode=!spectator,distance=..1,type=!#vadditions:no_weapon_damage,tag=!VADS_Lazer] run function machines:lazers/damage_entities

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
execute as @e[tag=VADS_Elevator] at @s run function machines:elevators/tick
