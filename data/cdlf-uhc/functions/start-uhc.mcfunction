#Reset/clean
execute run function cdlf-uhc:clean

execute run function cdlf-uhc:create-variables

execute run function cdlf-uhc:player-effects

execute run function cdlf-uhc:wb

execute run function cdlf-uhc:teams/create_teams

execute as @a run function cdlf-uhc:loop

# Contador de muertes

scoreboard objectives add Muertes deathCount

