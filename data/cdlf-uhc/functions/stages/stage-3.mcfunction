tellraw @a {"text":"------------------------------------"}
tellraw @a {"text":""}
tellraw @a {"text":"¡La Fase 3 ha comenzado!","bold":true,"color":"red"}
tellraw @a {"text":" * El límite del mapa se cerrará durante esta fase"}
tellraw @a {"text":" * El Nether quedará obstruido si no lo abandonas inmediatamente"}
tellraw @a {"text":""}
tellraw @a {"text":" * Dirígete a x:0, z:0 para la batalla final","bold":true,"color":"dark_red"}
tellraw @a {"text":""}
tellraw @a {"text":"------------------------------------"}

execute run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 3 0 1

bossbar set timer1 color red
execute as @e[tag=Timer] run scoreboard players set @s Minutos 1

# Se cierra el círculo

execute as @e[tag=wbarmor] at @s run worldborder set 50 60

execute run function cdlf-uhc:stages/update_bossbar
