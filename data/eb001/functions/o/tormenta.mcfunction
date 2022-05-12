execute at @a[ tag= ] run playsound minecraft:entity.wither.death player @a
execute as @s[scores={pg_death=1..}] at @a run function eb001:o/mensajedemuerte
scoreboard players reset @s pg_death
