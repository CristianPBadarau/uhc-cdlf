#Reset/clean
execute run function cdlf-uhc:clean

scoreboard objectives add SegundosBossbar dummy
scoreboard objectives add Segundos dummy
scoreboard objectives add SegundosTotales dummy
scoreboard objectives add Minutos dummy

# Vida en tab
scoreboard objectives add Vida health
scoreboard objectives setdisplay list Vida

# Resetear vida y hambre de los jugadores para que sea visible en tab
effect give @a instant_damage 1 1 true
effect give @a instant_health 2 2 true
effect give @a saturation 5 5 true

# Inmortalidad primeros segundos

effect give @a resistance 20 20 true

# Setup inicial (gamerules, reiniciar mundo)

gamerule naturalRegeneration false
difficulty hard
time set 0

# Bossbar

bossbar add timer1 [{"selector":"@s"}]
bossbar set timer1 color purple
bossbar set timer1 max 180
bossbar set timer1 players @a

execute as @a run summon minecraft:armor_stand ^ ^ ^2 {Tags: [Timer], Marker: 1b}

scoreboard players add @e[tag=Players] Muertes 0

execute as @e[tag=Timer] run scoreboard players set @s SegundosBossbar 60
# Minutos de la primera fase
execute as @e[tag=Timer] run scoreboard players set @s Minutos 0
execute as @e[tag=Timer] run scoreboard players set @s Segundos 60

# Segundos de la primera fase en la bossbar
scoreboard players operation @e[tag=Timer] SegundosBossbar *= @e[tag=Timer] Minutos
scoreboard players add @e[tag=Timer] SegundosBossbar 60
execute as @e[tag=Timer] store result bossbar timer1 max run scoreboard players get @s SegundosBossbar

# Duración total de la partida a segundos
execute as @e[tag=Timer] run scoreboard players set @s SegundosTotales 3600

execute run function cdlf-uhc:wb

execute run function cdlf-uhc:teams/create_teams

execute as @a run function cdlf-uhc:loop

# Contador de muertes

scoreboard objectives add Muertes deathCount
