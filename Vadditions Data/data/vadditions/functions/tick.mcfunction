#@s - console
#called by #minecraft:tick

#pre-process tagging
    #new tags
tag @e[tag=VADS_LightField] add VADS_Field
    #random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:oak_sapling"}}] add VADS_Random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:spruce_sapling"}}] add VADS_Random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:birch_sapling"}}] add VADS_Random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:acacia_sapling"}}] add VADS_Random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:jungle_sapling"}}] add VADS_Random
tag @e[type=minecraft:item,tag=!VADS_Random,nbt={Item:{id:"minecraft:dark_oak_sapling"}}] add VADS_Random
tag @e[tag=!VADS_Random,tag=VADS_BonsaiPot] add VADS_Random
tag @e[tag=!VADS_Random,tag=VADS_SandExtractor] add VADS_Random
tag @e[tag=!VADS_Random,tag=VADS_Field] add VADS_Random

#pulse
scoreboard players add Pulse VADS_Tick 1
execute if score Pulse VADS_Tick >= PulseTick VADS_Tick run function #vadditions:clock
execute if score Pulse VADS_Tick >= PulseTick VADS_Tick run scoreboard players set Pulse VADS_Tick 0

#multiplayer sleeping
execute as @a[scores={VADS_KickSleep=1}] run function vadditions:sleep/kick_sleepers
scoreboard players enable @a VADS_KickSleep

#initial
tellraw @a[tag=!VADS_JoinedOnce] [{"translate":"text.vadditions.chat.firstjoin"},{"text":"\n"},{"translate":"text.vadditions.chat.firstjoin.warning"}]
execute as @a[tag=!VADS_JoinedOnce] run function vadditions:init
tag @a[tag=!VADS_JoinedOnce] add VADS_JoinedOnce

#entity processing
    #item lava check
execute as @e[type=minecraft:item] run data merge entity @s {Health:500s,Fire:0s,Invulnerable:1}
execute as @e[type=minecraft:item] at @s if block ~ ~-.2 ~ minecraft:lava run data merge entity @s {Motion:[0.0d,0.1d,0.0d]}
    #visual entities
execute as @e[type=minecraft:item,tag=VADS_VisualEntity,scores={VADS_Age=60..}] run kill @s
execute as @e[type=minecraft:item,tag=VADS_VisualEntity,nbt={OnGround:1b}] run kill @s
    #loot tables
execute as @e[type=minecraft:ender_dragon,tag=!VADS_LootTableProcessed] run data merge entity @s {DeathLootTable:"minecraft:entities/ender_dragon"}
tag @e[type=minecraft:ender_dragon,tag=!VADS_LootTableProcessed] add VADS_LootTableProcessed

#patches
    #visual entities
execute at @e[type=minecraft:item,nbt={Item:{tag:{isMachine:1b,VADS_Machine:"vadditions:lazer.transanium"}}}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..3,tag=VADS_VisualEntity]
    #marker
execute as @e[tag=VADS_NoNameMarker] at @s run teleport @s ~ ~.5 ~
tag @e[tag=VADS_NoNameMarker] remove VADS_NoNameMarker
    #look at nearest
