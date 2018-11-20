#general
tag @e[type=minecraft:villager,tag=!VADS_VillagerProcessed] add VADS_VillagerProcessed
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier"}}]
execute as @e[tag=VADS_Turn] at @s run tp @s ~ ~ ~ ~1.5 0

execute as @e[tag=!VADS_NoRandom] run function vadditions:random

scoreboard players set Overall VADS_Random2 100
scoreboard players add Overall VADS_Random 0
scoreboard players operation Random1 VADS_Random2 *= Random2 VADS_Random2
scoreboard players operation Random1 VADS_Random2 %= Random2 VADS_Random2
scoreboard players operation Overall VADS_Random = Random2 VADS_Random2
scoreboard players operation Overall VADS_Random %= Random1 VADS_Random2
scoreboard players operation Overall VADS_Random %= Overall VADS_Random2

scoreboard players set IslandCheck.Slime VADS_Random2 100
scoreboard players add IslandCheck.Slime VADS_Random 0
scoreboard players operation Random1 VADS_Random2 *= Random2 VADS_Random2
scoreboard players operation Random1 VADS_Random2 %= Random2 VADS_Random2
scoreboard players operation IslandCheck.Slime VADS_Random = Random2 VADS_Random2
scoreboard players operation IslandCheck.Slime VADS_Random %= Random1 VADS_Random2
scoreboard players operation IslandCheck.Slime VADS_Random %= IslandCheck.Slime VADS_Random2

execute if score Second_150 VADS_Time matches 150 run title @a[scores={VADS_ItemCool=110}] actionbar {"translate":"text.vadditions.bug_report"}
gamerule sendCommandFeedback true

#structures
    #kill ore entities without blocks
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity,tag=VADS_OreTransanium] at @s unless block ~ ~ ~ #structures:holds_ore unless block ~ ~ ~ minecraft:stone run function vadditions:ores/despawn/transanium
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity] at @s unless block ~ ~ ~ #structures:holds_ore run kill @s[type=!minecraft:player]
    #kill ore entities with other ore entities in the same block
scoreboard players set @e[tag=VADS_OreEntity,type=minecraft:armor_stand] VADS_OreEntDens 0
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity] at @s align xyz run scoreboard players add @e[type=minecraft:armor_stand,dx=.5,dy=.5,dz=.5,tag=VADS_OreEntity] VADS_OreEntDens 1
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity,tag=VADS_OreTransanium,scores={VADS_OreEntDens=2..}] at @s run function vadditions:ores/despawn/noitem/transanium

scoreboard players add @e[type=minecraft:armor_stand,tag=VADS_OreEntity] VADS_Age 1
execute as @e[type=minecraft:armor_stand,tag=VADS_OreEntity,tag=VADS_OreTransanium,scores={VADS_Age=..2,VADS_Random=1..25}] at @s align xyz run function vadditions:ores/despawn/noitem/transanium
    #run room spawning
execute as @e[tag=VADS_SpawnRoom] at @s run function #structures:spawn_rooms

#quote easter egg
scoreboard players add @a[tag=!VADS_EasterEgg.Quote.Done] VADS_EETick 1
tag @a[scores={VADS_EETick=4500..}] add VADS_EasterEgg.Quote.Done
tellraw @a[scores={VADS_EETick=4500..}] {"translate":"text.easteregg.quote"}
scoreboard players reset @a[scores={VADS_EETick=4500..}] VADS_EETick
#scoreboards
    #processing entities
scoreboard players set @e[type=minecraft:creeper,nbt={Fuse:30s,ignited:0b}] VADS_CreeperTime 0
scoreboard players add @e[type=minecraft:creeper,nbt={Fuse:30s,ignited:1b}] VADS_CreeperTime 1
    #storing data
