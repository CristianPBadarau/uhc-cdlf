scoreboard objectives add TiempoDerecha dummy
scoreboard objectives setdisplay sidebar TiempoDerecha

scoreboard objectives add Segundos dummy
scoreboard objectives add Minutos dummy

bossbar add timer1 [{"selector":"@s"}]
bossbar set timer1 color blue
bossbar set timer1 max 60
bossbar set timer1 players @a

execute as @a run summon minecraft:armor_stand ^ ^ ^2 {Tags: [Timer], Marker: 1b}
execute as @a run summon minecraft:armor_stand ^ ^ ^3 {Tags: [ScoreDerecha], Marker: 1b}

# Tiempo restante
execute as @e[tag=ScoreDerecha] run scoreboard players set @s TiempoDerecha 30

execute run function aaad:wb

execute as @a run function aaad:loop

