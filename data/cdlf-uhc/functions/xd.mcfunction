# scoreboard players remove @e[scores={Timer=1..}] Timer 1
# scoreboard players remove @a TiempoRestante 1
execute as @a unless score TiempoRestante TiempoRestante matches 0.. run scoreboard players remove @a TiempoRestante 1
