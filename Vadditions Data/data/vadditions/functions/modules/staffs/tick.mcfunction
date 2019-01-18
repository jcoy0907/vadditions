#@s - console
#called by #vadditions:modules/staffs/tick

#only run checks for players holding a staff
execute as @a[nbt={SelectedItem:{tag:{isStaff:1b}}}] at @s run function vadditions:modules/staffs/holding
