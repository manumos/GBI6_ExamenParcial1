#Argumentos 
# $1 = nombre del archivo
# $2 =numero del individuo

#1
echo "Muestras para ID 3"
cut -f 1 $1 | grep -c -w 3

echo "Muestras para el ID 4"
cut -f 1 $1 | grep -c -w 27







cut -f 1 $1 >1.csv
tail -n +2 1.csv >2.csv
uniq -c 2.csv
#echo "Cantidad de registros para el identificador ingresado"
#ls -l 3.csv| awk '{print$2}'
rm *.csv