execute as @e[tag=VADS_LookAtNearest] at @s facing entity @p[gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
    #carrot on a stick use patch
#scoreboard players set @a[scores={VADS_UseCOAS=2..}] VADS_UseCOAS 0
execute as @a[scores={VADS_UseCOAS=1..}] unless entity @s[nbt={SelectedItem:{tag:{isStaff:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{isWeapon:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{isFood:1b}}}] run scoreboard players set @s VADS_UseCOAS 0

#audiovisuals
    #remove visual items
clear @a[nbt={Inventory:[{tag:{vadditions:{visual_item:1b}}}]}] #vadditions:visual_item{vadditions:{visual_item:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{vadditions:{visual_item:1b}}}}]
    #brightness
execute as @e[tag=VADS_FireStand,scores={VADS_Fire=..10}] run data merge entity @s {Invulnerable:1,Marker:1,Fire:20s}
#fire notification
execute as @a run scoreboard players operation @s VADS_FireSecond = @s VADS_Fire
execute as @a run scoreboard players operation @s VADS_FireSecond /= TickSecond VADS_Time
title @a[scores={VADS_Fire=-19..-1},gamemode=!creative,gamemode=!spectator] actionbar [{"translate":"text.vadditions.actionbar.firestatus.time"}," ",{"translate":"text.vadditions.actionbar.firestatus.pre"}]
execute as @a[scores={VADS_Fire=1..},gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"translate":"text.vadditions.actionbar.firestatus.time"}," ",{"score":{"objective":"VADS_FireSecond","name":"@s"}},{"translate":"text.vadditions.actionbar.firestatus.second"}]
tag @a[scores={VADS_Fire=1..},tag=VADS_NotOnFire] remove VADS_NotOnFire
execute as @a[scores={VADS_Fire=-20},tag=!VADS_NotOnFire,gamemode=!creative,gamemode=!spectator] run title @s actionbar {"translate":"text.vadditions.actionbar.firestatus.notonfire"}
tag @a[scores={VADS_Fire=-20},tag=!VADS_NotOnFire] add VADS_NotOnFire
    #turn
execute as @e[tag=VADS_Turn] at @s run tp @s ~ ~ ~ ~1.5 0
    #bug report notification
execute if score Second_150 VADS_Time matches 150 run title @a[scores={VADS_ItemCool=110}] actionbar {"translate":"text.vadditions.bug_report"}
    #quote easter egg
scoreboard players add @a[tag=!VADS_EasterEgg.Quote.Done] VADS_EETick 1
tag @a[scores={VADS_EETick=4500..}] add VADS_EasterEgg.Quote.Done
tellraw @a[scores={VADS_EETick=4500..}] {"translate":"text.easteregg.quote"}
scoreboard players reset @a[scores={VADS_EETick=4500..}] VADS_EETick

#scoreboards
    #initial scores
execute unless score Hardmode VADS_Overall matches 0.. run scoreboard players set Hardmode VADS_Overall 0
execute as @a unless score @s VADS_ItemCool matches 0.. run scoreboard players set @s VADS_ItemCool 110
execute as @a unless score @s VADS_UseCOAS matches 0.. run scoreboard players set @s VADS_UseCOAS 0
execute as @a unless score @s VADS_UseIronHoe matches 0.. run scoreboard players set @s VADS_UseIronHoe 0
    #processing entities
scoreboard players set @e[type=minecraft:creeper,nbt={Fuse:30s,ignited:0b}] VADS_CreeperTime 0
scoreboard players add @e[type=minecraft:creeper,nbt={Fuse:30s,ignited:1b}] VADS_CreeperTime 1
    #storing data
execute as @e[type=#vadditions:stores_data/fuse] store result score @s VADS_Fuse run data get entity @s Fuse
execute as @e[type=#vadditions:stores_data/age] store result score @s VADS_Age run data get entity @s Age
execute as @e[type=#vadditions:stores_data/fire] store result score @s VADS_Fire run data get entity @s Fire
execute store result score Daytime VADS_Overall run time query daytime
    #weapons
execute as @a[scores={VADS_ItemCool=0..99}] run title @s actionbar [{"translate":"text.item.recharging.colon"}," ",{"score":{"objective":"VADS_ItemCool","name":"@s"},"color":"dark_red"},{"color":"dark_red","text":"%"}]
title @a[scores={VADS_ItemCool=100..109}] actionbar {"translate":"text.item.recharging.done"}

tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}}] remove VADS_WeaponNoActionbar
title @a[scores={VADS_ItemCool=110},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}}] actionbar {"translate":"text.item.status.ready"}
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}},tag=!VADS_WeaponNoActionbar,scores={VADS_ItemCool=110}] run title @s actionbar ""
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}},tag=!VADS_WeaponNoActionbar] run tag @s add VADS_WeaponNoActionbar
    #seconds
