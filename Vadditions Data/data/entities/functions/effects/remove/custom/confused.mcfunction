tag @s remove VADS_ConfusedEffect
tag @s remove VADS_ConfusedProcessed
scoreboard players reset @s VADS_CnfsedTime
data merge entity @s {Attributes:[{Base:5.0d,Name:"generic.followRange"},{Base:0.5d,Name:"generic.attackDamage"}],carriedBlockState:{Name:"minecraft:air"},NoAI:0}