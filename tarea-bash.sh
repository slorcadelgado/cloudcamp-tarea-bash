#!/bin/bash

#Se crea la carpeta con un nombre dinámico basado en la fecha (formato de la fecha DD-MM-YYYY)
folder="carpeta_$(date +%d-%m-%Y)"

#Si ya existe una carpeta con el mismo nombre se elimina
if [ -d "$folder" ]; then
    echo "La carpeta $folder ya existe. Se eliminará y se creará una nueva."
    rm -rf "$folder"
fi

#Se crea la carpeta
mkdir "$folder"
echo "Carpeta $folder creada."

#Crear 10 archivos dentro de la carpeta y su contenido tiene la fecha y hora de creación (formato DD/MM/YYYY HH:MM:SS)
for i in {1..10}; do
    file="$folder/archivo_$i.txt"
    echo "Fecha y hora de creación: $(date +"%d/%m/%Y %H:%M:%S")" > "$file"
    echo "Archivo $file creado."
done