#@s - console
#called by #minecraft:load

#notify of reload
execute store result score DataPackCount VADS_ResultCount run datapack list enabled
execute if score DataPackCount VADS_ResultCount matches ..1 run tellraw @a {"translate":"text.vadditions.chat.vanilla_is_disabled"}
execute store success score EnableVanilla VADS_SuccessChck run datapack enable vanilla
execute if score EnableVanilla VADS_SuccessChck matches 1 run tellraw @a {"translate":"text.vadditions.chat.enabled_vanilla","clickEvent":{"action":"open_url","value":"https://minecraft.net"}}
execute if score EnableVanilla VADS_SuccessChck matches 0 run tellraw @a {"translate":"text.vadditions.chat.loaded_pack","clickEvent":{"action":"open_url","value":"https://vadditions-datapack.wikia.com"}}
#add objectives
scoreboard objectives add VADS_WpnRngdTm dummy {"translate":"text.scoreboard.vadditions.rangedtime"}
scoreboard objectives add VADS_UseCOAS minecraft.used:minecraft.carrot_on_a_stick {"translate":"text.scoreboard.vadditions.usecoas"}
scoreboard objectives add VADS_UseIronHoe minecraft.used:minecraft.iron_hoe {"translate":"text.scoreboard.vadditions.useironhoe"}
scoreboard objectives add VADS_ItemCool dummy {"translate":"text.scoreboard.vadditions.weaponcool"}
scoreboard objectives add VADS_Overall dummy {"translate":"text.scoreboard.vadditions.overall"}
scoreboard objectives add VADS_CnfsedTime dummy {"translate":"text.scoreboard.vadditions.cnfsedtime"}
scoreboard objectives add VADS_Random dummy {"translate":"text.scoreboard.vadditions.random"}
scoreboard objectives add VADS_Random2 dummy {"translate":"text.scoreboard.vadditions.random2"}
scoreboard objectives add VADS_Random3 dummy {"translate":"text.scoreboard.vadditions.random"}
scoreboard objectives add VADS_Random4 dummy {"translate":"text.scoreboard.vadditions.random2"}
scoreboard objectives add VADS_Weight dummy {"translate":"text.scoreboard.vadditions.weight"}
scoreboard objectives add VADS_Time dummy {"translate":"text.scoreboard.vadditions.time"}
scoreboard objectives add VADS_SecondTime dummy {"translate":"text.scoreboard.vadditions.secondtime"}
scoreboard objectives add VADS_DeathCheck minecraft.custom:minecraft.deaths {"translate":"text.scoreboard.vadditions.deathcheck"}
scoreboard objectives add VADS_SquidKills minecraft.killed:minecraft.squid {"translate":"text.scoreboard.vadditions.squidkills"}
scoreboard objectives add VADS_CrouchCMs minecraft.custom:crouch_one_cm {"translate":"text.scoreboard.vadditions.crouch_cms"}
scoreboard objectives add VADS_FreezeTimer dummy {"translate":"text.scoreboard.vadditions.freezetimer"}
scoreboard objectives add VADS_FrzUseTimer dummy {"translate":"text.scoreboard.vadditions.freezeusetimer"}
scoreboard objectives add VADS_HealthDef health {"translate":"text.scoreboard.vadditions.healthdefault"}
scoreboard objectives add VADS_FoodDef food {"translate":"text.scoreboard.vadditions.fooddefault"}
scoreboard objectives add VADS_BubbleDef air {"translate":"text.scoreboard.vadditions.bubbledefault"}
scoreboard objectives add VADS_ArmorDef armor {"translate":"text.scoreboard.vadditions.armordefault"}
scoreboard objectives add VADS_LevelsDef level {"translate":"text.scoreboard.vadditions.levelsdefault"}
scoreboard objectives add VADS_XPDef xp {"translate":"text.scoreboard.vadditions.experiencedefault"}
scoreboard objectives add VADS_CheckBiome dummy {"translate":"text.scoreboard.vadditions.checkbiome"}
scoreboard objectives add VADS_CreeperTime dummy {"translate":"text.scoreboard.vadditions.creepertime"}
scoreboard objectives add VADS_Fuse dummy {"translate":"text.scoreboard.vadditions.fuse"}
scoreboard objectives add VADS_Age dummy {"translate":"text.scoreboard.vadditions.age"}
scoreboard objectives add VADS_SuccessChck dummy {"translate":"text.scoreboard.vadditions.successcheck"}
scoreboard objectives add VADS_ResultCount dummy {"translate":"text.scoreboard.vadditions.resultcount"}
scoreboard objectives add VADS_StackSize dummy {"translate":"text.scoreboard.vadditions.stacksize"}
scoreboard objectives add VADS_SlotCount dummy {"translate":"text.scoreboard.vadditions.slotcount"}
scoreboard objectives add VADS_TimeSlept dummy {"translate":"text.scoreboard.vadditions.timeslept"}
scoreboard objectives add VADS_EETick dummy {"translate":"text.scoreboard.vadditions.eetick"}
scoreboard objectives add VADS_FrstStckSze dummy {"translate":"text.scoreboard.vadditions.stacksize.first"}
scoreboard objectives add VADS_NewStckSze dummy {"translate":"text.scoreboard.vadditions.stacksize.new"}
scoreboard objectives add VADS_Fire dummy {"translate":"text.scoreboard.vadditions.firestatus"}
scoreboard objectives add VADS_FireSecond dummy {"translate":"text.scoreboard.vadditions.firestatus"}
scoreboard objectives add VADS_CCFire dummy {"translate":"text.scoreboard.vadditions.firestatus.customcrafters"}
scoreboard objectives add VADS_LeaveGame minecraft.custom:minecraft.leave_game {"translate":"text.scoreboard.vadditions.leavegame"}
scoreboard objectives add VADS_Pos.Y dummy {"translate":"text.scoreboard.vadditions.position.y"}
scoreboard objectives add VADS_Tick dummy {"translate":"text.scoreboard.vadditions.tick"}
scoreboard objectives add VADS_XPOrbValue dummy {"translate":"text.scoreboard.vadditions.experienceorbvalue"}
scoreboard objectives add VADS_XPOrbValueS dummy {"translate":"text.scoreboard.vadditions.experienceorbvalue.sum"}
scoreboard objectives add VADS_Independent dummy {"translate":"text.scoreboard.vadditions.variable.independent"}
scoreboard objectives add VADS_Swim minecraft.custom:minecraft.swim_one_cm {"translate":"text.scoreboard.vadditions.swim_one_cm"}
scoreboard objectives add VADS_SmltryCnt dummy {"translate":"text.scoreboard.vadditions.smeltrycount"}
scoreboard objectives add VADS_BnsPotCnt dummy {"translate":"text.scoreboard.vadditions.bonsaipotcount"}
scoreboard objectives add VADS_TagCount dummy {"translate":"text.scoreboard.vadditions.tagcount"}
scoreboard objectives add VADS_BPDirtCount dummy {"translate":"text.scoreboard.vadditions.bonsaipotdirtcount"}
scoreboard objectives add VADS_ExtrctrCnt dummy {"translate":"text.scoreboard.vadditions.sandextractorcount"}
scoreboard objectives add VADS_Count dummy {"translate":"text.scoreboard.vadditions.count"}

