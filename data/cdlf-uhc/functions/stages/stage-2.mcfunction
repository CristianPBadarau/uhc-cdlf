say stage 2 se ha ejecutado
bossbar set timer1 color blue
execute as @e[tag=Timer] run scoreboard players set @s Minutos 5
execute run function cdlf-uhc:stages/update_bossbar
