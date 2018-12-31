Los datos de entrada correspondientes a las lecturas se encuentran en formato
# FASTQ, el cual se debe analizar de forma preliminar antes de realizar
# cualquier procedimiento de limpieza o correccion de errores sobre las lecturas.
# De esta manera, se debe ingresar a la carpeta:
# Una vez se conozcan los parametros de calidad calculados parar las lecturas
# se debe realizar el respectivo corte de adaptadores, esto se realiza con el
# script ./runTrimmomatic_sp.sh
cd ./runTrimmomatic_sp.sh
# Los archivos de salida del programa Trimmomatic se encuentran en:
# /GenomeAssembly_2018/Results/Trimming
# los cuales se encuentran:
# 1)Forward Paired
# 2)Reverse Paired
# 3)Forward Unpaired
# 4)Reverse Unpaired
# De los anteriores 1) y 2) se utilizan como entrada al programa Musket, el cual
# permite realizar la correcion de estas lecturas, especificamente sobre los
# errores de secuenciamiento producidos por Illumina. Lo anterior se obtiene
# ejecutando:
./run_musket_all.sh
# Generando los archivos corrected.0 y corrected.1
# Especificamente para las lecturas paired-end se ejecuta un ultimo
# paso con el programa FLASh (Fast Length Adjustment of SHort reads), el cual
# realiza el sobrelapamiento y posterior union de las lecturas pareadas
# generando los siguientes archivos:
# A) Hcol_Combined.fastq
# B) Hcol_.notCombined_1.fastq
# C) Hcol_.notCombined_2.fastq
# A) Corresponde a las lecturas combinadas, mientras B) son lecturas forward no
# combinadas y C) lecturas reverse no combinadas.
#
# Es importante mencionar que los anteriores archivos sirven posteriormente
# para las estrategias de ensamblaje.
#
#
# END
