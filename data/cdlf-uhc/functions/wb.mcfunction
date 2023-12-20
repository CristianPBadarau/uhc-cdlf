tellraw @a {"text": "Borde puesto a 800 bloques"}
worldborder warning distance 30

execute as @a run summon minecraft:armor_stand ^ ^ ^1 {Tags: [wbarmor], Marker: 1b}

execute as @e[tag=wbarmor] at @s run worldborder center ~ ~
execute as @e[tag=wbarmor] at @s run worldborder set 800

# TODO: Hacer algo despues de que se termine el tiempo


# execute as @e[tag=wbarmor] run schedule function 

