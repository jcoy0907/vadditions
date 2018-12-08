#@s - console
#called by #weapons:tick

#fields
    #light
execute as @e[tag=VADS_LightField,scores={VADS_Random=1..2}] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["VADS_LightField.Particle","VADS_LightFieldEntity"],Silent:1,Invulnerable:1,Invisible:1,Marker:1,Small:1,CustomName:"\"LightField.Particle\""}
kill @e[tag=VADS_LightField.Particle,nbt={OnGround:1b}]
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~ .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~9 ~ ~ .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~-9 ~ ~ .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~9 .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~-9 .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Particle] run particle minecraft:enchanted_hit ~ ~ ~ .1 .5 .1 0 2 normal
execute if score Overall VADS_Random matches 1..30 at @e[tag=VADS_LightField.Particle] run tag @e[type=!minecraft:player,type=!minecraft:item,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_Passive,distance=..10,sort=random,limit=2] add VADS_LightField.Damage.Normal
execute if score Overall VADS_Random matches 1..30 at @e[tag=VADS_LightField.Particle] run tag @e[type=!minecraft:player,type=!minecraft:item,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,distance=..10,sort=random,limit=2] add VADS_LightField.Damage.Invert
tag @e[tag=VADS_LightField.Damage.Normal] add VADS_LightField.Damage
tag @e[tag=VADS_LightField.Damage.Invert] add VADS_LightField.Damage
effect give @e[tag=VADS_LightField.Damage.Normal] minecraft:instant_damage 1 0 true
effect give @e[tag=VADS_LightField.Damage.Invert] minecraft:instant_health 1 0 true
execute at @e[tag=VADS_LightField.Damage] run particle minecraft:dust 0 0.438 100 2 ~ ~2 ~ .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Damage] run particle minecraft:enchanted_hit ~ ~2 ~ .1 .5 .1 0 2 normal
execute at @e[tag=VADS_LightField.Damage] run playsound minecraft:block.conduit.attack.target voice @a[distance=..5] ~ ~ ~ 100 1.5 1
tag @e[tag=VADS_LightField.Damage.Normal] remove VADS_LightField.Damage.Normal
tag @e[tag=VADS_LightField.Damage.Invert] remove VADS_LightField.Damage.Invert
tag @e[tag=VADS_LightField.Damage] remove VADS_LightField.Damage
execute as @e[tag=VADS_LightField] at @s unless block ~ ~ ~ #minecraft:passthrough run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:"{\"translate\":\"entity.vadditions.field.light\",\"color\":\"aqua\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1,EntityTag:{id:"minecraft:armor_stand",Tags:["VADS_LightField","VADS_Field","VADS_LightFieldEntity","VADS_Turn","VADS_NoNameMarker"],CustomName:"{\"translate\":\"entity.vadditions.field.light\",\"color\":\"aqua\"}",CustomNameVisible:1,Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}}}}
execute as @e[tag=VADS_LightField] at @s unless block ~ ~ ~ #minecraft:passthrough run kill @s

#explosives
    #sticky tnt
        #summon
execute at @e[type=minecraft:item,nbt={Item:{tag:{isItem:1b,VADS_Item:"vadditions:sticky_tnt"}},OnGround:1b}] align xz run summon minecraft:tnt ~.5 ~ ~.5 {Fuse:100s,Tags:["VADS_Entity","VADS_CustomTNT","VADS_StickyTNT","VADS_GreenTNT"]}
execute as @e[type=minecraft:item,nbt={Item:{tag:{isItem:1b,VADS_Item:"vadditions:sticky_tnt"}},OnGround:1b}] run kill @s[type=!minecraft:player]
        #stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~1 ~ #minecraft:inadhesive run data merge entity @s {NoGravity:1}
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~.5 #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~-.5 #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~.5 ~ ~ #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~-.5 ~ ~ #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~-.5 #minecraft:inadhesive run function weapons:stick
        #unstick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s if block ~ ~1 ~ #minecraft:inadhesive if block ~ ~ ~.5 #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive if block ~.5 ~ ~ #minecraft:inadhesive if block ~-.5 ~ ~ #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive run data merge entity @s {NoGravity:0}

#ranged weapons
    #cactuthorn
        #summon
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_CactuthornEntity.Front","VADS_CactuthornEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"CactuthornEntity.Front\"}",Marker:1,Small:1,Invisible:1}

