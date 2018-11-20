#white castle master
    #freeze effect
scoreboard players add @e[tag=VADS_WhiteCastleMaster] VADS_FrzUseTimer 1
scoreboard players set @e[tag=VADS_WhiteCastleMaster,scores={VADS_FrzUseTimer=200..}] VADS_FrzUseTimer 0
execute at @e[scores={VADS_FrzUseTimer=199},tag=VADS_WhiteCastleMaster] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:run/freeze
execute at @e[scores={VADS_FrzUseTimer=180..198},tag=VADS_WhiteCastleMaster] if entity @p[distance=..10,gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] run function visual:entity/charge_up
    #sounds
execute as @e[tag=VADS_WhiteCastleMaster,tag=!VADS_RanSound,scores={VADS_Random=1..20}] at @s run playsound vadditions:mob/white_castle_master/ambient ambient @a[distance=..16] ~ ~ ~ 100 2 1
execute as @e[tag=VADS_WhiteCastleMaster,tag=!VADS_RanSound,scores={VADS_Random=1..20}] run tag @s add VADS_RanSound
    #health bar
execute at @e[tag=VADS_WhiteCastleMaster] unless entity @a[distance=..10] run bossbar set vads:status/bosshealth/white_castle_master players none
execute unless entity @e[tag=VADS_WhiteCastleMaster,limit=1] run bossbar set vads:status/bosshealth/white_castle_master players
execute at @e[tag=VADS_WhiteCastleMaster] run bossbar set vads:status/bosshealth/white_castle_master players @a[distance=..10]
execute at @e[tag=VADS_WhiteCastleMaster] run execute at @p store result bossbar vads:status/bosshealth/white_castle_master value run data get entity @e[tag=VADS_WhiteCastleMaster,sort=nearest,limit=1] Health
    #models
execute as @e[tag=!VADS_Moving,tag=VADS_WhiteCastleMaster] run data merge entity @s {ArmorItems:[{},{},{},{Count:1b,id:iron_hoe,tag:{Damage:20s,Unbreakable:1}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.67F]}
execute as @e[tag=VADS_Moving,tag=VADS_WhiteCastleMaster] run data merge entity @s {ArmorItems:[{},{},{},{Count:1b,id:iron_hoe,tag:{Damage:21s,Unbreakable:1}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.67F]}

#effects
    #attribute modifiers
        #l1
effect give @a[nbt={SelectedItem:{tag:{AttributeModifiers:[{AttributeName:"vadditions.haste.1"}]}}}] minecraft:haste 1 0 true
        #l2
effect give @a[nbt={SelectedItem:{tag:{AttributeModifiers:[{AttributeName:"vadditions.haste.2"}]}}}] minecraft:haste 1 1 true
        #l3
effect give @a[nbt={SelectedItem:{tag:{AttributeModifiers:[{AttributeName:"vadditions.haste.3"}]}}}] minecraft:haste 1 2 true
    #squid ink
effect give @a[scores={VADS_SquidKills=1..},gamemode=!creative,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]}] minecraft:blindness 5 0
scoreboard players set @a[scores={VADS_SquidKills=1..}] VADS_SquidKills 0
execute as @a[scores={VADS_Random=1..3},nbt=!{ActiveEffects:[{Id:14b}]},nbt=!{ActiveEffects:[{Id:15b}]},gamemode=!creative,gamemode=!spectator] at @s if entity @e[type=minecraft:squid,sort=nearest,limit=1,distance=..1] run playsound minecraft:entity.squid.squirt voice @s ~ ~ ~ 100 2 1
execute as @a[scores={VADS_Random=1..3},nbt=!{ActiveEffects:[{Id:14b}]},nbt=!{ActiveEffects:[{Id:15b}]},gamemode=!creative,gamemode=!spectator] at @s if entity @e[type=minecraft:squid,sort=nearest,limit=1,distance=..1] run effect give @s minecraft:blindness 5 0

    #underwater effects
        #swimming particles
