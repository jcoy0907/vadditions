execute if score Hardmode VADS_Overall matches 1 run execute as @e[tag=VADS_Undead,nbt=!{Fire:-1s}] run data merge entity @s {Fire:-1s}
execute if score Hardmode VADS_Overall matches 1 run execute as @e[tag=VADS_Undead,tag=!VADS_HardmodeProcessed] run data merge entity @s {Attributes:[{Base:6.0d,Name:"generic.attackDamage"},{Base:0.46000000834465026d,Name:"generic.movementSpeed"},{Base:30.0d,Name:"generic.maxHealth"}],Health:30.0f}
execute if score Hardmode VADS_Overall matches 1 run tag @e[tag=VADS_Undead,tag=!VADS_HardmodeProcessed] add VADS_HardmodeProcessed

execute if score Hardmode VADS_Overall matches 1 run difficulty hard
execute if score Hardmode VADS_Overall matches 0 run difficulty easy