execute as @e[tag=VADS_CactuthornEntity.Front] at @s rotated as @p[gamemode=!spectator,distance=..1,scores={VADS_ItemCool=100..}] run tp @s ~ ~ ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Weapon:"vadditions:cactuthorn"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0

scoreboard players set @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] VADS_ItemCool 0
        #timeout explosion
execute as @e[tag=VADS_CactuthornEntity.Front,scores={VADS_WpnRngdTm=30..}] at @s run function weapons:explosions/cactuthorn
execute as @e[tag=VADS_CactuthornEntity.Front,scores={VADS_WpnRngdTm=30..}] run kill @s[type=!minecraft:player]
        #teleportation
execute as @e[tag=VADS_CactuthornEntity.Front,scores={VADS_WpnRngdTm=0..9}] at @s run teleport @s ^ ^ ^.25
execute as @e[tag=VADS_CactuthornEntity.Front,scores={VADS_WpnRngdTm=10..19}] at @s run teleport @s ^ ^ ^.2
execute as @e[tag=VADS_CactuthornEntity.Front,scores={VADS_WpnRngdTm=20..30}] at @s run teleport @s ^ ^ ^.1
        #visuals
execute at @e[tag=VADS_CactuthornEntity.Front] run particle minecraft:enchanted_hit ~ ~ ~ .001 .001 .001 .1 50 normal
execute at @e[tag=VADS_CactuthornEntity.Front] run particle minecraft:block minecraft:cactus ~ ~ ~ 0 0 0 .8 10
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:cactuthorn"}}}] at @s run particle minecraft:block minecraft:cactus
        #trail
execute at @e[tag=VADS_CactuthornEntity.Front] run summon minecraft:area_effect_cloud ~ ~-.5 ~ {Tags:["VADS_Entity","VADS_CactuthornEntity.Follow","VADS_CactuthornEntity","VADS_WeaponEntity","VADS_NoWeaponDamage"],Invisible:1,Invulnerable:1,Small:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"CactuthornEntity.Follow\"}",Duration:30}
execute at @e[tag=VADS_CactuthornEntity.Follow] run particle minecraft:enchanted_hit ~ ~1 ~ 0.001 0.001 0.001 .1 1 normal
        #damage
execute at @e[tag=VADS_CactuthornEntity.Follow] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_UndeadButImmune,distance=..1] minecraft:instant_damage 1 0
execute at @e[tag=VADS_CactuthornEntity.Follow] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,tag=!VADS_UndeadButImmune,distance=..1] minecraft:instant_health 1 0
execute at @e[tag=VADS_CactuthornEntity.Follow] as @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=VADS_UndeadButImmune,distance=..1] run data merge entity @s {Motion:[0.0d,2.0d,0.0d]}
execute at @e[tag=VADS_CactuthornEntity.Front] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_WeaponEntity,distance=..1] run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~
#hellstone
        #summon
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_HellstoneEntity.Front","VADS_HellstoneEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"HellstoneEntity.Front\"}",Marker:1,Small:1,Invisible:1}

execute as @e[tag=VADS_HellstoneEntity.Front] at @s rotated as @p[gamemode=!spectator,distance=..1,scores={VADS_ItemCool=100..}] run tp @s ~ ~ ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Weapon:"vadditions:hellstone"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] run scoreboard players set @s VADS_ItemCool 0
        #timeout explosion
execute as @e[tag=VADS_HellstoneEntity.Front,scores={VADS_WpnRngdTm=90..}] at @s run function weapons:explosions/hellstone
execute as @e[tag=VADS_HellstoneEntity.Front,scores={VADS_WpnRngdTm=90..}] run kill @s[type=!minecraft:player]
        #teleportation
execute as @e[tag=VADS_HellstoneEntity.Front,scores={VADS_WpnRngdTm=0..29}] at @s run teleport @s ^ ^ ^.25
execute as @e[tag=VADS_HellstoneEntity.Front,scores={VADS_WpnRngdTm=30..59}] at @s run teleport @s ^ ^ ^.2
execute as @e[tag=VADS_HellstoneEntity.Front,scores={VADS_WpnRngdTm=60..89}] at @s run teleport @s ^ ^ ^.1
        #visuals
execute at @e[tag=VADS_HellstoneEntity.Front] run particle minecraft:smoke ~ ~ ~ .001 .001 .001 .1 10 normal
execute at @e[tag=VADS_HellstoneEntity.Front] run particle minecraft:block minecraft:nether_quartz_ore ~ ~ ~ 0 0 0 .8 10
execute at @e[tag=VADS_HellstoneEntity.Front] run particle minecraft:flame ~ ~ ~ 0 0 0 .08 20
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:hellstone"}}}] at @s run particle minecraft:flame
        #trail
