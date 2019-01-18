#@s - @e[tag=!VADS_ForceSpawnProcessed,tag=VADS_ForceSpawn,tag=VADS_MythicalCleric]
#called by vadditions:modules/entities/tick

#turn villager
data merge entity @s {Tags:["VADS_Entity","VADS_MythicalCleric","VADS_MythicalClericProcessedEasymode"],CustomName:"{\"translate\":\"entity.vadditions.villager.mythical_cleric\"}",VillagerData:{profession:"minecraft:cleric",level:6,type:"minecraft:plains"},Offers:{Recipes:[{maxUses:7,uses:0,rewardExp:1b,buy:{id:"minecraft:stone",Count:1b},sell:{id:"minecraft:cobblestone",Count:2b}},{maxUses:1,uses:0,rewardExp:100b,buy:{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1,VADS_Item:"vadditions:stone_mythical",isCustomItem:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1,display:{Name:"{\"translate\":\"item.vadditions.stone.mythical\"}"}}},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:["{\"translate\":\"text.mythical_works.book.page.1\"}","{\"translate\":\"text.mythical_works.book.page.2\"}","{\"translate\":\"text.mythical_works.book.page.3\"}","{\"translate\":\"text.mythical_works.book.page.4\"}","{\"translate\":\"text.mythical_works.book.page.5\"}"],author:"Tim",title:"§5§lThe Mythical Works"}}}]}}
#add tags
tag @s add VADS_ForceSpawnProcessed
