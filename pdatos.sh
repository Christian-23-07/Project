#arc=11_9
arc=prestado #nombre del archivo de aceleraciones (debe estar en la carpeta Datos)
cd Datos/
#gnuplot -c grafico.plt $arc.dat
mv $arc.dat ..
cd ..
g++ Nnuevo_Algoritmo.cpp
./a.out $arc
g++  convencional.cpp
./a.out $arc
rm a.out
mv $arc.dat Datos/
mv result_${arc}.dat Resultados/
mv convencional_${arc}.dat Resultados/
mv ac_${arc}.dat Resultados/

cd Resultados/
#gnuplot -c graficop.plt result_${arc}.dat
gnuplot -c graficodis.plt result_${arc}.dat
mv figuradis.png ${arc}_d.png
gnuplot -c graficovel.plt result_${arc}.dat
mv figuravel.png ${arc}_v.png

gnuplot -c cgraficodis.plt result_${arc}.dat convencional_${arc}.dat
mv cfiguradis.png c${arc}_d.png
gnuplot -c cgraficovel.plt result_${arc}.dat convencional_${arc}.dat
mv cfiguravel.png c${arc}_v.png

mv ${arc}_d.png Graficos/
mv ${arc}_v.png Graficos/
mv c${arc}_d.png Graficos/
mv c${arc}_v.png Graficos/
cd ..