execute as @e[type=minecraft:tnt] store result score @s VADS_Fuse run data get entity @s Fuse
execute as @e[type=minecraft:item] store result score @s VADS_Age run data get entity @s Age
execute as @e store result score @s VADS_Fire run data get entity @s Fire
execute as @e store result score @s VADS_Pos.Y run data get entity @s Pos[1]
execute as @e[type=minecraft:experience_orb] store result score @s VADS_XPOrbValue run data get entity @s Value
execute store result score Daytime VADS_Overall run time query daytime
    #doing minecraft's dirty work...
scoreboard players reset * VADS_HealthCheck
execute as @e[type=!minecraft:player,tag=!VADS_CustomCrafter] store result score @s VADS_HealthCheck run data get entity @s Health
    #weapons
execute as @a[scores={VADS_ItemCool=..109}] run tag @s add VADS_RechargeBar
execute as @a[scores={VADS_ItemCool=110..}] run tag @s remove VADS_RechargeBar
bossbar set vads:status/item_recharge players @a[tag=VADS_RechargeBar]
execute as @a store result bossbar vads:status/item_recharge value run scoreboard players get @p VADS_ItemCool
execute as @a[scores={VADS_ItemCool=0..99}] run title @s actionbar [{"translate":"text.item.recharging.colon"}," ",{"score":{"objective":"VADS_ItemCool","name":"@s"},"color":"dark_red"},{"color":"dark_red","text":"%"}]
title @a[scores={VADS_ItemCool=100..109}] actionbar {"translate":"text.item.recharging.done"}

tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}}] remove VADS_WeaponNoActionbar
title @a[scores={VADS_ItemCool=110},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}}] actionbar [{"translate":"text.item.status.ready"}]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{hasCooldown:1b}}},tag=!VADS_WeaponNoActionbar] run title @s actionbar ""
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
scoreboard players add @e[type=minecraft:armor_stand,tag=VADS_WeaponEntity] VADS_WpnRngdTm 1
scoreboard players add @a[scores={VADS_ItemCool=..109}] VADS_ItemCool 1
scoreboard players add @e[type=minecraft:armor_stand,tag=VADS_FreezeStand,scores={VADS_FreezeTimer=..45}] VADS_FreezeTimer 1
scoreboard players add @e[tag=VADS_ConfusedEffect] VADS_CnfsedTime 1
scoreboard players add @e[type=!minecraft:item,type=!minecraft:player,tag=!VADS_Entity] VADS_Age 1
scoreboard players set @a[scores={VADS_DeathCheck=1..}] VADS_DeathCheck 0

execute as @a[scores={VADS_ItemCool=0}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=15}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=30}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=45}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=60}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=75}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=90}] at @s run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 2
execute as @a[scores={VADS_ItemCool=100}] at @s run playsound minecraft:entity.bat.hurt player @s ~ ~ ~ 1 2

# Tagging
    # Eats <food>
tag @e[type=minecraft:pig,tag=!VADS_EatsCarrots] add VADS_EatsCarrots
tag @e[type=minecraft:rabbit,tag=!VADS_EatsCarrots] add VADS_EatsCarrots
tag @e[type=minecraft:pig,tag=!VADS_EatsPotatoes] add VADS_EatsPotatoes
tag @e[type=minecraft:chicken,tag=!VADS_EatsSeeds] add VADS_EatsSeeds
tag @e[type=minecraft:cow,tag=!VADS_EatsWheat] add VADS_EatsWheat
tag @e[type=minecraft:llama,tag=!VADS_EatsWheat] add VADS_EatsWheat
tag @e[type=minecraft:sheep,tag=!VADS_EatsWheat] add VADS_EatsWheat
tag @e[type=minecraft:horse,tag=!VADS_EatsWheat] add VADS_EatsWheat

    # Is sprite
tag @e[type=minecraft:armor_stand,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:area_effect_cloud,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:chest_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:furnace_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:tnt_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:hopper_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:command_block_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:spawner_minecart,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:item,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:experience_orb,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:experience_bottle,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:boat,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:arrow,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:dragon_fireball,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:egg,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:snowball,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:end_crystal,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:ender_pearl,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:evoker_fangs,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:eye_of_ender,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:falling_block,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:fireball,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:firework_rocket,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:item_frame,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:leash_knot,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:lightning_bolt,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:llama_spit,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:painting,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:potion,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:shulker_bullet,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:small_fireball,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:spectral_arrow,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:tnt,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:trident,tag=!VADS_IsSprite] add VADS_IsSprite
tag @e[type=minecraft:wither_skull,tag=!VADS_IsSprite] add VADS_IsSprite

    # No Weapon Damage
