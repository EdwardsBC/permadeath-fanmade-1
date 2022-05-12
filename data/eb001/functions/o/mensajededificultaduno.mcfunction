title @a times 20 100 20
execute at @a[ tag= ] run playsound minecraft:entity.ender_dragon.ambient ambient @a
execute at @a[ tag= ] run playsound minecraft:item.totem.use player @a
title @a title {"text":"PRIMERA DIFICULTAD","color":"dark_red"}
title @a subtitle {"text":"ARAÑAS ASESINAS","color":"dark_red"}
execute as @a[tag=] run scoreboard players set ArañasAsesinas dificultadactual 1