execute at @e[tag=VADS_HellstoneEntity.Front] run summon minecraft:area_effect_cloud ~ ~-.5 ~ {Tags:["VADS_Entity","VADS_HellstoneEntity.Follow","VADS_HellstoneEntity","VADS_WeaponEntity","VADS_NoWeaponDamage"],Invisible:1,Invulnerable:1,Small:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"HellstoneEntity.Follow\"}",Duration:90}
execute as @e[tag=VADS_HellstoneEntity.Follow] unless score @s VADS_Age matches 41.. run scoreboard players add @s VADS_Age 1
scoreboard players set @e[tag=VADS_HellstoneEntity.Follow,scores={VADS_Age=41..}] VADS_Age 0
execute at @e[tag=VADS_HellstoneEntity.Follow,scores={VADS_Age=..10}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 1 normal @a
        #damage
execute at @e[tag=VADS_HellstoneEntity.Follow] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_UndeadButImmune,distance=..1] minecraft:instant_damage 1 0
execute at @e[tag=VADS_HellstoneEntity.Follow] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,tag=!VADS_UndeadButImmune,distance=..1] minecraft:instant_health 1 0
execute at @e[tag=VADS_HellstoneEntity.Follow] as @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=VADS_UndeadButImmune,distance=..1] run data merge entity @s {Motion:[0.0d,2.0d,0.0d]}
execute at @e[tag=VADS_HellstoneEntity.Front] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_WeaponEntity,distance=..1] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~
execute at @e[tag=VADS_HellstoneEntity] as @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_WeaponEntity,distance=..1] run data merge entity @s {Fire:100s}
    #ihd
        #summon
execute at @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~

execute at @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_IHDEntity.Front","VADS_IHDEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"IHDEntity.Front\"}",Marker:1,Small:1,Invisible:1}

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=0..99},nbt={SelectedItem:{tag:{VADS_Weapon:"vadditions:ihd"}}}] at @s run playsound minecraft:block.anvil.destroy voice @s ~ ~ ~ 100 2 0

scoreboard players set @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] VADS_ItemCool 0
        #timeout explosion
execute as @e[tag=VADS_IHDEntity,scores={VADS_WpnRngdTm=600..}] at @s run function weapons:explosions/ihd
execute as @e[tag=VADS_IHDEntity,scores={VADS_WpnRngdTm=600..}] run kill @s[type=!minecraft:player]
        #teleportation
execute as @e[tag=VADS_IHDEntity.Front,scores={VADS_WpnRngdTm=0..59}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^1 ~ ~
execute as @e[tag=VADS_IHDEntity.Front,scores={VADS_WpnRngdTm=60..119}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^.5 ~ ~
execute as @e[tag=VADS_IHDEntity.Front,scores={VADS_WpnRngdTm=120..}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^.2 ~ ~
        #visuals
execute as @e[tag=VADS_IHDEntity.Front] at @s run particle minecraft:smoke ~ ~ ~ .001 .001 .001 .1 10
execute as @e[tag=VADS_IHDEntity.Front] at @s run particle minecraft:block minecraft:black_concrete ~ ~ ~ 0 0 0 .8 10
execute at @e[tag=VADS_IHDEntity.Front] run particle minecraft:falling_dust minecraft:redstone_block ~ ~1 ~ 0 0 0 1 1 normal
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:ihd"}}}] at @s run particle minecraft:block minecraft:black_concrete
        #damage
execute at @e[type=minecraft:armor_stand,tag=VADS_IHDEntity.Front] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_WeaponEntity,distance=..1,nbt=!{Health:1.0f}] run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=VADS_IHDEntity.Front] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,tag=!VADS_WeaponEntity,distance=..1,nbt=!{Health:1.0f}] run effect give @e[distance=..1,tag=!VADS_Undead,tag=!VADS_NoWeaponDamage] minecraft:poison 10 0

#loot tables
    #phantom
execute at @e[type=minecraft:armor_stand,tag=VADS_WeaponEntity] as @e[type=minecraft:phantom,tag=!VADS_Processed,distance=..1] run function weapons:loot_tables/add/entities/phantom/killed_by_weapon

#post
execute as @a[scores={VADS_UseCOAS=1..},nbt={SelectedItem:{tag:{isWeapon:1b}}}] run scoreboard players set @s VADS_UseCOAS 0