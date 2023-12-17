tellraw @a {"text": "Borde puesto a 800 bloques"}
tellraw @a {"text": "30 minutos hasta el final"}

execute as @a run summon minecraft:armor_stand ^ ^ ^1 {Tags: [wbarmor], Marker: 1b}

execute as @e[tag=wbarmor] at @s run worldborder center ~ ~
execute as @e[tag=wbarmor] at @s run worldborder set 800
execute as @e[tag=wbarmor] at @s run worldborder set 50 1800

# TODO: Hacer algo despues de que se termine el tiempo


# execute as @e[tag=wbarmor] run schedule function 

