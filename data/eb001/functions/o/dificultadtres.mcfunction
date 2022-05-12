scoreboard players operation @a md3 = @a dificultad
execute as @a[scores={md3=3}] at @s run function eb001:o/mensajededificultadtres
scoreboard objectives remove md3

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

execute as @a[tag=!NoPoison,scores={health = 14..30}] at @s if block ~ ~ ~ water run effect give @s poison 5 0
execute as @a[tag=NoPoison] run effect clear @s poison

execute as @e[type=pufferfish,nbt={PuffState:1}] run effect give @s resistance 1 255 true
execute as @e[type=pufferfish,nbt={PuffState:2}] run effect give @s resistance 1 255 true
execute as @e[type=pufferfish,nbt={PuffState:2}] at @s run summon tnt
execute as @e[type=pufferfish,nbt={PuffState:2}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",ReapplicationDelay:20,Radius:5f,RadiusPerTick:-0.01f,RadiusOnUse:0f,Duration:1000,Color:3224321,Effects:[{Id:9b,Amplifier:1b,Duration:3600},{Id:15b,Amplifier:1b,Duration:9999999},{Id:18b,Amplifier:10b,Duration:1200},{Id:19b,Amplifier:1b,Duration:9999999},{Id:20b,Amplifier:1b,Duration:400}]}
execute as @e[type=pufferfish,nbt={PuffState:2}] run data merge entity @s {PuffState:0}
execute as @e[type=pufferfish] run effect clear @s wither
execute as @e[type=pufferfish] run effect clear @s nausea
execute as @e[type=pufferfish] run effect clear @s blindness
execute as @e[type=pufferfish] run effect clear @s poison
execute as @e[type=pufferfish] run effect clear @s weakness

execute as @e[type=minecraft:zombie_pigman,tag=!eb001] run function eb001:o/1

execute at @e[tag=,limit=1,sort=nearest,type=zombie] run function eb001:mobs/8
tag @e[tag=,limit=1,sort=nearest,type=zombie] add found

execute at @e[tag=,limit=1,sort=nearest,type=cod] run function eb001:mobs/9
tag @e[tag=,limit=1,sort=nearest,type=cod] add found

execute at @e[tag=,limit=1,sort=nearest,type=salmon] run function eb001:mobs/14
tag @e[tag=,limit=1,sort=nearest,type=salmon] add found

execute at @e[tag=,limit=1,sort=nearest,type=guardian] run function eb001:mobs/11
tag @e[tag=,limit=1,sort=nearest,type=guardian] add found

execute at @e[tag=,limit=1,sort=nearest,type=evoker] run function eb001:mobs/2
tag @e[tag=,limit=1,sort=nearest,type=evoker] add found

execute at @e[tag=,limit=1,sort=nearest,type=cat] run function eb001:mobs/12
tag @e[tag=,limit=1,sort=nearest,type=cat] add found













execute at @e[tag=,limit=1,sort=nearest,type=rabbit] run function eb001:mobs/7
tag @e[tag=,limit=1,sort=nearest,type=rabbit] add found





execute at @e[tag=,limit=1,sort=nearest,type=tropical_fish] run function eb001:mobs/10
tag @e[tag=,limit=1,sort=nearest,type=tropical_fish] add found

execute at @e[tag=,limit=1,sort=nearest,type=chicken] run function eb001:mobs/11
execute at @e[type=minecraft:chicken,nbt={HurtTime:9s}] run summon minecraft:tnt
tag @e[tag=,limit=1,sort=nearest,type=chicken] add found



execute at @e[tag=,limit=1,sort=nearest,type=ender_dragon] run function eb001:mobs/13
tag @e[tag=,limit=1,sort=nearest,type=ender_dragon] add found







execute at @a if block ~ ~-1 ~ minecraft:end_stone run effect give @p minecraft:blindness 3 5 true
execute at @a if block ~ ~-1 ~ minecraft:end_stone run effect give @p minecraft:wither 3 10 true
execute at @a if block ~ ~-1 ~ minecraft:bedrock run effect give @p minecraft:levitation 10 5 true

execute at @e[type=minecraft:ender_dragon,nbt={HurtTime:9s}] run summon minecraft:bat ~ ~1 ~ {Glowing:1,Tags:["found"]}

#bulls
execute at @e[type=cow,tag=!bull,nbt={HurtTime:9s}] unless entity @e[type=cow,tag=bull,distance=..0.5] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 normal
execute at @e[type=cow,tag=!bull,nbt={HurtTime:9s}] unless entity @e[type=cow,tag=bull,distance=..0.5] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1000 0.5 0.5
execute at @e[type=cow,tag=!bull,nbt={HurtTime:9s}] unless entity @e[type=cow,tag=bull,distance=..0.5] run summon cow ~ ~ ~ {Tags:["bull"],Team:"bull",Passengers:[{id:"minecraft:silverfish",PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["bull"],CustomName:"{\"text\":\"cow\"}",ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}]}],Attributes:[{Name:generic.movementSpeed,Base:0.32}]}
execute at @e[type=cow,tag=bull] if entity @p[distance=..1] run effect give @p instant_damage 1 0 true
tp @e[type=cow,tag=!bull,nbt={HurtTime:9s}] 0 -300 0
kill @e[type=cow,tag=!bull,nbt={HurtTime:9s}]
tag @e[type=silverfish,tag=bull,tag=spare] remove spare
execute as @e[type=silverfish,tag=bull] at @s positioned ~-0.6 ~-0.6 ~-0.6 if entity @e[type=cow,tag=bull,dx=0,dy=0,dz=0] positioned ~0.2 ~0.2 ~0.2 run data merge entity @s {Tags:["spare","bull"]}
tp @e[type=silverfish,tag=!spare,tag=bull] 0 -300 0
