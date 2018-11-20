# Random
# Author: Andante [EDITED BY JRAGON, ORIGINAL BY RUBISK. THIS HAS BEEN MODIFIED FOR MINECRAFT 1.13]
# Date: October 10th 2018
# Description: Generates a random number between 1 and 100.
scoreboard players set @s VADS_Random2 100
scoreboard players add @s VADS_Random 0

scoreboard players operation Random1 VADS_Random2 *= Random2 VADS_Random2
scoreboard players operation Random1 VADS_Random2 %= Random2 VADS_Random2
scoreboard players operation @s VADS_Random = Random2 VADS_Random2
scoreboard players operation @s VADS_Random %= Random1 VADS_Random2
scoreboard players operation @s VADS_Random %= @s VADS_Random2

execute as @s[tag=VADS_NeedsOtherRandom] run function vadditions:random_other