CHANGELOG
=========

# v1.1.0.0-r (build 30)
## Bug fixes (1)
- Removed duplicate recipes
## Changes (6)
- Updated to 1.14
    - Modified bonsai pots for 1.14
    - Updated dye names
    - Updated profession tags on villagers
    - Removed certain recipe packs
- Added racks (replaced and upgraded item frames)
- Improved shields (better resolution and colours)
- Streamlined mythical cleric spawning - mythical clerics in dungeons should now spawn again
- Changed all `tag=VADS_...` to `type=#vadditions:ENTITY_TYPE`
- Changed all `Unbreaking:1b` and `Damage:#` to `CustomModelData:#` values

# v1.0.4.0-r (build 29)
## Bug fixes (1)
- Fixed multiplayer sleeping
## Changes (8)
- Added particles to armour stand modifications
- Removed Nether bedrock replacement
- World generation mechanics now set the bedrock layer to barriers, not obsidian
- Renamed advancement `Teeny Weeny` (`vadditions:pose`) to `Pretty Posing`
- Renamed `Bugs` to `Bug fixes` in `CHANGELOG.md` because it makes more sense
- Removed unnecessary objectives
- Renamed objective `VADS_BubbleDef` to `VADS_Air`
- Modified how the `sendCommandFeedback` gamerule is set
- Performance improvements

# v1.0.3.0-r (build 28)
## Bug fixes (2)
- Fixed the function clock
- Fixed bonsai pots

# v1.0.2.1-r (build 27)
## Changes (2)
- Minor performance edits
- Removed and renamed a few functions

# v1.0.2.0-r (build 26)
## Bug fixes (1)
- Transanium lasers would not spawn in due to a file being renamed, but the related function command not being renamed
## Changes (4)
- Performance improvements (thanks to Misode)
- Changed `HOW_TO_UPDATE.md`
- Made a few bug fixes clearer below
- Removed unnecessary functions

# v1.0.1.0-r (build 25)
## Bug fixes (3)
- The freezing enchant would not display particles
- There was an error in the compressor creation function
- Creating Retfarcnu would convert the dispenser into a dropper
## Changes (12)
- Added fake enchant book give functions (vadditions:give/books/fake_enchant/[enchant]/[lvl])
- Removed randomly-textured grass
- Renamed any `Cube` model part names in the resources to `cube`
- Corrected heading order in this changelog
- Renamed fake player `VersionNum-Builds` in objective `VADS_Overall` to `BuildNumber`
- Added downdating error message
- Re-organised function `vadditions:tick`
- Removed spread entities check
- Changed and updated custom crafter creation checks and removal functions (check GitHub compare in `custom_crafting:clock` for changes)
- Improved elevator mechanics
- Elevators now make a noise when used
- Renamed boss bar `vadditions:status/bosshealth/white_castle_master` to `vadditions:boss_health/white_castle_master`

