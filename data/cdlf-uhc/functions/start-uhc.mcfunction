scoreboard objectives add Segundos dummy
scoreboard objectives add SegundosVisibles dummy
scoreboard objectives add SegundosTotales dummy
scoreboard objectives add Minutos dummy

bossbar add timer1 [{"selector":"@s"}]
bossbar set timer1 color pink
bossbar set timer1 max 2
bossbar set timer1 players @a

execute as @a run summon minecraft:armor_stand ^ ^ ^2 {Tags: [Timer], Marker: 1b}

execute as @e[tag=Timer] run scoreboard players set @s Minutos 2
execute as @e[tag=Timer] run scoreboard players set @s SegundosTotales 3600
execute as @e[tag=Timer] run scoreboard players set @s SegundosVisibles 60

execute run function cdlf-uhc:wb

execute as @a run function cdlf-uhc:loop

