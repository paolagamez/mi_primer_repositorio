#CICLOS EN R

#Ciclo for
#sintaxis: for (variable en secuencia){codigo a ejecutar en cada iteracion}

#EJEMPLO:
for(i in 1:5){
  print(i)
} #i es la variable y toma los valores del 1 al 5, cuando se ejecuta imprime el valor de i en cada iteracion, cuando se sale del rango termina el ciclo


nombres <- c("Andy", "Gaby", "Cesar", "Pao")
for (nombre in nombres) {
  saludo <- paste("Hola", nombre, "¿Cómo estas?")
  print(saludo)
}


vector <- c(2,4,6,8)
suma <- 0
for (i in vector){
  suma <- suma + i
}
print(suma)


data_salon <- data.frame (nombres = c("Andy", "Gaby", "Cesar", "Pao"),
                          color = c("azul", "amarillo", "verde", "rosa"),
                          mascota = c("pedro","perla","julio","nina"))
data_salon

for (i in 1:nrow(data_salon)) {
  print(paste("Hola",data_salon$nombres[i],"tu color favorito es: ",data_salon$color[i],"y tu mascota se llama: ", data_salon$mascota[i]))
}

#Ciclo while
#No permite hacer ciclos de forma repetida. 
#Hasta que la condición es falsa se sale del ciclo
#En for se sabe cuantas veces se va ejecutar, en while depende de la condición de un valor logico.


#EJERCICIOS 22 DE OCTUBRE DE 2025 FOR

placas <- c("R","S","S","R","R","S","R")
resistentes <- 0

for(p in placas){
  if(p == "R"){
    resistentes <- resistentes + 1
  }
}
resistentes
##
expresion <- data.frame (
  muestra =c("A","B","C"),
  gen1 = c(5,0,3),
  gen2 = c(2,1,0),
  gen3 = c(0,4,2)
)

conteo <- numeric(nrow(expresion))

for(i in 1:nrow(expresion)){
  datos <- expresion[i,2:4]
  conteo[i] <- sum(datos > 0)
}

#Cuantos genes se expresan en cada muestra?
##
microbiota <- data.frame(
  especie = c ("Lactobacillus", "Bacteroides", "Escherichia"),
  muestra1= c (11,50,25),
  muestra2 = c (80,40,20)
)

relativas <- microbiota

for (i in 2:ncol (microbiota)) {
  tot <- (sum:microbiota [ ,i])
  relativas [ , i] <- microbiota[,i]/tot
}
relativas

#Ejercicios WHILE 27 de oct de 2025
suma <- 1
contador <- 0

while (suma <= 1000){
  
  suma <- suma + contador
  
  contador <- contador + 1 # para no hacer un ciclo infinito
}

cat ("Número de iteraciones:" , contador -1, "\n")
cat ("Suma total:" , suma, "\n")



## monitoriando crecimiento de colonia bacteriana, se multiplican cada hora, si inicias con 100 bacterias

bacterias <- 100
horas <- 0 # inicias en la hora cero

# cuantas horas van a pasar para que la colonia tenga + de 1000 bacterias

while ( bacterias <= 10000){
  bacterias <- bacterias * 2 # se duplican cada h
  
  print (paste("horas: ", horas)) # que me indique por cada operación el resultado de cada una
  print (paste("bacterias:  ", bacterias))
  
  
  horas <- horas +1 # se suma cada h
}

cat ("Numero de horas: ", horas) # te dice cuantas horas pasan para tener 10000 bacterias

##
bacterias2 <- 500
horas2 = 0
tasa_reduccion = 0.20  # 20%

while (bacterias2 > 50 ){
  bacterias3 <- bacterias2 * (1 - tasa_reduccion) ## tasa de reducción
  horas3 <- horas2 +1
  
  print (paste("horas: ", horas3)) # que me indique por cada operación el resultado de cada una
  print (paste("bacterias:  ", bacterias3))
}

cat ("Numero de horas:", horas3)