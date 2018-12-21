#@s - console
#called by #staffs:tick

#only run checks for players holding a staff
execute as @a[nbt={SelectedItem:{tag:{isStaff:1b}}}] at @s run function staffs:holding
