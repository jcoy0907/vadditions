CHANGELOG, beginning v3.1.0-r, including deprecated changelog
=============================================================

## Key
# C Brackets (anything in circular brackets, if inside other brackets then [] will be used)
- cons. : Fixed/changed for consistency
- re.   : Used to be in the pack, was removed and now re-added
- re-a. : Used to be in the pack, was removed by accident and now re-added.
- rec.  : Recipe changes
- err.  : Fixed due to a mistake on the developer's part
- lag   : Changed to fix lag and/or slow loading times
- lang  : Language file errors (assets/minecraft/lang/)
- chat  : Related to chat messages/the actionbar
- ext.  : External to Minecraft
- pos.  : Possible errors could occur, so said feature was added/changed just in case
- rem.  : Only applies to 'Deprecated Changelog', has since been removed from the pack
- gen.  : Cannot be categorised into the above
# Asterisks
- *     : Can vary
- **    : Can include than one type of block/item (e.g. ice can be packed ice, blue ice etc.)

`
## v3.3.0-r
# Bugs
  You wouldn't get a 'You're not on fire anymore!' message when getting in   (err.)
   to water on fire.
  Added missing lang strings                                                 (lang)
# Changes
  Merged and moved multiple tick functions                                   (lag)
   [entityprocesses:<effect>/tick -> entityprocesses:tick,
   effects:<effect>/process -> entities:effects/tick,
   entityprocesses -> entities:processes,
   effects:<effect>/process -> effects:tick]
  Moved some entity processes to a 'clock' instead of a tick                 (lag)
   The Vadditions pulse clock runs every 16 ticks instead of every tick,
   so anything in a clock instead of a tick essentially runs 16x slower
   than everything else. Will never be used for visuals or countdowns, of
   course.
  Added update notification                                                  (chat)
  Enhanced performance                                                       (lag)
  Prepared for 1.14                                                          (cons.)
    Removed smooth blocks'** (apart from smooth stone) recipes               (rec.)
  Merged some '.md' files together                                           (ext.)
  Added 'LICENSE.md'                                                         (ext.)
  Added horses to the eats wheat tag category                                (gen.)
## v3.2.0-r
# Bugs
  Sticky TNT would not stick due to a missing tag [#minecraft:inadhesive]    (err.)
# Changes
  Enhanced performance [moved all weapon ticks into one function]            (lag)
  Re-added '#minecraft:glazed_terracotta' tag                                (re-a.)

## v3.1.0-r
# Bugs
  Fixed hardened ice in an uncrafter via sandstone slabs                     (err.)
  Fixed sand in an uncrafter via hardened ice                                (err.)
  Added missing lang strings in scoreboards and teams                        (lang)
# Changes
  'vanilla' datapack was removed from 'Vadditions Data.zip' and re-enabled   (lag)
  Copied a few files from vanilla to Vadditions Data in case of errors       (pos.)
  Hardenened ice now outputs 1 item rather than 9 when crafted               (cons.)
  Uncraft ice** in an uncrafter                                              (cons.)
  Re-introduced 'CHANGELOG.md'                                               (ext.)
  Enhanced performance                                                       (lag)
`



## Deprecated Changelog
`    v0.1.0-a (Alpha Build)
- Transferred Vilethorn over from Burrowed (map by Andante, never to be released)
    (Added and tweaked, though uses same mechanics and acts the same)
- Tweaked weapon cooldown bossbar
- Added Custom Crafters
    (Basic Crafter)

    v0.2.0-b (Beta Build)
- Renamed Vilethorn to Cactuthorn as it had the direct same name as the Terrarian Vilethorn
    (Preventing copyright claims)
- Tweaked Cactuthorn's features more, streamlined performance.
- Added Hellstone
- Added IHD (Insane Homing Device)
    (A bad, but early-game weapon)
        = Notable bugs:
          Due to the tag 'IHD_User' being removed upon the IHD's removal,
          it attacks players if an IHD is removed at the same time as
          another one being in the world. Marked 'Hard to fix'. (rem.)
- Added Mythical Stone
- Added Mythical Librarian, later renamed to Mythical Cleric.
- Added Custom Crafters
    (Tweaked Basic Crafter, added Advanced Crafter and Retfarcnu [Uncrafter])
- Added a 'VADS_' prefix to any scoreboards or tags to prevent disambiguity issues.
- Added loot tables for weapons and items (not telling you where though, :winking_face:) (rem.)
- Added and changed crafting recipes (see 'features.txt' for a full list [rem.])
- Added mcpatcher (custom item textures) for weapons (doesn't work in 1.13) (rem.)

    v1.0.0-r (Release Build)
- Added and changed more crafting recipes
- Made grass greener
- Made textures texturier
    (Custom weapon/item textures work without OptiFine and in 1.13 now)
        (Removed mcpatcher and added durability-dependent model information)
    (Added IHD texture)
- Tweaked weapon mechanics
    (Fixed 'VADS_IHD_User' tag issue)
    (Added particle under the player for when holding the respective weapon)
- Added structure 'vadditions:all_items' (rem.)

    v1.1.0-a (Alpha Build)
- Fixed issue, 'grass_block_side.png' and 'grass_block_snowed.png' were in 'colormap' and not 'block'.`