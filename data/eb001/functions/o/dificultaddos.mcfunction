scoreboard players operation @a md2 = @a dificultad
execute as @a[scores={md2=2}] at @s run function eb001:o/mensajededificultaddos
scoreboard objectives remove md2

execute at @e[tag=,limit=1,sort=nearest,type=spider] run function eb001:mobs/3
tag @e[tag=,limit=1,sort=nearest,type=spider] add found

execute as @e[type=minecraft:spider,tag=!eb001] run function eb001:o/0

execute at @e[tag=,limit=1,sort=nearest,type=creeper] run function eb001:mobs/5
tag @e[tag=,limit=1,sort=nearest,type=creeper] add found

execute at @e[tag=,limit=1,sort=nearest,type=ghast] run function eb001:mobs/0
tag @e[tag=,limit=1,sort=nearest,type=ghast] add found

execute at @e[type=minecraft:skeleton,tag=,limit=1] run function eb001:mobs/1

data merge entity @e[type=minecraft:zombie_pigman,tag=,limit=1] {CustomNameVisible:1b,DeathLootTable:"eb001:mobs/3",Anger:20000000,Tags:["found"],CustomName:'{"text":"Cerdo Demoniaco","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}

execute as @e[type=minecraft:silverfish,tag=!eb001] run function eb001:o/0

execute at @e[tag=,limit=1,sort=nearest,type=cave_spider] run function eb001:mobs/4
tag @e[tag=,limit=1,sort=nearest,type=cave_spider] add found

execute at @e[tag=,limit=1,sort=nearest,type=phantom] run function eb001:mobs/6
tag @e[tag=,limit=1,sort=nearest,type=phantom] add found
