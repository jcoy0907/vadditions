#@s - console
#called by #machines:clock

#bonsai pot creation check
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}}},tag=!VADS_NoSummon] at @s store result score @s VADS_PotCnt align xyz if entity @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}}},dx=1,dy=1,dz=1,tag=!VADS_NoSummon]
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}},OnGround:1b},tag=!VADS_NoSummon,scores={VADS_PotCnt=1}] at @s if block ~ ~ ~ #minecraft:air align xz run function machines:bonsai_pots/summon/empty