tag @e[type=minecraft:armor_stand,tag=VADS_IsSprite,tag=!VADS_NoWeaponDamage] add VADS_NoWeaponDamage
tag @a[tag=!VADS_NoWeaponDamage] add VADS_NoWeaponDamage

    # Undead
tag @e[tag=!VADS_Undead,type=minecraft:drowned] add VADS_Undead
tag @e[tag=!VADS_UndeadButImmune,type=minecraft:enderman] add VADS_UndeadButImmune
tag @e[tag=!VADS_Undead,type=minecraft:husk] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:phantom] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:skeleton] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:skeleton_horse] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:stray] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:wither_skeleton] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:zombie] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:zombie_horse] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:zombie_pigman] add VADS_Undead
tag @e[tag=!VADS_Undead,type=minecraft:zombie_villager] add VADS_Undead

#pulses
scoreboard players add Pulse VADS_Tick 1
execute if score Pulse VADS_Tick = PulseTick VADS_Tick run function #vadditions:clock
execute if score Pulse VADS_Tick = PulseTick VADS_Tick run scoreboard players set Pulse VADS_Tick 0

#fire notification
execute as @a run scoreboard players operation @s VADS_FireSecond = @s VADS_Fire
execute as @a run scoreboard players operation @s VADS_FireSecond /= TickSecond VADS_Independent

title @a[scores={VADS_Fire=-19..-1},gamemode=!creative,gamemode=!spectator] actionbar [{"translate":"text.vadditions.actionbar.firestatus.time"}," ",{"translate":"text.vadditions.actionbar.firestatus.pre"}]
execute as @a[scores={VADS_Fire=1..},gamemode=!creative,gamemode=!spectator] run title @s actionbar [{"translate":"text.vadditions.actionbar.firestatus.time"}," ",{"score":{"objective":"VADS_FireSecond","name":"@s"}},{"translate":"text.vadditions.actionbar.firestatus.second"}]
tag @a[scores={VADS_Fire=1..},tag=VADS_NotOnFire] remove VADS_NotOnFire
execute as @a[scores={VADS_Fire=-20},tag=!VADS_NotOnFire,gamemode=!creative,gamemode=!spectator] run title @s actionbar {"translate":"text.vadditions.actionbar.firestatus.notonfire"}
tag @a[scores={VADS_Fire=-20},tag=!VADS_NotOnFire] add VADS_NotOnFire

#trading with villagers chat
execute as @a[scores={VADS_TradeCheck=1..,VADS_Random=1..30}] run tellraw @s [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.1","color":"gray"}]
execute as @a[scores={VADS_TradeCheck=1..,VADS_Random=31..60}] run tellraw @s [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.2","color":"gray"}]
execute as @a[scores={VADS_TradeCheck=1..,VADS_Random=61..90}] run tellraw @s [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.3","color":"gray"}]
execute as @a[scores={VADS_TradeCheck=1..,VADS_Random=91..100}] run tellraw @s [{"translate":"entity.minecraft.villager","color":"dark_gray"},{"text":": ","color":"dark_gray"},{"translate":"text.vadditions.villager.trade.regional","color":"gray"}]
scoreboard players set @a[scores={VADS_TradeCheck=1..}] VADS_TradeCheck 0

#patches
    #new advancement ids
advancement grant @a[advancements={minecraft:adventure/eat_fish=true}] only minecraft:adventure/eat_cooked_fish
advancement revoke @a[advancements={minecraft:adventure/eat_fish=true}] only minecraft:adventure/eat_fish
    #visual entities
execute at @e[type=minecraft:item,nbt={Item:{tag:{isMachine:1b,VADS_Machine:"vadditions:lazer.transanium"}}}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..3,tag=VADS_VisualEntity]
    #marker
execute as @e[tag=VADS_NoNameMarker] at @s run teleport @s ~ ~.5 ~
tag @e[tag=VADS_NoNameMarker] remove VADS_NoNameMarker
    #look at nearest
execute as @e[tag=VADS_LookAtNearest] at @s facing entity @p[gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
    #pigs to right-clicks
execute as @e[type=minecraft:pig] at @s if entity @a[distance=..16,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1}}},limit=1] run data merge entity @s {Attributes:[{Name:"generic.followRange",Base:0.0d}]}
execute as @e[type=minecraft:pig] at @s unless entity @a[distance=..16,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1}}},limit=1] run data merge entity @s {Attributes:[{Name:"generic.followRange",Base:16.0d}]}
    #carrot on a stick use patch
