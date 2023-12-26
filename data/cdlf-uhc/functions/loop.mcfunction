## Tiempo en el que se ejecuta cada fase

execute as @e[tag=Timer] if score @s SegundosTotales matches 13 run function cdlf-uhc:stages/stage-1

execute as @e[tag=Timer] if score @s SegundosTotales matches 59 run function cdlf-uhc:stages/stage-2

execute as @e[tag=Timer] if score @s SegundosTotales matches 119 run function cdlf-uhc:stages/stage-3

execute as @e[tag=Timer] if score @s SegundosTotales matches 179 run function cdlf-uhc:stages/stage-4

execute as @e[tag=Timer] if score @s SegundosTotales matches 360 run function cdlf-uhc:clean

# quitamos un segundo al contador
execute as @e[tag=Timer] run scoreboard players remove @s Segundos 1
execute as @e[tag=Timer] run scoreboard players add @s SegundosTotales 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosBossbar 1
# añadimos un minuto
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players remove @s Minutos 1
# reseteamos los segundos
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players set @s Segundos 60

## Debug chat Timer

#execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosBossbar: ","color":"white","italic":true},{"score":{"name":"@s","objective":"SegundosBossbar"},"color":"yellow","italic":true}]
#execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosTotales: ","color":"white","italic":true},{"score":{"name":"@s","objective":"SegundosTotales"},"color":"yellow","italic":true}]
#execute as @e[tag=Timer] run tellraw @a [{"text":"Minutos: ","color":"white","italic":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]

## Cada vez que cambia la Bossbar 

execute as @e[tag=Timer,scores={SegundosTotales=1..}] run bossbar set timer1 name [{"text":"FASE 1 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=59..}] run bossbar set timer1 name [{"text":"FASE 2 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=119..}] run bossbar set timer1 name [{"text":"FASE 3 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=179..}] run bossbar set timer1 name [{"text":"FASE 4 - DEATHMATCH","color":"red","bold":true}]
execute as @e[tag=Timer] store result bossbar timer1 value run scoreboard players get @s SegundosBossbar

## Contador inicial

execute as @e[tag=Timer] if score @s SegundosTotales matches 2 run title @a title "5"
execute as @e[tag=Timer] if score @s SegundosTotales matches 2 run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 1 1

execute as @e[tag=Timer] if score @s SegundosTotales matches 4 run title @a title "4"
execute as @e[tag=Timer] if score @s SegundosTotales matches 4 run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 1 1

execute as @e[tag=Timer] if score @s SegundosTotales matches 6 run title @a title "3"
execute as @e[tag=Timer] if score @s SegundosTotales matches 6 run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 1 1

execute as @e[tag=Timer] if score @s SegundosTotales matches 8 run title @a title "2"
execute as @e[tag=Timer] if score @s SegundosTotales matches 8 run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 1 1

execute as @e[tag=Timer] if score @s SegundosTotales matches 10 run title @a title "1"
execute as @e[tag=Timer] if score @s SegundosTotales matches 10 run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 1 1

execute as @e[tag=Timer] if score @s SegundosTotales matches 12 run title @a title "GO!"
execute as @e[tag=Timer] if score @s SegundosTotales matches 12 run playsound entity.player.levelup neutral @a ~ ~ ~ 2 1 1

# loop

schedule function cdlf-uhc:loop 1s replace

# Sonido cuando muere un jugador y reset de contador de muertes

execute as @a[scores={Muertes=1..}] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 3 1 1
execute as @a[scores={Muertes=1..}] run scoreboard players reset @a[scores={Muertes=1..}] Muertes

