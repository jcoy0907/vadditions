#@s - @e[tag=VADS_LightField.Damage]
#called by weapons:tick

#run damage
effect give @s[tag=VADS_LightField.Damage.Normal] minecraft:instant_damage 1 0 true
effect give @s[tag=VADS_LightField.Damage.Invert] minecraft:instant_health 1 0 true
#audiovisuals
particle minecraft:dust 0 0.438 100 2 ~ ~2 ~ .1 .5 .1 0 2 normal
particle minecraft:enchanted_hit ~ ~2 ~ .1 .5 .1 0 2 normal
playsound minecraft:block.conduit.attack.target voice @a[distance=..5] ~ ~ ~ 100 1.5 1
#remove tags
tag @e[tag=VADS_LightField.Damage.Normal] remove VADS_LightField.Damage.Normal
tag @e[tag=VADS_LightField.Damage.Invert] remove VADS_LightField.Damage.Invert
tag @e[tag=VADS_LightField.Damage] remove VADS_LightField.Damage