scoreboard players set @a[scores={VADS_UseCOAS=2..}] VADS_UseCOAS 0
execute as @a[scores={VADS_UseCOAS=1..}] unless entity @s[nbt={SelectedItem:{tag:{isStaff:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{isWeapon:1b}}}] run scoreboard players set @s VADS_UseCOAS 0

# Initial
tellraw @a[tag=!VADS_JoinedOnce] [{"translate":"text.vadditions.chat.firstjoin"},{"text":"\n"},{"translate":"text.vadditions.chat.firstjoin.warning"}]
execute as @a[tag=!VADS_JoinedOnce] run function vadditions:init
tag @a[tag=!VADS_JoinedOnce] add VADS_JoinedOnce

# General Entity Processing
execute as @e[type=minecraft:item] run data merge entity @s {Health:500s,Fire:0s,Invulnerable:1}
execute as @e[type=minecraft:item] at @s if block ~ ~-.2 ~ minecraft:lava run data merge entity @s {Motion:[0.0d,0.1d,0.0d]}
execute as @e[tag=VADS_SpreadEntities] at @s run spreadplayers ~ ~ 1 3 false @s
execute as @e[tag=VADS_SpreadEntities] store result entity @s Pos[1] double 1 run scoreboard players get @s VADS_Pos.Y
tag @e[tag=VADS_SpreadEntities] remove VADS_SpreadEntities

execute as @e[type=minecraft:item,tag=VADS_VisualEntity,scores={VADS_Age=60..}] run kill @s
execute as @e[type=minecraft:item,tag=VADS_VisualEntity,nbt={OnGround:1b}] run kill @s

# Structures
execute at @a[nbt=!{Dimension:1}] if block ~ 0 ~ minecraft:bedrock run function structures:spawn/fill_layer

# Mobs
execute as @e[tag=!VADS_FoundMob,type=!minecraft:player] run function mobs:spawn/check
execute if score Second_10 VADS_Time matches 1 as @e[tag=VADS_RanSound] run tag @s remove VADS_RanSound

# Loot Tables
execute as @e[type=minecraft:ender_dragon,tag=!VADS_LootTableProcessed] run data merge entity @s {DeathLootTable:"minecraft:entities/ender_dragon"}
tag @e[type=minecraft:ender_dragon,tag=!VADS_LootTableProcessed] add VADS_LootTableProcessed

# Process Items
# Sticky TNT
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:sticky_tnt"}}}] run replaceitem entity @s weapon.mainhand diamond_hoe{Unbreakable:1,Damage:5s,isItem:1b,VADS_Item:"vadditions:sticky_tnt",display:{Name:"{\"translate\":\"item.vadditions.tnt.sticky\"}"}}

# Smeltry
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:smeltry"}}}] run replaceitem entity @s weapon.mainhand minecraft:diamond_hoe{Unbreakable:1,Damage:10s,isMachine:1b,VADS_Machine:"vadditions:smeltry",display:{Name:"{\"translate\":\"item.vadditions.smeltry\"}"}}