execute at @a[scores={VADS_Swim=1..},gamemode=!spectator] unless block ~ ~ ~ #minecraft:air positioned ~ ~.3 ~ run particle minecraft:bubble ^ ^ ^-1.5 0 .1 0 0 1 normal @a
execute at @a[scores={VADS_Swim=1..},gamemode=!spectator,nbt={ActiveEffects:[{Id:29b}]}] unless block ~ ~ ~ #minecraft:air positioned ~ ~.3 ~ run particle minecraft:nautilus ^ ^ ^-1.5 0 .1 0 1 1 normal @a
scoreboard players remove @a[scores={VADS_Swim=1..}] VADS_Swim 8
scoreboard players set @a[scores={VADS_Swim=101..}] VADS_Swim 100
scoreboard players set @a[scores={VADS_Swim=..-1}] VADS_Swim 0
        #weakness
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches 200..275 run effect give @s minecraft:weakness 1 0

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches 100..199 run effect give @s minecraft:weakness 1 1

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches 0..99 run effect give @s minecraft:weakness 1 2

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches -20..0 run effect give @s minecraft:weakness 1 3

        #mining fatigue (for melee combat)
execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches 100..199 run effect give @s minecraft:mining_fatigue 1 1

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches 0..99 run effect give @s minecraft:mining_fatigue 1 2

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]},gamemode=!creative,gamemode=!spectator] at @s if score @s VADS_BubbleDef matches -20..0 run effect give @s minecraft:mining_fatigue 1 3

    # Custom Effects
execute as @e[tag=VADS_ConfusedEffect] at @s run particle minecraft:effect ~ ~ ~ .5 .5 .5 .1 5 force
execute as @e[tag=VADS_ConfusedEffect,tag=!VADS_ConfusedProcessed] run data merge entity @s {Attributes:[{Base:0.0d,Name:"generic.followRange"},{Base:0.0d,Name:"generic.attackDamage"}],carriedBlockState:{Name:"minecraft:barrier"},NoAI:1}
execute as @e[tag=VADS_ConfusedEffect] if score @s VADS_CnfsedTime matches 100.. run function entities:effects/remove/custom/confused
tag @e[tag=VADS_ConfusedEffect,tag=!VADS_ConfusedProcessed] add VADS_ConfusedProcessed

# All Entity Custom Models
effect give @e[tag=VADS_CustomModel] minecraft:invisibility 1 0 true
tag @e[tag=VADS_CustomModel,tag=!VADS_Moving,nbt=!{Motion:[0.0,0.0,0.0]}] add VADS_Moving
tag @e[tag=VADS_CustomModel,tag=VADS_Moving,nbt={Motion:[0.0,0.0,0.0]}] remove VADS_Moving

# Entity Processes
    # Armed Armour Stands
execute as @e[type=minecraft:armor_stand,tag=!VADS_AASProcessed] run data merge entity @s {ShowArms:1b}
tag @e[type=minecraft:armor_stand,tag=!VADS_AASProcessed] add VADS_AASProcessed

    # Items Nearly Despawned Notification
execute as @e[type=minecraft:item] if score @s VADS_Age matches 5900..5919 run data merge entity @s {CustomName:"{\"color\":\"green\",\"text\":\"5\"}",CustomNameVisible:1}
execute as @e[type=minecraft:item] if score @s VADS_Age matches 5920..5939 run data merge entity @s {CustomName:"{\"color\":\"green\",\"text\":\"4\"}",CustomNameVisible:1}
execute as @e[type=minecraft:item] if score @s VADS_Age matches 5940..5959 run data merge entity @s {CustomName:"{\"color\":\"yellow\",\"text\":\"3\"}",CustomNameVisible:1}
execute as @e[type=minecraft:item] if score @s VADS_Age matches 5960..5979 run data merge entity @s {CustomName:"{\"color\":\"gold\",\"text\":\"2\"}",CustomNameVisible:1}
execute as @e[type=minecraft:item] if score @s VADS_Age matches 5980..5999 run data merge entity @s {CustomName:"{\"color\":\"red\",\"text\":\"1\"}",CustomNameVisible:1}

    # Damaging Minecarts
