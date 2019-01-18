#@s - console
#called by #vadditions:modules/death/tick

#pointy sleeping
    #sleep timer
scoreboard players add @a[nbt={Sleeping:1b}] VADS_TimeSlept 1
scoreboard players reset @a[nbt={Sleeping:0b},scores={VADS_TimeSlept=0..}] VADS_TimeSlept
    #death check
execute as @a[gamemode=!creative,gamemode=!spectator,scores={VADS_TimeSlept=50..,VADS_Random=1..9}] run function vadditions:modules/death/pointy_sleeping/check