# v1.0.0.0-r (build 24)
## Bug fixes (18)
- Custom block fire brightness checks were in the clock instead of the tick
- All `VADS_IsSprite` entities didn't have the `VADS_NoWeaponDamage` tag
- The Staff of Unsightbereness would use the Staff of Levitation's texture
- Saplings planting themselves and mythical cleric processing called non-existent functions and wouldn't work
- If a skeleton or husk spawned in the desert, they wouldn't kill themselves and then spawn on loop
- Skeletons and witches spawning in jungle biomes would say `I`ve spawned` in the chat
- Switching away from holding an item that has a cooldown while an item is cooling down would flash the actionbar
- Freeze attacks would affect players in creative/spectator
- Damaging minecarts would run when a minecart was stationary
- Compressors would run if there was a block above itself
- Bonsai pots would check for `minecraft:grass_block` instead of `#vadditions:holds/sapling`
- The IHD now only affects the target entity instead of nearby entities
- Fixed a splash text typo
- Removed the item recharge boss bar as it wasn't multiplayer friendly
- Sticky TNT didn't have the `VADS_Entity` tag
- If a basic crafter was next to an advanced crafter it would remove itself
- You could easily spawn two basic crafters on top of each other
- Added missing lang
## Changes (69)
- Added sand extractors
- Added universal dyeing
- Added references to my life in the splash text...
- Added observer notification armour stands
- Added armour stand state modifications
- Villagers give witty remarks when you trade with them
- You now get an error sound when you try to use an item while it is still cooling down
- Enhanced performance
- Advanced crafters can now perform basic crafter tasks (apart from turn into an advanced crafter, of course!)
- Added a notification in chat to kick any sleeping players (multiplayer only)
- Added build numbers to this changelog
- Added change/bug counts to this changelog
- Added a falling dust particle to the IHD
- Added particles for the trailing weapon entities
- Made transanium ore's brightness dynamic by removing its fire tag
- The Retfarcnu's front texture is now on the east and west faces instead of east and north
- Anything that was `customcrafting` or `customcrafters` is now `custom_crafting` or `custom_crafters`
- Custom crafters don't drop their items when they aren't supposed to drop, such as in creative mode or with the gamerule `doTileDrops` set to false
- Changed turtles with eggs to say `Expecting...` instead of `Pregnant`
- Removed custom weapon phantom loot tables
- Bonsai pots now drop leaves
- Renamed `/bonsai_pots/summon/` to `/bonsai_pots/create/`
- Removed the `VADS_OreEntDens` scoreboard and removed all related commands
- Organised custom dye crafts into their respective crafting table groups
- Renamed some custom dye craft recipes
- Removed easier armour crafts
- Moved `enchants:tick` commands to `vadditions:tick`
- Removed unnecessary arguments in custom item models
- Organised custom item model arguments in the resource pack
- Updated the link that the changelog message takes you to to be lower-case `vadditions` as the link has changed
- `VADS_[weapon]EntityFront` and `VADS_[weapon]EntityFollow` tags are now `VADS_[weapon]Entity.Front` and `VADS_[weapon]Entity.Follow` (e.g. `VADS_CactuthornEntityFront` to `VADS_CactuthornEntity.Front`)
- Removed the respective armour item from weapon entities
- Nearby mobs now receive the wither effect when an IHD explodes
- Added more blocks to the `#minecraft:passthrough` tag
- SLIGHTLY improved function `vadditions:crash`
- Added villagers to the `VADS_NoWeaponDamage` tag list
- Renamed sleep notification advancement from `vadditions:sleeping` to `vadditions:technical_chain/sleep`
- The `vadditions:technical_chain/sleep` notification advancement no longer checks for sleeping nbt, it now uses advancement mechanics instead
- Renamed custom crafter creation advancements
- Organised vadditions advancement files
- Made vadditions advancement descriptions gray
- Moved lang files from the root `minecraft` folder to the root `vadditions` folder in the resource pack
- Simplified underwater effect commands
- Made element `/pack/description/` in `pack.mcmeta` a compound
- Removed most `type=minecraft:armor_stand` selector checks (watch out for possible bugs as a result of this)
- Changed `following` weapon entities from armour stands to area effect clouds
- The freeze attack armour stand is now an area effect cloud
- Modified `following` hellstone entity's flame particle mechanics
- Modified ranged weapon rotation mechanics
- Found and re-introduced the old ranged weapon damage mechanics
- Mythical clerics no longer spawn from just clerics
- Mythical clerics have a 50% less chance of spawning during hardmode (4/25 in easymode, 2/25 in hardmode)
- Villager checking now runs 2 ticks (0.1 seconds) after their spawn instead of 40 ticks (2 seconds)
- Modified armour stand arms` mechanics
- Organised function `weapons:tick`
- Fixed-up completely useless executes (e.g. `execute as [selector] run scoreboard players set @s [score] #` -> 'scoreboard players set [selector] [score] #`)
- Removed item name colouring
- Modified hammer mechanics
- Renamed `/hammer/destroy/` to `/hammer/destroy_glass/` and `/destroy_glass/glass.mcfunction` to `/destroy_glass/plain.mcfunction`
- Made hammers multiplayer friendly (whoo!)
- Improved sheep sheared/not sheared armour
- Renamed scoreboard `VADS_PotCnt` to `VADS_BnsPotCnt`
- Renamed `vadditions:despawn/noitem/` to `vadditions:despawn/no_item/`
- Added as much context (as in `@s` and `called by` notations at the start of the file) to functions as possible while trying to stay sane
- Added `HOW_TO_UPDATE.md` file
- Removed background panorama
- Moved and renamed `death:pointy_sleeping/rundeath` to `death:pointy_sleeping`
- Moved and renamed `entities:effects/remove/custom/confused` to `entities:effect/remove/confused`
- Changed a lot of `force` arguments in particle commands to `normal`

# v0.3.5.0-r (build 23)
## Bug fixes (1)
- Removed unnessecary scoreboards
## Changes (7)
- Revised tags again
- Added bonsai pots
- Added firey arrows
- Added (very) damaging snowballs
- Added illusioner loot table
- Illusioners now spawn in caves and deep caves
- Remembered to update the build count because *cough* someone always forgets to

# v0.3.4.2-r (build 22)
## Changes (1)
- Putting yellow and dark green dye together makes green dye

# v0.3.4.1-w (build 21)
## Changes (2)
- Edits for GitHub purposes
- Simplified changelog

--------------------------------------------------------------------------------------------------------------------------
OLD CHANGELOG
=============