# Staffs
    # Stand
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.stand"}}}] run replaceitem entity @s weapon.mainhand minecraft:iron_hoe{Unbreakable:1,Damage:22,display:{Name:"{\"translate\":\"item.vadditions.staff.stand\"}"},HideFlags:1,isCustomItem:1b,VADS_Item:"vadditions:staff.stand"}
    # Unsightbereness
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.unsightbereness"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"translate\":\"item.vadditions.staff.unsightbereness\"}",Lore:["§7Type: §cStaff","§7Tier:  §cN/A","","§7Attributes:"," §8None","","§7When in main hand:"," §21.5 Attack Damage"]},HideFlags:1,VADS_Staff:"vadditions:staff.unsightbereness",isStaff:1b,hasCooldown:1b,Unbreakable:1,Damage:6,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:1.5d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"attackDamage"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.6d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}

    # Levitation
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.levitation"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,display:{Name:"{\"translate\":\"item.vadditions.staff.levitation\"}",Lore:["§7Type: §cStaff","§7Tier:  §cmissingno","","§7Attributes:"," §8Levitation"]},HideFlags:1,VADS_Staff:"vadditions:staff.levitation",weaponAttributes:["levitation"],isStaff:1b,hasCooldown:1b,Unbreakable:1,Damage:5,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}

execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.levitation.tier.1"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,display:{Name:"{\"translate\":\"item.vadditions.staff.levitation\"}",Lore:["§7Type: §cStaff","§7Tier:  §a1","","§7Attributes:"," §8Levitation"]},HideFlags:1,VADS_Staff:"vadditions:staff.levitation",weaponAttributes:["levitation.1"],isStaff:1b,hasCooldown:1b,Unbreakable:1,Damage:5,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:1.0d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"attackDamage"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.6d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}],Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}

execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.levitation.tier.2"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,display:{Name:"{\"translate\":\"item.vadditions.staff.levitation\"}",Lore:["§7Type: §cStaff","§7Tier:  §e2","","§7Attributes:"," §8Levitation"]},HideFlags:1,VADS_Staff:"vadditions:staff.levitation",weaponAttributes:["levitation.2"],isStaff:1b,hasCooldown:1b,Unbreakable:1,Damage:5,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:2.0d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"attackDamage"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.6d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}],Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}

execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:staff.levitation.tier.3"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,display:{Name:"{\"translate\":\"item.vadditions.staff.levitation\"}",Lore:["§7Type: §cStaff","§7Tier:  §63","","§7Attributes:"," §8Levitation"]},HideFlags:1,VADS_Staff:"vadditions:staff.levitation",weaponAttributes:["levitation.3"],isStaff:1b,hasCooldown:1b,Unbreakable:1,Damage:5,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:3.0d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"attackDamage"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.6d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}],Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}

# Natura
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:natura"}}}] run replaceitem entity @s weapon.mainhand minecraft:iron_hoe{isTool:1b,VADS_Tool:"vadditions:natura",display:{Name:"{\"color\":\"green\",\"translate\":\"item.vadditions.tool.natura\"}"},Unbreakable:1,Damage:2,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-0.8d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}

# Hammer
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:hammer"}}}] run replaceitem entity @s weapon.mainhand minecraft:golden_axe{isTool:1b,VADS_Tool:"vadditions:hammer",display:{Name:"{\"translate\":\"item.vadditions.tool.hammer\"}"}}

# Mythical Stone
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:stone.mythical"}}}] run replaceitem entity @s weapon.mainhand minecraft:iron_hoe{Processed:1,Unbreakable:1,Damage:1,VADS_Item:"vadditions:stone_mythical",isCustomItem:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1,display:{Name:"{\"translate\":\"item.vadditions.stone.mythical\"}"}}

