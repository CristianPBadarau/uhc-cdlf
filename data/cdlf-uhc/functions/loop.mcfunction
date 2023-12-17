execute as @e[tag=Timer] if score @s SegundosTotales matches ..0 run function cdlf-uhc:clean

## Tiempo en el que empieza el segundo stage
execute as @e[tag=Timer] if score @s SegundosTotales matches 3540 run function cdlf-uhc:stages/stage-2

execute as @e[tag=Timer] if score @s SegundosTotales matches 3120 run function cdlf-uhc:stages/stage-3

# quitamos un segundo al contador
execute as @e[tag=Timer] run scoreboard players remove @s Segundos 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosTotales 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosBossbar 1
# añadimos un minuto
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players remove @s Minutos 1
# reseteamos los segundos
execute as @e[tag=Timer,scores={Segundos=..0}] run scoreboard players set @s Segundos 60

execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosBossbar: ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosBossbar"},"color":"yellow","italic":true}]
execute as @e[tag=Timer] run tellraw @a [{"text":"SegundosTotales: ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosTotales"},"color":"yellow","italic":true}]
execute as @e[tag=Timer] run tellraw @a [{"text":"Minutos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true}]

execute as @e[tag=Timer,scores={SegundosTotales=..3600}] run bossbar set timer1 name [{"text":"FASE 1 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
## Tiempo en el que empieza el segundo stage
execute as @e[tag=Timer,scores={SegundosTotales=..3540}] run bossbar set timer1 name [{"text":"FASE 2 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..3120}] run bossbar set timer1 name [{"text":"FASE 3 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..2760}] run bossbar set timer1 name [{"text":"FASE 4 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer] store result bossbar timer1 value run scoreboard players get @s SegundosBossbar



schedule function cdlf-uhc:loop 1s replace