scoreboard players add Tick VADS_Time 1
scoreboard players add LongTick VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_1 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_5 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_10 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_15 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_30 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_45 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_60 VADS_Time 1
execute if score Tick VADS_Time matches 20.. run scoreboard players add Second_150 VADS_Time 1
execute if score Second_1 VADS_Time matches 2.. run scoreboard players set Second_1 VADS_Time 0
execute if score Second_5 VADS_Time matches 6.. run scoreboard players set Second_5 VADS_Time 0
execute if score Second_10 VADS_Time matches 11.. run scoreboard players set Second_10 VADS_Time 0
execute if score Second_15 VADS_Time matches 16.. run scoreboard players set Second_15 VADS_Time 0
execute if score Second_30 VADS_Time matches 31.. run scoreboard players set Second_30 VADS_Time 0
execute if score Second_45 VADS_Time matches 46.. run scoreboard players set Second_45 VADS_Time 0
execute if score Second_60 VADS_Time matches 61.. run scoreboard players set Second_60 VADS_Time 0
execute if score Second_150 VADS_Time matches 151.. run scoreboard players set Second_150 VADS_Time 0
execute if score Tick VADS_Time matches 20.. run scoreboard players set Tick VADS_Time 0
execute if score LongTick VADS_Time matches 100.. run scoreboard players set LongTick VADS_Time 0
execute store result score 1 VADS_SecondTime run scoreboard players get Second_1 VADS_Time
execute store result score 5 VADS_SecondTime run scoreboard players get Second_5 VADS_Time
execute store result score 10 VADS_SecondTime run scoreboard players get Second_10 VADS_Time
execute store result score 15 VADS_SecondTime run scoreboard players get Second_15 VADS_Time
execute store result score 30 VADS_SecondTime run scoreboard players get Second_30 VADS_Time
execute store result score 45 VADS_SecondTime run scoreboard players get Second_45 VADS_Time
execute store result score 60 VADS_SecondTime run scoreboard players get Second_60 VADS_Time
execute store result score 150 VADS_SecondTime run scoreboard players get Second_150 VADS_Time
    #ticking scores
scoreboard players add @e[tag=VADS_WeaponEntity] VADS_WpnRngdTm 1
scoreboard players add @a[scores={VADS_ItemCool=..109}] VADS_ItemCool 1
scoreboard players add @e[tag=VADS_FreezeStand,scores={VADS_FreezeTimer=..45}] VADS_FreezeTimer 1
scoreboard players add @e[tag=VADS_ConfusedEffect] VADS_CnfsedTime 1
scoreboard players add @e[type=!minecraft:player,type=!minecraft:item,tag=!VADS_Entity] VADS_Age 1
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity] unless score @s VADS_Age matches 2.. run scoreboard players add @s VADS_Age 1
scoreboard players set @a[scores={VADS_DeathCheck=1..}] VADS_DeathCheck 0

execute as @a[scores={VADS_ItemCool=15}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=30}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=45}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=60}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=75}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=90}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=100}] at @s run playsound minecraft:entity.bat.hurt player @s ~ ~ ~ 1 2

#custom enchants
    #freezing
execute at @a[nbt={SelectedItem:{tag:{Enchantments:[{id:"vadditions:freezing"}]}}}] run particle minecraft:block minecraft:packed_ice ~ ~ ~ .5 1 .5 0 2 normal
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"vadditions:freezing"}]}}]}] run particle minecraft:block minecraft:packed_ice ~ ~ ~ .5 1 .5 0 2 normal

#random
    #all entity random
        #reset all random scores
scoreboard players reset * VADS_Random
        #run randoms
execute as @e[type=#vadditions:random] run function vadditions:random
execute as @e[tag=VADS_Random] run function vadditions:random
execute as @e[type=minecraft:villager,tag=!VADS_VillageProcessed] run function vadditions:random
execute as @e[tag=VADS_OreEntity,scores={VADS_Age=1}] run function vadditions:random
    #overall random
scoreboard players set Overall VADS_Random2 100
scoreboard players add Overall VADS_Random 0
scoreboard players operation Random1 VADS_Random2 *= Random2 VADS_Random2
scoreboard players operation Random1 VADS_Random2 %= Random2 VADS_Random2
scoreboard players operation Overall VADS_Random = Random2 VADS_Random2
scoreboard players operation Overall VADS_Random %= Random1 VADS_Random2
scoreboard players operation Overall VADS_Random %= Overall VADS_Random2
