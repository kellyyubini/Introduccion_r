install.packages("tidyverse")

library(tidyverse)

data("trees")

arboles <- trees

#funciones para explorar los datos. 
class(arboles)
colnames(arboles)
ncol(arboles)
nrow(arboles)
str(arboles)
head(arboles)
glimpse(arboles) #función del paquete tidyverse 
names(arboles) #nombres
is.na(arboles) #valores perdidos
length(arboles$Height) #extensión de una variable

install.packages("naniar") #instala paquetes
library(naniar)

n_miss(arboles) #valores perdidod
miss_var_summary(arboles) #la suma de los valores perdidos

arboles$Height[1]
arboles$Height[5]
arboles$Height[10]
arboles$Height[1:5]

#funciones para hacer calculo. 

mean(arboles$Height) #calcula la media
min(arboles$Height) #calcula el valor minimo
max(arboles$Height) #calcula el valor maximo
sd(arboles$Height) #calcula la desviasion estandar 

arboles$Height > 80 #indica cuales de las posiciones son true o false
arboles$Height[arboles$Height > 80] # “Del vector Height, entrégame solamente las posiciones donde esta condición sea TRUE.”


summary(arboles)

#calcular una nueva variable se crea una nueva columna que es la razon entre el volumen y la altura

arboles$vol_alt <- arboles$Volume / arboles$Height

#1 Supongamos ahora que queremos calcular el volumen de madera de cada uno de los árboles, asumiendo que alrededor del 87% del árbol es madera (el resto es agua…)

arboles$vol_sagua <- arboles$Volume * 0.87

sum(arboles$vol_sagua)
mean(arboles$vol_sagua)

