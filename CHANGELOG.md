CHANGELOG
=========

## v3.4.2-r
# Changes
- Simplified changelog
- Putting yellow and dark green dye together makes green dye

## v3.4.1-w
# Changes
- Edits for GitHub purposes

----------------------------------------------------------------------------------------------------
## Key
# C Brackets (anything in circular brackets, if inside other brackets then [] will be used)`
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
# Asterisks
- *     : Can vary
- **    : Can include than one type of block/item (e.g. ice can be packed ice, blue ice etc.)`

## v3.4.0-r
# Bugs
  Pigs no longer follow players with disguised right-click checks            (gen.)             #012
   (e.g. weapons use a carrot on a stick to detect right-clicking)
  `English (United States)` lang file is now valid again                     (err: lang)        #011
  `English (United Kingdom)` lang file is now valid again                    (err: lang)        #010
  Items that could utilise stackable crafting no longer keep a `tag:{}`      (cons.)            #009
   nbt tag and not be able to stack with other items of the same id
  The IHD no longer attempts to affect players                               (err.)             #008
  Structures would not spawn because of a 'missing' block tag                (err.)             #007
# Changes
  Re-wrote the fire notification system                                      (chat)
  Enhanced performance                                                       (lag)
  Item cooldown now shows an accurate percentage instead of going up in      (chat)
   multiples of 10
  Added sky islands                                                          (feat: wgen.)
   Slime islands
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
  Custom crafter 'brightness' now depends on the time of day                 (cons.)
  Revised block tag names                                                    (cons.)
   Added underscores where applicable
   e.g. `meansmansion` -> `means_mansion`
   ref. `#007`
  Ores now generate in random formations                                     (wgen.)

## v3.3.0-r
# Bugs
  You wouldn't get a `You're not on fire anymore!` message when getting in   (err.)             #006
   to water on fire.
  Added missing lang strings                                                 (lang)             #005
# Changes
  Merged and moved multiple tick functions                                   (lag)
  Moved some entity processes to a `clock` instead of a tick                 (lag)
   The Vadditions pulse clock runs every 16 ticks instead of every tick,
   so anything in a clock instead of a tick essentially runs 16x slower
   than everything else. Will never be used for visuals or countdowns, of
   course.
  Added update notification                                                  (chat)
  Enhanced performance                                                       (lag)
  Prepared for 1.14                                                          (cons.)
    Removed smooth blocks'** (apart from smooth stone) recipes               (rec.)
  Merged some `.md` files together                                           (ext.)
  Added `LICENSE.md`                                                         (ext.)
  Added horses to the `eats wheat` tag category                              (gen.)

## v3.2.0-r
# Bugs
  Sticky TNT would not stick due to a missing tag [#minecraft:inadhesive]    (err.)             #004
# Changes
  Enhanced performance [moved all weapon ticks into one function]            (lag)
  Re-added `#minecraft:glazed_terracotta` tag                                (re-a.)

## v3.1.0-r
# Bugs
  Fixed hardened ice in an uncrafter via sandstone slabs                     (err.)             #003
  Fixed sand in an uncrafter via hardened ice                                (err.)             #002
  Added missing lang strings in scoreboards and teams                        (lang)             #001
# Changes
  `vanilla` datapack was removed from `Vadditions Data.zip` and re-enabled   (lag)
  Copied a few files from vanilla to Vadditions Data in case of errors       (pos.)
  Hardenened ice now outputs 1 item rather than 9 when crafted               (cons.)
  Uncraft ice** in an uncrafter                                              (cons.)
  Re-introduced `CHANGELOG.md`                                               (ext.)
  Enhanced performance                                                       (lag)