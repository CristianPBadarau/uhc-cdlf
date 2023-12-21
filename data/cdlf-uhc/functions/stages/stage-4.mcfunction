tellraw @a {"text":"------------------------------------"}
tellraw @a {"text":""}
tellraw @a {"text":"DEATHMATCH","bold":true,"color":"red"}
tellraw @a {"text":""}
tellraw @a {"text":" * El límite del mapa se va a reducir al mínimo"}
tellraw @a {"text":""}
tellraw @a {"text":"------------------------------------"}

execute run playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 4 1

execute as @e[tag=wbarmor] at @s run worldborder set 10 60

execute as @e[tag=Timer,scores={SegundosTotales=179..}] run bossbar set timer1 name [{"text":"FASE 4 - DEATHMATCH","color":"red","bold":true}]