# Key
## C Brackets (anything in circular brackets, if inside other brackets then [] will be used)`
- feat. : New feature! Specify another category by ommiting the dot and adding a colon
- cons. : Fixed/changed for consistency
- re.   : Used to be in the pack, was removed and now re-added
- re-a. : Used to be in the pack, was removed by accident and now re-added.
- rec.  : Recipe changes
- err.  : Fixed due to a mistake on the developer's part, specify another category by ommiting the dot and adding a colon
- lag   : Changed to fix lag and/or slow loading times
- lang  : Language file errors (assets/minecraft/lang/)
- chat  : Related to chat messages/the actionbar
- ext.  : External to Minecraft
- leg.  : Legal
- pos.  : Possible errors could occur, so said feature was added/changed just in case
- wgen. : World generation changes - these changes will most likely not occur in pre-travelled areas
- gen.  : Cannot be categorised into the above
## Asterisks
- *     : Can vary
- **    : Can include than one type of block/item (e.g. ice can be packed ice, blue ice etc.)`

# v0.3.4.0-r (build 20)
## Bug fixes
  Pigs no longer follow players with disguised right-click checks            (gen.)             #012
   (e.g. weapons use a carrot on a stick to detect right-clicking)
  `English (United States)` lang file is now valid again                     (err: lang)        #011
  `English (United Kingdom)` lang file is now valid again                    (err: lang)        #010
  Items that could utilise stackable crafting no longer keep a `tag:{}`      (cons.)            #009
   nbt tag and not be able to stack with other items of the same id
  The IHD no longer attempts to affect players                               (err.)             #008
  Structures would not spawn because of a `missing` block tag                (err.)             #007
## Changes
  Re-wrote the fire notification system                                      (chat)
  Enhanced performance                                                       (lag)
  Item cooldown now shows an accurate percentage instead of going up in      (chat)
   multiples of 10
  Added slime islands                                                        (feat: wgen.)
  Added random squid ink                                                     (feat.)
  Added particles for when you swim                                          (feat.)
  Villagers now chat to you when you trade with them                         (feat.)
  Added transanium blocks                                                    (feat.)
  Added Light Fields                                                         (feat.)
  Added a message for when Vadditions enables the `vanilla` datapack         (chat)
  Added bits and bobs to the splash text                                     (gen.)
  Levitation staffs no longer work underwater as they have no effect         (gen.)
  Advanced crafter is now easier to get                                      (gen.)
   You now drop 1 obsidian instead of 1 ender chest
  Added `Anglish (Foroned Kingdom)` language file                            (lang)
  Added a space in front of the `Material` lore on the `Laser Core`          (lang)
  Removed `KNOWN_BUGS.md`                                                    (ext.)
  Removed `Deprecated changelog` and their respective keys from this file    (ext.)
  Added bug IDs to this file                                                 (ext.)
  Added gaps between different versions in this file                         (ext.)
  Custom crafter `brightness` now depends on the time of day                 (cons.)
  Revised block tag names                                                    (cons.)
   Added underscores where applicable
   e.g. `meansmansion` -> `means_mansion`
   ref. `#007`
  Ores now generate in random formations                                     (wgen.)

# v0.3.3.0-r (build 19)
## Bug fixes
  You wouldn't get a `You`re not on fire anymore!` message when getting in   (err.)             #006
   to water on fire.
  Added missing lang strings                                                 (lang)             #005
## Changes
  Merged and moved multiple tick functions                                   (lag)
  Moved some entity processes to a `clock` instead of a tick                 (lag)
   The Vadditions pulse clock runs every 16 ticks instead of every tick,
   so anything in a clock instead of a tick essentially runs 16x slower
   than everything else. Will never be used for visuals or countdowns, of
   course.
  Added update notification                                                  (chat)
  Enhanced performance                                                       (lag)
  Prepared for 1.14                                                          (cons.)
    Removed smooth blocks`** (apart from smooth stone) recipes               (rec.)
  Merged some `.md` files together                                           (ext.)
  Added `LICENSE.md`                                                         (ext.)
  Added horses to the `eats wheat` tag category                              (gen.)

# v0.3.2.0-r (build 18)
## Bug fixes
  Sticky TNT would not stick due to a missing tag [#minecraft:inadhesive]    (err.)             #004
## Changes
  Enhanced performance [moved all weapon ticks into one function]            (lag)
  Re-added `#minecraft:glazed_terracotta` tag                                (re-a.)

# v0.3.1.0-r (build 17)
## Bug fixes
  Fixed hardened ice in an uncrafter via sandstone slabs                     (err.)             #003
  Fixed sand in an uncrafter via hardened ice                                (err.)             #002
  Added missing lang strings in scoreboards and teams                        (lang)             #001
## Changes
  `vanilla` datapack was removed from `Vadditions Data.zip` and re-enabled   (lag)
  Copied a few files from vanilla to Vadditions Data in case of errors       (pos.)
  Hardenened ice now outputs 1 item rather than 9 when crafted               (cons.)
  Uncraft ice** in an uncrafter                                              (cons.)
  Re-introduced `CHANGELOG.md`                                               (ext.)
  Enhanced performance                                                       (lag)
