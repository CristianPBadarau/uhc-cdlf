kill @e[tag=Timer]
kill @e[tag=wbarmor]

tellraw @a {"text": "I just killed myself"}

scoreboard players set @a Minutos 0
scoreboard players set @a Segundos 0
scoreboard players set @a SegundosBossbar 0
scoreboard players set @a SegundosTotales 0

scoreboard objectives remove Muertes 

bossbar remove timer1