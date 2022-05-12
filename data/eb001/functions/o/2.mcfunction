tag @s add eb001
loot insert 100000 0 100000 loot eb001:0
data modify entity @s ActiveEffects append from block 100000 0 100000 Items[0].tag.eb001
data modify entity @s ActiveEffects append from block 100000 0 100000 Items[1].tag.eb001
data modify entity @s ActiveEffects append from block 100000 0 100000 Items[2].tag.eb001
data remove block 100000 0 100000 Items