execute unless score BuildNumber VADS_Overall matches 12.. run scoreboard objectives remove VADS_RndProc
execute unless score BuildNumber VADS_Overall matches 15.. run scoreboard objectives remove VADS_StckMltplr
execute unless score BuildNumber VADS_Overall matches 15.. run scoreboard objectives remove VADS_FrstStckCnt
execute unless score BuildNumber VADS_Overall matches 22.. run scoreboard objectives remove VADS_MineWheat
execute unless score BuildNumber VADS_Overall matches 22.. run scoreboard objectives remove VADS_MineCarrot
execute unless score BuildNumber VADS_Overall matches 22.. run scoreboard objectives remove VADS_MinePotato
execute unless score BuildNumber VADS_Overall matches 22.. run scoreboard objectives remove VADS_MineBeets
execute unless score BuildNumber VADS_Overall matches 23.. run tag @e[tag=VADS_FireStand,tag=VADS_OreEntity] remove VADS_FireStand
execute unless score BuildNumber VADS_Overall matches 24.. run scoreboard objectives remove VADS_OreEntDens
execute unless score BuildNumber VADS_Overall matches 24.. run scoreboard objectives remove VADS_PotCnt
execute unless score BuildNumber VADS_Overall matches 24.. run bossbar remove vads:status/item_recharge
execute unless score BuildNumber VADS_Overall matches 25.. run bossbar remove vads:status/bosshealth/white_castle_master
execute unless score BuildNumber VADS_Overall matches 25.. run bossbar remove vadditions:status/bosshealth/white_castle_master
execute unless score BuildNumber VADS_Overall matches 25.. run scoreboard objectives remove VADS_HealthCheck

