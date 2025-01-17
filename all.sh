#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversión de múltiples archivos JPG a secuencia de píxeles, procesarlos
# y posteriormente convertir esa secuencia a archivos PNG.
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
# Modificado por: Juan David Rodriguez - juan.rodriguez.rubio@correounivalle.edu.co
# Fecha: 2024-10-24
#

for INPUT_JPG in images/*.jpg; do
  TEMP_FILE="${INPUT_JPG%.jpg}.bin"

  python3 fromPNG2Bin.py "${INPUT_JPG}"
  ./main "${TEMP_FILE}"
  python3 fromBin2PNG.py "${TEMP_FILE}.new"
done
