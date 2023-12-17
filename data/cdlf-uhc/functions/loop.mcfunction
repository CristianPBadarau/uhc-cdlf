execute as @e[tag=Timer] if score @s Minutos matches 2.. run function aaad:clean

# añadimos un segundo al contador
execute as @e[tag=Timer] run scoreboard players add @s Segundos 1
# quitamos un minuto del contador de minutos si tenemos 60 segundos
execute as @e[tag=Timer,scores={Segundos=60..}] run scoreboard players remove @e[tag=ScoreDerecha] TiempoDerecha 1
# añadimos un minuto al contador de minutos
execute as @e[tag=Timer,scores={Segundos=60..}] run scoreboard players add @s Minutos 1
# reseteamos los segundos a 0
execute as @e[tag=Timer,scores={Segundos=60..}] run scoreboard players set @s Segundos 0

execute as @e[tag=Timer] run bossbar set timer1 name [{"text":"Minutos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true}]

execute as @e[tag=Timer] store result bossbar timer1 value run scoreboard players get @s Segundos

execute as @e[tag=Timer] run tellraw @a [{"text":"Minutos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true}]

schedule function aaad:loop 1s replace
