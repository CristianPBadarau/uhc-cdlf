execute as @e[tag=wbarmor] at @s run worldborder set 5000

kill @e[tag=Timer]
kill @e[tag=wbarmor]

tellraw @a {"text": "I just killed myself"}

scoreboard players set @e Minutos 0
scoreboard players set @e Segundos 0
scoreboard players set @e SegundosBossbar 0
scoreboard players set @e SegundosTotales 0

scoreboard objectives remove Muertes 
scoreboard objectives remove Vida

team remove Madrid
team remove Zaragoza
team remove Z1
team remove Z2
team remove M1
team remove M2

bossbar remove timer1