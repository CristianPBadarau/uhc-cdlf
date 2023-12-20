tellraw @a {"text":"------------------------------------"}
tellraw @a {"text":""}
tellraw @a {"text":"¡La Fase 2 ha comenzado!","bold":true,"color":"aqua"}
tellraw @a {"text":" * Los duos se han unido en equipos de 4"}
tellraw @a {"text":" * Ahora puedes reunirte y comunicarte con el resto de tus compañeros"}
tellraw @a {"text":""}
tellraw @a {"text":" * El PVP ha sido ACTIVADO","bold":true,"color":"red"}
tellraw @a {"text":""}
tellraw @a {"text":"------------------------------------"}

team modify Global friendlyFire true

execute run playsound minecraft:item.goat_horn.sound.0 ambient @a ~ ~ ~ 3 1 1

bossbar set timer1 color blue
execute as @e[tag=Timer] run scoreboard players set @s Minutos 1
execute run function cdlf-uhc:stages/update_bossbar
