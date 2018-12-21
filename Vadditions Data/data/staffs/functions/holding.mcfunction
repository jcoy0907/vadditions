#@s -
#called by

#levitation
    #particles
execute if entity @s[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.levitation"}}}] run function staffs:holding/levitation
#unsightbereness
    #particles
execute if entity @s[nbt={SelectedItem:{tag:{VADS_Staff:"vadditions:staff.unsightbereness"}}}] run function staffs:holding/unsightbereness

#post
scoreboard players set @s[scores={VADS_UseCOAS=1..}] VADS_UseCOAS 0
