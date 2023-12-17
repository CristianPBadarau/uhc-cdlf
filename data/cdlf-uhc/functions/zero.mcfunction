  # Aquí colocamos el comando que deseamos ejecutar repetidamente
    # Por ejemplo, mostrar un mensaje diez veces
    say Hola

    # Incrementamos el contador en 1
    scoreboard players add #contador mi_objetivo 1

    # Ejecutamos el bucle otra vez verificando el contador
    execute as @a store result score #contador mi_objetivo run data get storage minecraft:temp contador