#gamerules and other general commands
recipe give @a *
execute unless score LoadedOnce VADS_Overall matches 1 run gamerule commandBlockOutput false
execute unless score LoadedOnce VADS_Overall matches 1 run gamerule logAdminCommands false
execute unless score LoadedOnce VADS_Overall matches 1 run gamerule disableElytraMovementCheck true
#add teams
team add VADS_NoCollision
team modify VADS_NoCollision displayName {"translate":"text.team.vadditions.nocollision"}
team modify VADS_NoCollision seeFriendlyInvisibles false
team modify VADS_NoCollision friendlyFire false
team modify VADS_NoCollision collisionRule never

bossbar add vadditions:boss_health/white_castle_master {"translate":"text.bossbar.bosshealth.white_castle_master"}
bossbar set vadditions:boss_health/white_castle_master max 750
bossbar set vadditions:boss_health/white_castle_master color blue
bossbar set vadditions:boss_health/white_castle_master style notched_20
#update messages
    #check for the new build system
execute if score VersionNum-Builds VADS_Overall matches 0.. run scoreboard players operation BuildNumber VADS_Overall = VersionNum-Builds VADS_Overall
execute unless score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall if score VersionNum-Builds VADS_Overall matches 0.. run tellraw @a {"translate":"text.vadditions.new_build_system","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
    #store build number
scoreboard players operation BuildNumber.Prev VADS_Overall = BuildNumber VADS_Overall
    #update current build number (MODIFY BUILD COUNT HERE)
scoreboard players set BuildNumber VADS_Overall 26
    #if updating, send update message
execute unless score VersionNum-Builds VADS_Overall matches 0.. if score BuildNumber.Prev VADS_Overall < BuildNumber VADS_Overall run tellraw @a {"translate":"text.vadditions.update","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
    #if downdating, send warning message
execute if score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall run tellraw @a {"translate":"text.vadditions.downdate","clickEvent":{"action":"open_url","value":"https://github.com/AndanteDevs/vadditions/releases"}}
execute if score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall run datapack disable "file/Vadditions Data"
execute if score BuildNumber.Prev VADS_Overall > BuildNumber VADS_Overall run scoreboard players operation BuildNumber VADS_Overall = BuildNumber.Prev VADS_Overall
    #remove fake players
scoreboard players reset BuildNumber.Prev VADS_Overall
scoreboard players reset VersionNum-Builds VADS_Overall

#initial scores
scoreboard players set Random2 VADS_Random2 100011001
scoreboard players set Random1 VADS_Random2 100
scoreboard players set @a VADS_Random2 100

scoreboard players set Random2 VADS_Random4 100011001
scoreboard players set Random1 VADS_Random4 100
scoreboard players set @a VADS_Random4 100

scoreboard players set PulseTick VADS_Tick 16
scoreboard players set TickSecond VADS_Independent 20

scoreboard players set LoadedOnce VADS_Overall 1
