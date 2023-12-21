# Resetear vida y hambre de los jugadores para que sea visible en tab
effect give @a instant_damage 1 1 true
effect give @a instant_health 2 2 true
effect give @a saturation 5 5 true

# Efectos primeros segundos

effect give @a resistance 50 30 true
effect give @a blindness 12 1 true
effect give @a slowness 12 20 true


# Setup inicial (gamerules, reiniciar mundo)

gamerule naturalRegeneration false
difficulty hard
time set 0t
title @a times 1s 1s 1s
weather clear
