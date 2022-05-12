title @a times 20 100 20
execute at @a[ tag= ] run playsound minecraft:entity.ender_dragon.ambient ambient @a
execute at @a[ tag= ] run playsound minecraft:item.totem.use player @a
title @a title {"text":"TERCERA DIFICULTAD","color":"dark_red"}
title @a subtitle {"text":"Nether in Over","color":"dark_red"}
execute as @a[tag=] run scoreboard players set NetherInOver dificultadactual 3
