# Random
# Author: Andante [EDITED BY JRAGON, ORIGINAL BY RUBISK. THIS HAS BEEN MODIFIED FOR MINECRAFT 1.13]
# Date: October 10th 2018
# Description: Generates a random number between 1 and 100.
scoreboard players set @s VADS_Random4 100
scoreboard players add @s VADS_Random3 0

scoreboard players operation Random1 VADS_Random4 *= Random2 VADS_Random4
scoreboard players operation Random1 VADS_Random4 %= Random2 VADS_Random4
scoreboard players operation @s VADS_Random3 = Random2 VADS_Random4
scoreboard players operation @s VADS_Random3 %= Random1 VADS_Random4
scoreboard players operation @s VADS_Random3 %= @s VADS_Random4