#@s - console
#called by #machines:clock

#bonsai pots
    #creation check
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}}},tag=!VADS_NoSummon] at @s store result score @s VADS_BnsPotCnt align xyz if entity @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}}},dx=1,dy=1,dz=1,tag=!VADS_NoSummon]
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:bonsai_pot"}},OnGround:1b},tag=!VADS_NoSummon,scores={VADS_BnsPotCnt=1}] at @s if block ~ ~ ~ #minecraft:air align xz run function machines:bonsai_pots/create/empty
#sand extractors
    #creation check
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:sand_extractor"}}},tag=!VADS_NoSummon] at @s store result score @s VADS_ExtrctrCnt align xyz if entity @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:sand_extractor"}}},dx=1,dy=1,dz=1,tag=!VADS_NoSummon]
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{isMachine:1b,VADS_Machine:"vadditions:sand_extractor"}},OnGround:1b},tag=!VADS_NoSummon,scores={VADS_ExtrctrCnt=1}] at @s if block ~ ~ ~ #minecraft:air align xz run function machines:sand_extractors/create
    #visual check
execute as @e[tag=VADS_SandExtractor] at @s if block ~ ~1.2 ~ minecraft:sand run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:sand",Count:1}]}
execute as @e[tag=VADS_SandExtractor] at @s if block ~ ~1.2 ~ minecraft:red_sand run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1}]}
execute as @e[tag=VADS_SandExtractor] at @s unless block ~ ~1.2 ~ #minecraft:sand run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1}]}