#Argumentos
#$1=nombre del archivo original
#$2=nombre asignado a la copia

#1.
echo " "
echo "1"
echo "Tamano del archivo"
du -h $1
echo " "

#2
echo "2"
cp $1 $2|mv $2 .
echo "El archivo ha sido copiado en el directorio actual"
ls
echo " "

#3
echo "3"
echo "Cantidad de Iso-grupos 00036"
grep -c isogroup00036 $2
echo " "

#4
echo "4"
echo "El archivo actualmenente esta organizado de esta manera"
echo " "
head -1 $2
echo " "
echo "El espaciador '  ' se cambio por ',' para verse de esta manera"
cat $2|tr -s "[ *2]" "," > 1.temp
cat 1.temp>$2
rm 1.temp
echo " "
head -1 $2
echo " "

#5
echo "5"
echo "Iso-grupos unicos"
grep "isogroup" $2>1.csv
cut -d "," -f 4 1.csv>2.csv
uniq 2.csv |wc -l

echo " "

#6
echo "6"
echo "El fragmento  de secuencias con mayor lecturas es"
cut -d "," -f 1,3 1.csv|tr -d "contigsnumreads=">4.csv
sort -nk 2 4.csv | tail -1
echo "Fragmento,lecturas"
rm *.csv
