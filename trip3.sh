#!/bin/bash

opc=0

while [ $opc -ne 4 ]; do
    echo "MENÚ:"
    echo "1. Consultar billetes✈"
    echo "2. Consulte las opiniones de otros viajeros de su destino"
    echo "3. Sistema de notas y organización de viajes"
    echo "4. Salir del menú"
    read -p "Seleccione una opción del menú: " opc

    case $opc in
        1)
            read -p "Ingrese su destino: " destino
            read -p "Ingrese la fecha de ida DD/MM/YYYY: " fechaida
            read -p "Ingrese la fecha de vuelta DD/MM/YYYY: " fechavuelta
            echo
            echo "Los precios para viajar a $destino desde $fechaida hasta $fechavuelta son:"
            for x in {1..3}; do
                precio=$((300 + RANDOM % 701))
                echo "Precio $x: $precio €"
            done
            echo
            ;;
        2)
            read -p "Ingrese el destino del que quiera conocer las opiniones del resto de usuarios: " destino
            echo
            echo "María García: \"¡La experiencia en $destino fue increíble! Cada momento del viaje fue una delicia. La gente, la comida y los paisajes resultaron simplemente asombrosos. 
Definitivamente merece una calificación de cinco estrellas.\" ⭐⭐⭐⭐⭐"
            echo
            echo "Juan Martínez: \"Mi aventura en $destino fue maravillosa. Los monumentos históricos y la rica cultura local realmente me impresionaron.\" ⭐⭐⭐⭐⭐"
            echo
            echo "Laura López: \"La experiencia en $destino superó todas mis expectativas. Desde las playas hasta los sitios históricos, cada momento fue simplemente perfecto. Definitivamente merece 
una calificación de cinco estrellas.\" ⭐⭐⭐⭐⭐"
            echo
            echo "Carlos Rodríguez: \"Recomiendo $destino, nuestro viaje fue fenomenal. Cada rincón explorado reveló una rica historia y deliciosa comida local.\" ⭐⭐⭐⭐"
            echo
            echo "Ana Pérez: \"La magia de $destino es simplemente fascinante. La gente, la arquitectura y la comida: todo resulta encantador.\" ⭐⭐⭐⭐⭐"
            echo
            echo "Diego Sánchez: \"Mi experiencia en $destino fue muy positiva. La variedad de actividades y lugares para explorar realmente me sorprendió, aunque las barreras lingüísticas son un 
problema. Le otorgo una sólida calificación de cuatro estrellas.\" ⭐⭐⭐⭐"
            echo
            echo "Sofía Gómez: \"La grandeza de $destino es simplemente asombrosa. Desde la rica historia hasta la impresionante belleza natural, cada momento fue inolvidable. Sin duda, merece cinco 
estrellas.\" ⭐⭐⭐⭐⭐"
            ;;
        3)
            echo "CARPETAS Y ARCHIVOS EXISTENTES:"
            ls -p | grep -v '/'
            echo "OPCIONES:"
            echo "1. Escribir en un archivo existente"
            echo "2. Crear un nuevo archivo"
            echo "3. Crear una nueva carpeta"
            echo "4. Volver al menú principal"
            read -p "Seleccione una opción: " subopc
            case $subopc in
                1)
                    read -p "Ingrese el nombre del archivo existente: " archivo
                    if [ -f "$archivo" ]; then
                        read -p "Ingrese el contenido del archivo: " contenido
                        echo "$contenido" > "$archivo"
                        echo "Contenido actualizado en el archivo $archivo."
                    else
                        echo "El archivo $archivo no existe."
                    fi
                    ;;
                2)  
                    read -p "Ingrese el nombre para el nuevo archivo: " nuevoarchivo
                    read -p "Ingrese el contenido del archivo: " contenido
                    echo "$contenido" > "$nuevoarchivo"
                    echo "Archivo '$nuevoarchivo' creado."
                    ;;
                3)  
                    read -p "Ingrese el nombre para la nueva carpeta: " carpeta
                    mkdir "$carpeta"
                    echo "Carpeta '$carpeta' creada."
                    ;;
                4)  
                    echo "Volviendo al menú principal."
                    ;;
                *)  
                    echo "Introduzca un número del 1 al 4"
                    ;;
            esac
            ;;
        4)
            echo "¡Hasta otra!"
            ;;
        *)
            echo "Por favor, seleccione una opción válida."
            ;;
    esac
done
