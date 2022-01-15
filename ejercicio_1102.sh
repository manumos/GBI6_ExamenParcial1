#Argumentos $1 = nombre del archivo

#1
echo "Muestras para ID 3"
cut -f 1 $1 | grep -c -w 3

echo "Muestras para el ID 27"
cut -f 1 $1 | grep -c -w 27

#2y3
echo "Numero de registros para cada ID "
cut -f 1 $1 >1.csv
tail -n +2 1.csv >2.csv
uniq -c 2.csv
echo "REGISTROS , ID"
rm *.csv

