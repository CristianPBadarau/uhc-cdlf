# twenty_minutes_function.mcfunction
kill @e[tag=Timer]
kill @e[tag=ScoreDerecha]
kill @e[tag=wbarmor]

tellraw @a {"text": "I just killed myself"}

scoreboard players set @a Minutos 0
scoreboard players set @a Segundos 0
scoreboard players set @a TiempoDerecha 0