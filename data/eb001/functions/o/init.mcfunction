execute in minecraft:overworld run forceload add 100000 100000
execute in minecraft:overworld run setblock 100000 0 100000 minecraft:shulker_box
scoreboard objectives add pg_death deathCount "Player Deaths"
scoreboard objectives add Totem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add Vida health
scoreboard objectives setdisplay list Vida
scoreboard objectives add dificultad dummy
scoreboard objectives add dificultadactual dummy
scoreboard objectives setdisplay sidebar dificultadactual
scoreboard objectives add md1 dummy
scoreboard objectives add md2 dummy
scoreboard objectives add md3 dummy
scoreboard objectives add health health
difficulty hard
scoreboard objectives remove dificultadactual