execute as @e[type=minecraft:minecart] at @s if block ~ ~ ~ #minecraft:rails run effect give @e[distance=..1,type=!minecraft:player,tag=!VADS_Undead] minecraft:instant_damage 1 1 true

        # Sheep Armour
tag @e[type=minecraft:sheep,nbt={Sheared:0b}] remove VADS_Sheared
effect give @e[type=minecraft:sheep,nbt={Sheared:0b}] minecraft:resistance 1 0 true
effect clear @e[type=minecraft:sheep,nbt={Sheared:1b},tag=!VADS_Sheared] minecraft:resistance
tag @e[type=minecraft:sheep,nbt={Sheared:1b},tag=!VADS_Sheared] add VADS_Sheared

    # Skeleton Arrow Pickup
execute as @e[type=minecraft:arrow,nbt={pickup:0b}] run data merge entity @s {pickup:1b}

    # Sleeping Notifications
execute as @a[nbt={Sleeping:1b},tag=!VADS_SleepingNotif] run advancement grant @a only vadditions:sleeping
tag @a[nbt={Sleeping:1b},tag=!VADS_SleepingNotif] add VADS_SleepingNotif
tag @a[nbt={Sleeping:0b}] remove VADS_SleepingNotif
advancement revoke @a[advancements={vadditions:sleeping=true},tag=!VADS_SleepingNotif] only vadditions:sleeping

    # Thorny Plants Cause Damage
execute as @a[gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] at @s if block ~ ~ ~ #vadditions:thorny if score @s VADS_Random matches 1..20 run effect give @s minecraft:instant_damage 1 0 true

    # TNT Timer
        # TNT
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches 81.. run data merge entity @s {CustomName:"{\"color\":\"green\",\"text\":\"...\"}",CustomNameVisible:1}
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches 61..80 run data merge entity @s {CustomName:"{\"color\":\"green\",\"text\":\"4\"}",CustomNameVisible:1}
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches 41..60 run data merge entity @s {CustomName:"{\"color\":\"green\",\"text\":\"3\"}",CustomNameVisible:1}
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches 21..40 run data merge entity @s {CustomName:"{\"color\":\"yellow\",\"text\":\"2\"}",CustomNameVisible:1}
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches 6..20 run data merge entity @s {CustomName:"{\"color\":\"gold\",\"text\":\"1\"}",CustomNameVisible:1}
execute as @e[type=minecraft:tnt] if score @s VADS_Fuse matches ..5 run data merge entity @s {CustomName:"{\"color\":\"red\",\"text\":\"Boom!\"}",CustomNameVisible:1}

        # Creepers
execute as @e[type=minecraft:creeper,scores={VADS_CreeperTime=1..10}] run data merge entity @s {CustomName:"{\"color\":\"yellow\",\"text\":\"2\"}",CustomNameVisible:1}
execute as @e[type=minecraft:creeper,scores={VADS_CreeperTime=11..20}] run data merge entity @s {CustomName:"{\"color\":\"yellow\",\"text\":\"1\"}",CustomNameVisible:1}
execute as @e[type=minecraft:creeper,scores={VADS_CreeperTime=21..30}] run data merge entity @s {CustomName:"{\"color\":\"yellow\",\"text\":\"Boom!\"}",CustomNameVisible:1}

    # Turtle {HasEgg:1b} has Pregnant Name
execute as @e[type=minecraft:turtle,nbt={HasEgg:1b}] run data merge entity @s {CustomNameVisible:1,CustomName:"{\"text\":\"Pregnant\"}"}
execute as @e[type=minecraft:turtle,nbt={HasEgg:0b,CustomName:"{\"text\":\"Expecting...\"}"}] run data merge entity @s {CustomNameVisible:0,CustomName:""}

    # Easymode Processes
execute if score Hardmode VADS_Overall matches 0 run function entityprocesses:mythical_cleric/easymode

    # Hardmode Processes
execute if score Hardmode VADS_Overall matches 1 run function entityprocesses:mythical_cleric/hardmode