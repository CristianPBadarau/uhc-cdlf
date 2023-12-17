execute as @e[tag=Timer] run scoreboard players set @s SegundosBossbar 60
scoreboard players operation @e[tag=Timer] SegundosBossbar *= @e[tag=Timer] Minutos
scoreboard players add @e[tag=Timer] SegundosBossbar 60
execute as @e[tag=Timer] store result bossbar timer1 max run scoreboard players get @s SegundosBossbar