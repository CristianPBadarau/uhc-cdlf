execute as @e[tag=Timer] if score @s SegundosTotales matches ..0 run function cdlf-uhc:clean

## Tiempo en el que empieza el segundo stage
execute as @e[tag=Timer] if score @s SegundosTotales matches 3541 run function cdlf-uhc:stages/stage-2

execute as @e[tag=Timer] if score @s SegundosTotales matches 3481 run function cdlf-uhc:stages/stage-3

execute as @e[tag=Timer] if score @s SegundosTotales matches 3421 run function cdlf-uhc:stages/stage-4

# quitamos un segundo al contador
execute as @e[tag=Timer] run scoreboard players remove @s Segundos 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosTotales 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosBossbar 1
# añadimos un minuto
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players remove @s Minutos 1
# reseteamos los segundos
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players set @s Segundos 60

#execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosBossbar: ","color":"white","italic":true},{"score":{"name":"@s","objective":"SegundosBossbar"},"color":"yellow","italic":true}]
#execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosTotales: ","color":"white","italic":true},{"score":{"name":"@s","objective":"SegundosTotales"},"color":"yellow","italic":true}]
#execute as @e[tag=Timer] run tellraw @a [{"text":"Minutos: ","color":"white","italic":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]

execute as @e[tag=Timer,scores={SegundosTotales=..3600}] run bossbar set timer1 name [{"text":"FASE 1 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
## Tiempo en el que empieza el segundo stage
execute as @e[tag=Timer,scores={SegundosTotales=..3540}] run bossbar set timer1 name [{"text":"FASE 2 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..3480}] run bossbar set timer1 name [{"text":"FASE 3 - ","color":"white","bold":true},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":false},{"text":":","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..3420}] run bossbar set timer1 name [{"text":"FASE 4 - DEATHMATCH","color":"red","bold":true}]
execute as @e[tag=Timer] store result bossbar timer1 value run scoreboard players get @s SegundosBossbar

schedule function cdlf-uhc:loop 1s replace

# Sonido cuando muere un jugador y reset de contador de muertes

execute as @a[scores={Muertes=1..}] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 3 1 
execute as @a[scores={Muertes=1..}] run scoreboard players reset @a[scores={Muertes=1..}] Muertes