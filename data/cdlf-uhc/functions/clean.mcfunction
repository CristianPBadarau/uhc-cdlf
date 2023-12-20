kill @e[tag=Timer]
kill @e[tag=wbarmor]

tellraw @a {"text": "I just killed myself"}

scoreboard players set @a Minutos 0
scoreboard players set @a Segundos 0
scoreboard players set @a SegundosBossbar 0
scoreboard players set @a SegundosTotales 0

scoreboard objectives remove Muertes 
scoreboard objectives remove Vida

team remove Global
team remove Madrid
team remove Zaragoza
team remove Z1
team remove Z2
team remove M1
team remove M2

bossbar remove timer1