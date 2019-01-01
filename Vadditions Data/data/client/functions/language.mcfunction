#@s - player
#called arbitrarily

#disable function execution message
gamerule sendCommandFeedback false
#tell player language
tellraw @s [{"translate":"text.vadditions.language","color":"gray"}," ",{"translate":"language.name","color":"dark_gray"}," §8- ",{"translate":"language.region","color":"dark_gray"}," §8(",{"translate":"language.code","color":"dark_gray"},"§8)"]
