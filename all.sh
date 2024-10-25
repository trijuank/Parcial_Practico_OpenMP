#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22

#INPUT_PNG="image.png"
#TEMP_FILE="image.bin"
#python3 fromPNG2Bin.py ${INPUT_PNG}
#./main ${TEMP_FILE}
#python3 fromBin2PNG.py ${TEMP_FILE}.new

# Directorio donde están las imágenes PNG
INPUT_DIR="./images"
OUTPUT_DIR="./output"

# Iterar sobre todos los archivos PNG en el directorio de entrada
for INPUT_PNG in ${INPUT_DIR}/*.png; do
    # Extraer el nombre del archivo sin extensión
    BASENAME=$(basename "$INPUT_PNG" .png)
    
    # Crear un archivo temporal con el nombre base
    TEMP_FILE="${INPUT_DIR}/${BASENAME}.bin"

    # Convertir PNG a BIN
    python3 fromPNG2Bin.py "${INPUT_PNG}"
    
    # Procesar el archivo binario
    ./main "${TEMP_FILE}"
    
    # Convertir el archivo BIN procesado de nuevo a PNG
    python3 fromBin2PNG.py "${TEMP_FILE}.new"
    
    echo "Procesado ${INPUT_PNG} -> ${TEMP_FILE}.new"
done