execute as @e[tag=Timer] if score @s SegundosTotales matches ..0 run function cdlf-uhc:clean

execute as @e[tag=Timer] if score @s SegundosTotales matches 3420 run function cdlf-uhc:stage-2

execute as @e[tag=Timer] if score @s SegundosTotales matches 3120 run function cdlf-uhc:stage-3

# añadimos un segundo al contador
execute as @e[tag=Timer] run scoreboard players add @s Segundos 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosTotales 1
execute as @e[tag=Timer] run scoreboard players remove @s SegundosVisibles 1
# añadimos un minuto al contador de minutos
execute as @e[tag=Timer,scores={Segundos=60..}] run scoreboard players remove @s Minutos 1
execute as @e[tag=Timer,scores={SegundosVisibles=..0}] run scoreboard players set @s SegundosVisibles 60
# reseteamos los segundos a 0
execute as @e[tag=Timer,scores={Segundos=60..}] run scoreboard players set @s Segundos 0

execute as @e[tag=Timer,scores={SegundosTotales=..3600}] run bossbar set timer1 name [{"text":"FASE 1 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosVisibles"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..3420}] run bossbar set timer1 name [{"text":"FASE 2 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosVisibles"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..3120}] run bossbar set timer1 name [{"text":"FASE 3 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosVisibles"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]
execute as @e[tag=Timer,scores={SegundosTotales=..2760}] run bossbar set timer1 name [{"text":"FASE 4 - ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":" : ","color":"white","italic":false},{"score":{"name":"@s","objective":"SegundosVisibles"},"color":"yellow","italic":true},{"text":" minutos","color":"red","italic":false}]

execute as @e[tag=Timer] store result bossbar timer1 value run scoreboard players get @s Minutos

execute as @e[tag=Timer] run tellraw @a [{"text":"Minutos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Minutos"},"color":"yellow","italic":true},{"text":"   Segundos: ","color":"white","italic":false},{"score":{"name":"@s","objective":"Segundos"},"color":"yellow","italic":true}]

schedule function cdlf-uhc:loop 1s replace
