#@s = custom crafter passed recipe check if block ~ ~ ~ LEVITATION STAFF RECIPE
#called by custom_crafting:advanced/recipes/staffs/levitation

data merge block ~ ~ ~ {Items:[]}
loot replace block ~ ~ ~ container.8 loot custom_crafting:advanced/staffs/levitation
