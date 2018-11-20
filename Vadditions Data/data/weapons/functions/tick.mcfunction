#fields
    #light
execute as @e[type=minecraft:armor_stand,tag=VADS_LightField,scores={VADS_Random=1..2}] at @s run summon minecraft:armor_stand ~ ~4 ~ {Tags:["VADS_LightField.Particle","VADS_LightFieldEntity"],Silent:1,Invulnerable:1,Invisible:1,Marker:1,Small:1,CustomName:"\"LightField.Particle\""}
kill @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle,nbt={OnGround:1b}]
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~ .1 .5 .1 0 2 normal
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~9 ~ ~ .1 .5 .1 0 2 normal
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~-9 ~ ~ .1 .5 .1 0 2 normal
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~9 .1 .5 .1 0 2 normal
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:dust 0 0.438 100 1 ~ ~ ~-9 .1 .5 .1 0 2 normal
execute at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run particle minecraft:enchanted_hit ~ ~ ~ .1 .5 .1 0 2 normal
execute if score Overall VADS_Random matches 1..30 at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run tag @e[type=!minecraft:player,type=!minecraft:item,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,tag=!VADS_Passive,distance=..10,sort=random,limit=2] add VADS_LightField.Damage.Normal
execute if score Overall VADS_Random matches 1..30 at @e[type=minecraft:armor_stand,tag=VADS_LightField.Particle] run tag @e[type=!minecraft:player,type=!minecraft:item,tag=!VADS_NoWeaponDamage,tag=VADS_Undead,distance=..10,sort=random,limit=2] add VADS_LightField.Damage.Invert
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
execute as @e[type=minecraft:armor_stand,tag=VADS_LightField] at @s unless block ~ ~ ~ #minecraft:passthrough run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:"{\"translate\":\"entity.vadditions.field.light\",\"color\":\"aqua\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1,EntityTag:{id:"minecraft:armor_stand",Tags:["VADS_LightField","VADS_LightFieldEntity","VADS_Turn","VADS_NoNameMarker"],CustomName:"{\"translate\":\"entity.vadditions.field.light\",\"color\":\"aqua\"}",CustomNameVisible:1,Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}}}}
execute as @e[type=minecraft:armor_stand,tag=VADS_LightField] at @s unless block ~ ~ ~ #minecraft:passthrough run kill @s

#sticky tnt
    #features
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~1 ~ #minecraft:inadhesive run data merge entity @s {NoGravity:1}
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~.5 #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~-.5 #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~.5 ~ ~ #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~-.5 ~ ~ #minecraft:inadhesive run function weapons:stick
execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s unless block ~ ~ ~-.5 #minecraft:inadhesive run function weapons:stick

execute as @e[tag=VADS_StickyTNT,type=minecraft:tnt] at @s if block ~ ~1 ~ #minecraft:inadhesive if block ~ ~ ~.5 #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive if block ~.5 ~ ~ #minecraft:inadhesive if block ~-.5 ~ ~ #minecraft:inadhesive if block ~ ~ ~-.5 #minecraft:inadhesive run data merge entity @s {NoGravity:0}

#cactuthorn
execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront,scores={VADS_WpnRngdTm=30..}] at @s run function weapons:explosions/cactuthorn
execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntity,scores={VADS_WpnRngdTm=30..}] run kill @s[type=!minecraft:player]

execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront,scores={VADS_WpnRngdTm=0..9}] at @s run teleport @s ^ ^ ^.25
execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront,scores={VADS_WpnRngdTm=10..19}] at @s run teleport @s ^ ^ ^.2
execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront,scores={VADS_WpnRngdTm=20..30}] at @s run teleport @s ^ ^ ^.1

execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront] run particle minecraft:enchanted_hit ~ ~ ~ .001 .001 .001 .1 50 force
execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront] run particle minecraft:block minecraft:cactus ~ ~ ~ 0 0 0 .8 10
execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront] run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["VADS_Entity","VADS_CactuthornEntityFollow","VADS_CactuthornEntity","VADS_WeaponEntity","VADS_NoWeaponDamage"],Invisible:1,Invulnerable:1,Small:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"CactuthornEntityFollow\"}"}

    #damage
execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntity] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,limit=1] run playsound minecraft:entity.phantom.bite voice @a[distance=..10] ~ ~ ~ .5 2 1
execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntity] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,tag=!VADS_Undead] minecraft:instant_damage 1 0 true
execute at @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntity] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,tag=VADS_Undead] minecraft:instant_health 1 0 true

#IHD (Insane Homing Device)
execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntity,scores={VADS_WpnRngdTm=600..}] at @s run function weapons:explosions/ihd
execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntity,scores={VADS_WpnRngdTm=600..}] run kill @s[type=!minecraft:player]

execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntityFront,scores={VADS_WpnRngdTm=0..59}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^1 ~ ~
execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntityFront,scores={VADS_WpnRngdTm=60..119}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^.5 ~ ~
execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntityFront,scores={VADS_WpnRngdTm=120..}] at @s facing entity @e[sort=nearest,limit=1,distance=..20,tag=!VADS_NoWeaponDamage,tag=!VADS_Undead,nbt=!{Health:1.0f},type=!minecraft:player] feet run teleport @s ^ ^ ^.2 ~ ~

execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntityFront] at @s run particle minecraft:smoke ~ ~ ~ .001 .001 .001 .1 10 force
execute as @e[type=minecraft:armor_stand,tag=VADS_IHDEntityFront] at @s run particle minecraft:block minecraft:black_concrete ~ ~ ~ 0 0 0 .8 10

    #damage
execute at @e[type=minecraft:armor_stand,tag=VADS_IHDEntity] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,limit=1] run playsound minecraft:entity.phantom.bite voice @a[distance=..10] ~ ~ ~ .5 2 1
execute at @e[type=minecraft:armor_stand,tag=VADS_IHDEntity] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,tag=!VADS_Undead,nbt=!{ActiveEffects:[{Id:19b}]}] minecraft:poison 1 1

#hellstone
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront,scores={VADS_WpnRngdTm=90..}] at @s run function weapons:explosions/hellstone
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntity,scores={VADS_WpnRngdTm=90..}] run kill @s[type=!minecraft:player]

execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront,scores={VADS_WpnRngdTm=0..29}] at @s run teleport @s ^ ^ ^.25
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront,scores={VADS_WpnRngdTm=30..59}] at @s run teleport @s ^ ^ ^.2
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront,scores={VADS_WpnRngdTm=60..89}] at @s run teleport @s ^ ^ ^.1

execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront] at @s run particle minecraft:smoke ~ ~ ~ .001 .001 .001 .1 10 force
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront] at @s run particle minecraft:block minecraft:nether_quartz_ore ~ ~ ~ 0 0 0 .8 10
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 .8 10
execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront] at @s unless score @s VADS_WpnRngdTm matches 30.. run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["VADS_Entity","VADS_HellstoneEntityFollow","VADS_HellstoneEntity","VADS_WeaponEntity","VADS_NoWeaponDamage"],Invisible:1,Invulnerable:1,Small:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"HellstoneEntityFollow\"}"}
    #damage
execute at @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntity] if entity @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,limit=1] run playsound minecraft:entity.phantom.bite voice @a[distance=..10] ~ ~ ~ .5 2 1
execute at @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntity] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,tag=!VADS_Undead] minecraft:instant_damage 1 1 true
execute at @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntity] run effect give @e[type=!minecraft:player,tag=!VADS_NoWeaponDamage,distance=..1,tag=VADS_Undead] minecraft:instant_health 1 1 true

#visuals
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:ihd"}}}] at @s run particle minecraft:block minecraft:black_concrete
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:cactuthorn"}}}] at @s run particle minecraft:block minecraft:cactus
execute as @e[type=minecraft:player,gamemode=!spectator,nbt=!{ActiveEffects:[{Id:14b}]},nbt={SelectedItem:{tag:{isWeapon:1b,VADS_Weapon:"vadditions:hellstone"}}}] at @s run particle minecraft:flame

#summoning
    #hellstone
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_HellstoneEntityFront","VADS_HellstoneEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"HellstoneEntityFront\"}",Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,Damage:3,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],display:{Name:"{\"translate\":\"item.vadditions.weapon.hellstone\"}"}}}]}

execute as @e[type=minecraft:armor_stand,tag=VADS_HellstoneEntityFront] at @s rotated as @a[distance=..1,scores={VADS_ItemCool=100..}] run teleport @s ~ ~ ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:hellstone",isWeapon:1b}}}] run scoreboard players set @s VADS_ItemCool 0

    #cactuthorn
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_CactuthornEntityFront","VADS_CactuthornEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"CactuthornEntityFront\"}",Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,Damage:2,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],display:{Name:"{\"translate\":\"item.vadditions.weapon.cactuthorn\"}"}}}]}

execute as @e[type=minecraft:armor_stand,tag=VADS_CactuthornEntityFront] at @s rotated as @a[distance=..1,scores={VADS_ItemCool=100..}] run teleport @s ~ ~ ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:cactuthorn",isWeapon:1b}}}] run scoreboard players set @s VADS_ItemCool 0

    #IHD (Insane Homing Device)
execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["VADS_Entity","VADS_IHDEntityFront","VADS_IHDEntity","VADS_WeaponEntity","VADS_NoWeaponDamage","VADS_FireStand"],NoGravity:1,CustomName:"{\"text\":\"IHDEntityFront\"}",Marker:1,Small:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1,Damage:1,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],display:{Name:"{\"translate\":\"item.vadditions.weapon.ihd\"}"}}}]}

execute as @a[scores={VADS_UseCOAS=1..,VADS_ItemCool=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{VADS_Weapon:"vadditions:ihd",isWeapon:1b}}}] run scoreboard players set @s VADS_ItemCool 0

    #sticky tnt
execute at @e[type=minecraft:item,nbt={Item:{tag:{isItem:1b,VADS_Item:"vadditions:sticky_tnt"}},OnGround:1b}] align xz run summon minecraft:tnt ~.5 ~ ~.5 {Fuse:100s,Tags:["VADS_CustomTNT","VADS_StickyTNT","VADS_GreenTNT"]}
execute as @e[type=minecraft:item,nbt={Item:{tag:{isItem:1b,VADS_Item:"vadditions:sticky_tnt"}},OnGround:1b}] run kill @s[type=!minecraft:player]

#post
execute as @a[scores={VADS_UseCOAS=1..},nbt={SelectedItem:{tag:{isWeapon:1b}}}] run scoreboard players set @s VADS_UseCOAS 0