# Weapons
    # Cactuthorn
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:cactuthorn"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Processed:1,Unbreakable:1,Damage:2,Enchantments:[{id:"minecraft:unbreaking",lvl:10},{id:"minecraft:sharpness",lvl:2}],display:{Name:"{\"translate\":\"item.vadditions.weapon.cactuthorn\"}",Lore:["§7Type: §cRanged Weapon","§7Tier:  §6III","","§7Attributes:"," §8Piercing","","§7When in main hand:"," §27 Second Weapon Cooldown"," §26 Attack Damage Per Damage Tick"," §2Travels 4.25 Blocks (Total)"]},HideFlags:1,VADS_Weapon:"vadditions:cactuthorn",weaponAttributes:["piercing"],isWeapon:1b,hasCooldown:1b,Unbreakable:1,Damage:2,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.0d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}
    # Hellstone
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:hellstone"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:3,Processed:1,Enchantments:[{id:"minecraft:unbreaking",lvl:10},{id:"minecraft:fire_aspect",lvl:2},{id:"minecraft:sharpness",lvl:5}],display:{Name:"{\"translate\":\"item.vadditions.weapon.hellstone\"}",Lore:["§7Type: §cRanged Weapon","§7Tier:  §6Platinum","","§7Attributes:"," §8Piercing"," §8Flame"," §8Imploding","","§7When in main hand:"," §27 Second Weapon Cooldown"," §29 Attack Damage Per Damage Tick"," §2Travels 15.25 Blocks (Total)"]},HideFlags:1,VADS_Weapon:"vadditions:hellstone",weaponAttributes:["piercing","flame"],isWeapon:1b,hasCooldown:1b,Unbreakable:1,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.0d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}
    # IHD
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:ihd"}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:1,Processed:1,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],display:{Name:"{\"translate\":\"item.vadditions.weapon.ihd\"}",Lore:["§7Type: §cHoming Weapon","§7Tier:  §6I","","§7Attributes:"," §8Homing"," §8Poison"," §cDoesn't attack undead"," §cDoesn't kill the entity","","§7When in main hand:"," §27 Second Weapon Cooldown"," §20.5 Attack Damage Per Damage Tick §7(Poison Effect)"," §2Travels for 30 seconds"]},HideFlags:1,VADS_Weapon:"vadditions:ihd",weaponAttributes:["homing","poison","noundead","doesntkill"],isWeapon:1b,hasCooldown:1b,Unbreakable:1,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-2.0d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}
    # Transanium Sword
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:transanium_sword"}}}] run replaceitem entity @s weapon.mainhand minecraft:golden_axe{Unbreakable:1,Damage:1,display:{Name:"{\"translate\":\"item.vadditions.transanium_sword\"}"},Enchantments:[{id:"minecraft:sharpness",lvl:1},{id:"minecraft:knockback",lvl:5},{id:"vadditions:freezing",lvl:1}],HideFlags:1,isWeapon:1b,VADS_Weapon:"vadditions:transanium_sword",hasCustomEnchant:1b,AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:-1.5d,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"attackSpeed"}]}

# Transanium
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:transanium"}}}] run replaceitem entity @s weapon.mainhand minecraft:diamond_hoe{Unbreakable:1,Damage:2,isCustomItem:1b,VADS_Item:"vadditions:ore.transanium",display:{Name:"{\"translate\":\"item.vadditions.ore.transanium\"}"}}

# Lazers
    # Transanium
execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:lazer.transanium"}}}] run replaceitem entity @s weapon.mainhand minecraft:diamond_hoe{Unbreakable:1,Damage:4,isMachine:1b,VADS_Machine:"vadditions:lazer.transanium",display:{Name:"{\"translate\":\"item.vadditions.lazer.transanium\"}"}}

execute as @a[nbt={SelectedItem:{tag:{process:"vadditions:obbane"}}}] run replaceitem entity @s weapon.mainhand minecraft:diamond_pickaxe{display:{Name:"{\"translate\":\"item.vadditions.tool.obbane\"}"},AttributeModifiers:[{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:1.5d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"attackDamage"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:3.0d,Slot:"mainhand",AttributeName:"vadditions.haste.3",Operation:0,Name:"haste.3"},{UUIDMost:-8835796243302889736L,UUIDLeast:-6201521201042469775L,Amount:0.0198023224d,Slot:"mainhand",AttributeName:"generic.movementSpeed",Operation:0,Name:"movementSpeed"}]}