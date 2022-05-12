scoreboard players operation @a md1 = @a dificultad
execute as @a[scores={md1=1}] at @s run function eb001:o/mensajededificultaduno
scoreboard objectives remove md1

execute at @e[tag=,limit=1,sort=nearest,type=zombie] run summon zombie ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=zombie] add found

execute at @e[tag=,limit=1,sort=nearest,type=spider] run summon spider ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=spider] add found

execute as @e[type=minecraft:spider,tag=!eb001] run function eb001:o/0

execute at @e[tag=,limit=1,sort=nearest,type=cave_spider] run summon cave_spider ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=cave_spider] add found

execute as @e[type=minecraft:cave_spider,tag=!eb001] run function eb001:o/2

execute at @e[tag=,limit=1,sort=nearest,type=creeper] run summon creeper ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=creeper] add found

execute at @e[tag=,limit=1,sort=nearest,type=ravager] run summon ravager ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=ravager] add found

execute at @e[tag=,limit=1,sort=nearest,type=vex] run summon vex ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=vex] add found

execute at @e[tag=,limit=1,sort=nearest,type=phantom] run summon phantom ~1 ~ ~ {Tags:["found"]}
tag @e[tag=,limit=1,sort=nearest,type=phantom] add found

execute at @e[tag=,limit=1,sort=nearest,type=vindicator] run summon minecraft:vindicator ~1 ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1},{},{Tags:["found"]}]}
tag @e[tag=,limit=1,sort=nearest,type=vindicator] add found

execute as @e[type=minecraft:vindicator,tag=!eb001] run function eb001:o/1
