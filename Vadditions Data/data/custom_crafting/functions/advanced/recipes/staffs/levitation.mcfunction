#@s = custom crafter passed recipe check if block ~ ~ ~ LEVITATION STAFF RECIPE
#called by custom_crafting:advanced/recipes/staffs/levitation

setblock ~ ~ ~ minecraft:air replace
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"translate\":\"block.vadditions.customcrafter.advanced\"}",LootTable:"custom_crafting:advanced/staffs/levitation"}