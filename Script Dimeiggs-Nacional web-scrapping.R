

#instalando rvest y gdata
install.packages("gdata")
install.packages("rvest")
install.packages("dplyr")
#implementar liberia rvest y gdata
library("gdata")
library("rvest")
library("dplyr")
library(ggplot2)





#En esta parte del script se procede a realizar el web scrapping de
#los datos de las paginas de las empresas Nacional y Dimeiggs
#Ademas se les asigna las variables a los datos de las distintas
#categorias (cuadernos, lapiz grafito, lapices de colores, lapiz pasta,
#goma de borrar y pegamento en barra)
#cabe destacar que las etiquetas, class o ID son obtenidos directamente
#del codigo fuente de las enlaces descargados.

#Realizada la asignacion de las variables, se limpian los datos y se unen los 
#precios y nombres de los respectivos productos y de las respectivas tiendas

########## COMPARACION CUADERNOS ##########
###########################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/escolar/cuadernos-libretas-y-agendas/universitarios.html?manufacturer=9550")
dimeiggs.cuaderno <- read_html("https://www.dimeiggs.cl/escolar/cuadernos-libretas-y-agendas/universitarios.html?manufacturer=9550")
print(dimeiggs.cuaderno)
#NOMBRE
cuaderno.dim.nom <- html_node(dimeiggs.cuaderno, css = ".category-products")
name.cuad.dim <- html_nodes(cuaderno.dim.nom, css = "h2")
cuad.dim.nom <- html_text(name.cuad.dim)
#PRECIO
cuad.dim.precio <- html_node(dimeiggs.cuaderno, css = ".category-products")
price.cuad.dim <- html_nodes(cuad.dim.precio, css = ".price")
cuad.dim.pre <- html_text(price.cuad.dim)

########## NACIONAL ##########
read_html("https://www.nacional.cl/busqueda/0/?busqueda=cuaderno+universitario+proarte")
nacional.cuaderno <- read_html("https://www.nacional.cl/busqueda/0/?busqueda=cuaderno+universitario+proarte")
print(nacional.cuaderno)
#NOMBRE
cuaderno.NA.nom <- html_node(nacional.cuaderno, css = "#productDiv")
name.cuad.NA <- html_nodes(cuaderno.NA.nom, css = "h4")
cuad.NA.nom <- html_text(name.cuad.NA)
#PRECIO
cuad.NA.precio <- html_node(nacional.cuaderno, css = "#productDiv")
price.cuad.NA <- html_nodes(cuad.NA.precio, css = ".price")
cuad.NA.pre <- html_text(price.cuad.NA)
################################################################################
for (x in 1:length(cuad.dim.nom)) {
  print(cuad.dim.nom[x])
}
print(cuad.dim.nom)
#limpieza de variables
for (x in 1:length(cuad.dim.pre)) {
  print(x[cuad.dim.pre])
  cuad.dim.pre <- gsub("[$]","",cuad.dim.pre)
  cuad.dim.pre <- gsub("[.]","",cuad.dim.pre)
  cuad.dim.pre <- as.numeric(cuad.dim.pre)
}
print(cuad.dim.pre)
#asignacion productoxprecio
for (x in 1:length(cuad.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(cuad.dim.nom[x])
  print(cuad.dim.pre[x])  
}

################################################################################
for (x in 1:length(cuad.NA.nom)) {
  print(cuad.NA.nom[x])
}
print(cuad.NA.nom)
#limpieza de variables
for (x in 1:length(cuad.NA.pre)) {
  print(x[cuad.NA.pre])
  cuad.NA.pre <- gsub("[$]","",cuad.NA.pre)
  cuad.NA.pre <- gsub("[.]","",cuad.NA.pre)
  cuad.NA.pre <- as.numeric(cuad.NA.pre)
}
print(cuad.NA.pre)
#asignacion productoxprecio
for (x in 1:length(cuad.NA.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO NACIONAL ---------------")
  print(cuad.NA.nom[x])
  print(cuad.NA.pre[x])  
}



########## COMPARACION LAPIZ GRAFITO ##########
###############################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/escolar/escritura/la-piz-grafito.html")
dimeiggs.graf <- read_html("https://www.dimeiggs.cl/escolar/escritura/la-piz-grafito.html")
print(dimeiggs.graf)
#NOMBRE
grafito.dim.nom <- html_node(dimeiggs.graf, css = ".category-products")
name.graf.dim <- html_nodes(grafito.dim.nom, css = "h2")
graf.dim.nom <- html_text(name.graf.dim)
#PRECIO
graf.dim.precio <- html_node(dimeiggs.graf, css = ".category-products")
price.graf.dim <- html_nodes(graf.dim.precio, css = ".regular-price")
graf.dim.pre <- html_text(price.graf.dim)
########## NACIONAL ##########
read_html("https://www.nacional.cl/s/escolar/grafitos-carboncillos")
nacional.graf <- read_html("https://www.nacional.cl/s/escolar/grafitos-carboncillos")
print(nacional.graf)
#NOMBRE
grafito.NA.nom <- html_node(nacional.graf, css = "#productDiv")
name.graf.NA <- html_nodes(grafito.NA.nom, css = "h4")
graf.NA.nom <- html_text(name.graf.NA)
#PRECIO
graf.NA.precio <- html_node(nacional.graf, css = "#productDiv")
price.graf.NA <- html_nodes(graf.NA.precio, css = ".price")
graf.NA.pre <- html_text(price.graf.NA)
################################################################################
for (x in 1:length(graf.dim.nom)) {
  print(graf.dim.nom[x])
}
print(graf.dim.nom)
#limpieza de variables
for (x in 1:length(graf.dim.pre)) {
  print(x[graf.dim.pre])
  graf.dim.pre <- gsub("[$]","",graf.dim.pre)
  graf.dim.pre <- gsub("[.]","",graf.dim.pre)
  graf.dim.pre <- as.numeric(graf.dim.pre)
}
print(graf.dim.pre)
#asignacion productoxprecio
for (x in 1:length(graf.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(graf.dim.nom[x])
  print(graf.dim.pre[x])  
}
################################################################################
for (x in 1:length(graf.NA.nom)) {
  print(graf.NA.nom[x])
}
print(graf.NA.nom)
#limpieza de variables
for (x in 1:length(graf.NA.pre)) {
  print(x[graf.NA.pre])
  graf.NA.pre <- gsub("[$]","",graf.NA.pre)
  graf.NA.pre <- gsub("[.]","",graf.NA.pre)
  graf.NA.pre <- as.numeric(graf.NA.pre)
}
print(graf.NA.pre)
#asignacion productoxprecio
for (x in 1:length(graf.NA.nom)) {
  print("--------------- NOMBRE LAPIZ Y PRECIO NACIONAL ---------------")
  print(graf.NA.nom[x])
  print(graf.NA.pre[x])  
}



########## COMPARACION LAPICES DE COLORES ##########
####################################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/escolar/escritura/la-pices-para-pintar/lapices-de-colores/hexagonal.html")
dimeiggs.col <- read_html("https://www.dimeiggs.cl/escolar/escritura/la-pices-para-pintar/lapices-de-colores/hexagonal.html")
print(dimeiggs.col)
#NOMBRE
colores.dim.nom <- html_node(dimeiggs.col, css = ".category-products")
name.col.dim <- html_nodes(colores.dim.nom, css = "h2")
col.dim.nom <- html_text(name.col.dim)
#PRECIO
col.dim.precio <- html_node(dimeiggs.col, css = ".category-products")
price.col.dim <- html_nodes(col.dim.precio, css = ".regular-price")
price.col.dimx <- html_nodes(col.dim.precio, css = ".special-price")
col.dim.pre <- c(html_text(price.col.dim),html_text(price.col.dimx))

########## NACIONAL ##########
read_html("https://www.nacional.cl/s/escolar/lapices-de-color/1/")
nacional.col <- read_html("https://www.nacional.cl/s/escolar/lapices-de-color/1/")
print(nacional.col)
#NOMBRE
colores.NA.nom <- html_node(nacional.col, css = "#productDiv")
name.col.NA <- html_nodes(colores.NA.nom, css = "h4")
col.NA.nom <- html_text(name.col.NA)
#PRECIO
col.NA.precio <- html_node(nacional.col, css = "#productDiv")
price.col.NA <- html_nodes(col.NA.precio, css = ".price")
col.NA.pre <- html_text(price.col.NA)
################################################################################
for (x in 1:length(col.dim.nom)) {
  print(col.dim.nom[x])
}
print(col.dim.nom)
#limpieza de variables
for (x in 1:length(col.dim.pre)) {
  print(x[col.dim.pre])
  col.dim.pre <- gsub("[$]","",col.dim.pre)
  col.dim.pre <- gsub("[.]","",col.dim.pre)
  col.dim.pre <- as.numeric(col.dim.pre)
}
print(col.dim.pre)
#asignacion productoxprecio
for (x in 1:length(col.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(col.dim.nom[x])
  print(col.dim.pre[x])  
}
################################################################################
for (x in 1:length(col.NA.nom)) {
  print(col.NA.nom[x])
}
print(col.NA.nom)
#limpieza de variables
for (x in 1:length(col.NA.pre)) {
  print(x[col.NA.pre])
  col.NA.pre <- gsub("[$]","",col.NA.pre)
  col.NA.pre <- gsub("[.]","",col.NA.pre)
  col.NA.pre <- as.numeric(col.NA.pre)
}
print(col.NA.pre)
#asignacion productoxprecio
for (x in 1:length(col.NA.nom)) {
  print("--------------- NOMBRE LAPICES DE COLORES Y PRECIO NACIONAL ---------------")
  print(col.NA.nom[x])
  print(col.NA.pre[x])  
}



########## COMPARACION LAPIZ PASTA ##########
#############################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/oficina/escritura/la-piz-pasta.html")
dimeiggs.pasta <- read_html("https://www.dimeiggs.cl/oficina/escritura/la-piz-pasta.html")
print(dimeiggs.pasta)
#NOMBRE
pasta.dim.nom <- html_node(dimeiggs.pasta, css = ".category-products")
name.past.dim <- html_nodes(pasta.dim.nom, css = "h2")
past.dim.nom <- html_text(name.past.dim)
#PRECIO
past.dim.precio <- html_node(dimeiggs.pasta, css = ".category-products")
price.past.dim <- html_nodes(past.dim.precio, css = ".regular-price")
price.past.dimx <- html_nodes(past.dim.precio, css = ".special-price")
#creacion de un vector que una las class de los precios, debido a que poseen 
#etiquetas distintas
past.dim.pre <- c(html_text(price.past.dim),html_text(price.past.dimx))

########## NACIONAL ##########
read_html("https://www.nacional.cl/s/oficina/boligrafos/1/")
nacional.pasta <- read_html("https://www.nacional.cl/s/oficina/boligrafos/1/")
print(nacional.pasta)
#NOMBRE
pasta.NA.nom <- html_node(nacional.pasta, css = "#productDiv")
name.past.NA <- html_nodes(pasta.NA.nom, css = "h4")
past.NA.nom <- html_text(name.past.NA)
#PRECIO
past.NA.precio <- html_node(nacional.pasta, css = "#productDiv")
price.past.NA <- html_nodes(past.NA.precio, css = ".price")
past.NA.pre <- html_text(price.past.NA)
################################################################################
for (x in 1:length(past.dim.nom)) {
  print(past.dim.nom[x])
}
print(past.dim.nom)
#limpieza de variables
for (x in 1:length(past.dim.pre)) {
  print(x[past.dim.pre])
  past.dim.pre <- gsub("[$]","",past.dim.pre)
  past.dim.pre <- gsub("[.]","",past.dim.pre)
  past.dim.pre <- as.numeric(past.dim.pre)
}
print(past.dim.pre)
#asignacion productoxprecio
for (x in 1:length(past.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(past.dim.nom[x])
  print(past.dim.pre[x])  
}
################################################################################
for (x in 1:length(past.NA.nom)) {
  print(past.NA.nom[x])
}
print(past.NA.nom)
#limpieza de variables
for (x in 1:length(past.NA.pre)) {
  print(x[past.NA.pre])
  past.NA.pre <- gsub("[$]","",past.NA.pre)
  past.NA.pre <- gsub("[.]","",past.NA.pre)
  past.NA.pre <- as.numeric(past.NA.pre)
}
print(past.NA.pre)
#asignacion productoxprecio
for (x in 1:length(past.NA.nom)) {
  print("--------------- NOMBRE LAPIZ PASTA Y PRECIO NACIONAL ---------------")
  print(past.NA.nom[x])
  print(past.NA.pre[x])  
}



########## COMPARACION GOMA ##########
######################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/catalogsearch/result/index/?ajaxcatalog=true&q=GOMA+DE+BORRAR")
dimeiggs.goma <- read_html("https://www.dimeiggs.cl/catalogsearch/result/index/?ajaxcatalog=true&q=GOMA+DE+BORRAR")
print(dimeiggs.goma)
#NOMBRE
goma.dim.nom <- html_node(dimeiggs.goma, css = ".category-products")
name.gom.dim <- html_nodes(goma.dim.nom, css = "h2")
gom.dim.nom <- html_text(name.gom.dim)
#PRECIO
gom.dim.precio <- html_node(dimeiggs.goma, css = ".category-products")
price.gom.dim <- html_nodes(gom.dim.precio, css = ".regular-price")
gom.dim.pre <- html_text(price.gom.dim)
########## NACIONAL ##########
read_html("https://www.nacional.cl/s/escolar/gomas-de-borrar")
nacional.goma <- read_html("https://www.nacional.cl/s/escolar/gomas-de-borrar")
print(nacional.goma)
#NOMBRE
goma.NA.nom <- html_node(nacional.goma, css = "#productDiv")
name.gom.NA <- html_nodes(goma.NA.nom, css = "h4")
gom.NA.nom <- html_text(name.gom.NA)
#PRECIO
gom.NA.precio <- html_node(nacional.goma, css = "#productDiv")
price.gom.NA <- html_nodes(gom.NA.precio, css = ".price")
gom.NA.pre <- html_text(price.gom.NA)
################################################################################
for (x in 1:length(gom.dim.nom)) {
  print(gom.dim.nom[x])
}
print(gom.dim.nom)
#limpieza de variables
for (x in 1:length(gom.dim.pre)) {
  print(x[gom.dim.pre])
  gom.dim.pre <- gsub("[$]","",gom.dim.pre)
  gom.dim.pre <- gsub("[.]","",gom.dim.pre)
  gom.dim.pre <- as.numeric(gom.dim.pre)
}
print(gom.dim.pre)
#asignacion productoxprecio
for (x in 1:length(gom.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(gom.dim.nom[x])
  print(gom.dim.pre[x])  
}
################################################################################
for (x in 1:length(gom.NA.nom)) {
  print(gom.NA.nom[x])
}
print(gom.NA.nom)
#limpieza de variables
for (x in 1:length(gom.NA.pre)) {
  print(x[gom.NA.pre])
  gom.NA.pre <- gsub("[$]","",gom.NA.pre)
  gom.NA.pre <- gsub("[.]","",gom.NA.pre)
  gom.NA.pre <- as.numeric(gom.NA.pre)
}
print(gom.NA.pre)
#asignacion productoxprecio
for (x in 1:length(gom.NA.nom)) {
  print("--------------- NOMBRE GOMA Y PRECIO NACIONAL ---------------")
  print(gom.NA.nom[x])
  print(gom.NA.pre[x])  
}



########## COMPARACION PEGAMENTO BARRA ##########
#################################################

########## DIMEIGGS ##########
read_html("https://www.dimeiggs.cl/escolar/manualidades/adhesivos-y-pegamentos.html?tipo_de_pegamento=9947")
dimeiggs.peg <- read_html("https://www.dimeiggs.cl/escolar/manualidades/adhesivos-y-pegamentos.html?tipo_de_pegamento=9947")
print(dimeiggs.peg)
#NOMBRE
pegamento.dim.nom <- html_node(dimeiggs.peg, css = ".category-products")
name.peg.dim <- html_nodes(pegamento.dim.nom, css = "h2")
peg.dim.nom <- html_text(name.peg.dim)
#PRECIO
peg.dim.precio <- html_node(dimeiggs.peg, css = ".category-products")
price.peg.dim <- html_nodes(peg.dim.precio, css = ".regular-price")
peg.dim.pre <- html_text(price.peg.dim)
########## NACIONAL ##########
read_html("https://www.nacional.cl/s/escolar/adhesivos/1/")
nacional.peg <- read_html("https://www.nacional.cl/s/escolar/adhesivos/1/")
print(nacional.peg)
#NOMBRE
pegamento.NA.nom <- html_node(nacional.peg, css = "#productDiv")
name.peg.NA <- html_nodes(pegamento.NA.nom, css = "h4")
peg.NA.nom <- html_text(name.peg.NA)
#PRECIO
peg.NA.precio <- html_node(nacional.peg, css = "#productDiv")
price.peg.NA <- html_nodes(peg.NA.precio, css = ".price")
peg.NA.pre <- html_text(price.peg.NA)
################################################################################
for (x in 1:length(peg.dim.nom)) {
  print(peg.dim.nom[x])
}
print(peg.dim.nom)
#limpieza de variables
for (x in 1:length(peg.dim.pre)) {
  print(x[peg.dim.pre])
  peg.dim.pre <- gsub("[$]","",peg.dim.pre)
  peg.dim.pre <- gsub("[.]","",peg.dim.pre)
  peg.dim.pre <- as.numeric(peg.dim.pre)
}
print(peg.dim.pre)
#asignacion productoxprecio
for (x in 1:length(peg.dim.nom)) {
  print("--------------- NOMBRE CUADERNO Y PRECIO DIMEIGGS ---------------")
  print(peg.dim.nom[x])
  print(peg.dim.pre[x])  
}
################################################################################
for (x in 1:length(peg.NA.nom)) {
  print(peg.NA.nom[x])
}
print(peg.NA.nom)
#limpieza de variables
for (x in 1:length(peg.NA.pre)) {
  print(x[peg.NA.pre])
  peg.NA.pre <- gsub("[$]","",peg.NA.pre)
  peg.NA.pre <- gsub("[.]","",peg.NA.pre)
  peg.NA.pre <- as.numeric(peg.NA.pre)
}
print(peg.NA.pre)
#asignacion productoxprecio
for (x in 1:length(peg.NA.nom)) {
  print("--------------- NOMBRE PEGAMENTO Y PRECIO NACIONAL ---------------")
  print(peg.NA.nom[x])
  print(peg.NA.pre[x])  
}


#CUADERNOS
cuadernos.dimeiggs <- data.frame(producto = cuad.dim.nom, precio = cuad.dim.pre)
cuadernos.nacional <- data.frame(producto = cuad.NA.nom, precio = cuad.NA.pre)
#LAPIZ GRAFITO
data.frame(producto = graf.dim.nom, precio = graf.dim.pre)
data.frame(producto = graf.NA.nom, precio = graf.NA.pre)
#LAPICES DE COLORES
data.frame(producto = col.dim.nom, precio = col.dim.pre)
data.frame(producto = col.NA.nom, precio = col.NA.pre)
#LAPIZ PASTA
data.frame(producto = past.dim.nom, precio = past.dim.pre)
data.frame(producto = past.NA.nom, precio = past.NA.pre)
#GOMA
data.frame(producto = gom.dim.nom, precio = gom.dim.pre)
data.frame(producto = gom.NA.nom, precio = gom.NA.pre)
#PEGAMENTO EN BARRA
data.frame(producto = peg.dim.nom, precio = peg.dim.pre)
data.frame(producto = peg.NA.nom, precio = peg.NA.pre)



#creacion de bases de datos por tipo de producto, juntando los datos de 
#ambas empresas

DATOS.CUADERNO <- rbind.data.frame(data.frame(producto = cuad.dim.nom, precio = cuad.dim.pre, tienda = "DIMEIGGS", tipo = "CUADERNO"),
                                   data.frame(producto = cuad.NA.nom, precio = cuad.NA.pre, tienda = "NACIONAL", tipo = "CUADERNO"))

write.csv(DATOS.CUADERNO,file = "CUADERNOS.csv")

DATOS.GRAFITO <- rbind.data.frame(data.frame(producto = graf.dim.nom, precio = graf.dim.pre, tienda = "DIMEIGGS", tipo = "GRAFITO"),
                                  data.frame(producto = graf.NA.nom, precio = graf.NA.pre, tienda = "NACIONAL", tipo = "GRAFITO"))
write.csv(DATOS.GRAFITO,file = "GRAFITO.csv")

DATOS.COLORES<- rbind.data.frame(data.frame(producto = col.dim.nom, precio = col.dim.pre, tienda = "DIMEIGGS", tipo = "COLORES"),
                                 data.frame(producto = col.NA.nom, precio = col.NA.pre, tienda = "NACIONAL", tipo = "COLORES"))
write.csv(DATOS.COLORES,file = "COLORES.csv")

DATOS.PASTA <- rbind.data.frame(data.frame(producto = past.dim.nom, precio = past.dim.pre, tienda = "DIMEIGGS", tipo = "PASTA"),
                                data.frame(producto = past.NA.nom, precio = past.NA.pre, tienda = "NACIONAL", tipo = "PASTA"))
write.csv(DATOS.PASTA,file = "PASTA.csv")
DATOS.GOMA <- rbind.data.frame(data.frame(producto = gom.dim.nom, precio = gom.dim.pre, tienda = "DIMEIGGS", tipo = "GOMA"),
                               data.frame(producto = gom.NA.nom, precio = gom.NA.pre, tienda = "NACIONAL", tipo = "GOMA"))
write.csv(DATOS.GOMA,file = "GOMA.csv")
DATOS.PEGAMENTO <- rbind.data.frame(data.frame(producto = peg.dim.nom, precio = peg.dim.pre, tienda = "DIMEIGGS", tipo = "PEGAMENTO"),
                                    data.frame(producto = peg.NA.nom, precio = peg.NA.pre, tienda = "NACIONAL", tipo = "PEGAMENTO"))
write.csv(DATOS.PEGAMENTO,file = "PEGAMENTO.csv")

#creacion de una base de datos unica, juntando todas los productos de ambas 
#empresas

DATOS.DIM.NA <- rbind.data.frame(data.frame(producto = cuad.dim.nom, precio = cuad.dim.pre, tienda = "DIMEIGGS", tipo = "CUADERNO"),
                                 data.frame(producto = cuad.NA.nom, precio = cuad.NA.pre, tienda = "NACIONAL", tipo = "CUADERNO"),
                                 data.frame(producto = graf.dim.nom, precio = graf.dim.pre, tienda = "DIMEIGGS", tipo = "GRAFITO"),
                                 data.frame(producto = graf.NA.nom, precio = graf.NA.pre, tienda = "NACIONAL", tipo = "GRAFITO"),
                                 data.frame(producto = col.dim.nom, precio = col.dim.pre, tienda = "DIMEIGGS", tipo = "COLORES"),
                                 data.frame(producto = col.NA.nom, precio = col.NA.pre, tienda = "NACIONAL", tipo = "COLORES"),
                                 data.frame(producto = past.dim.nom, precio = past.dim.pre, tienda = "DIMEIGGS", tipo = "PASTA"),
                                 data.frame(producto = past.NA.nom, precio = past.NA.pre, tienda = "NACIONAL", tipo = "PASTA"),
                                 data.frame(producto = gom.dim.nom, precio = gom.dim.pre, tienda = "DIMEIGGS", tipo = "GOMA"),
                                 data.frame(producto = gom.NA.nom, precio = gom.NA.pre, tienda = "NACIONAL", tipo = "GOMA"),
                                 data.frame(producto = peg.dim.nom, precio = peg.dim.pre, tienda = "DIMEIGGS", tipo = "PEGAMENTO"),
                                 data.frame(producto = peg.NA.nom, precio = peg.NA.pre, tienda = "NACIONAL", tipo = "PEGAMENTO"))
write.csv(DATOS.DIM.NA,file = "COMBINACION_DIM_NAC.csv")



#graficar los datos obtenidos para su analisis

#CUADERNO 
ggplot(DATOS.CUADERNO, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO CUADERNO")

#GRAFITO
ggplot(DATOS.GRAFITO, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO GRAFITO")

#COLORES
ggplot(DATOS.COLORES, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO COLORES")

#PASTA
ggplot(DATOS.PASTA, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO PASTA")

#GOMA 
ggplot(DATOS.GOMA, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO GOMA")

#PEGAMENTO
ggplot(DATOS.PEGAMENTO, aes(x=producto, y=precio, fill=tienda)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("COMPARACION PRECIO PEGAMENTO")

#precios minimos de cada producto y tienda
#cabe destacar que si el resultado es NA, se debe consultar el respectivo
#data frame del tipo de producto para encontrar el producto de menor precio
#de ambas empresas

#CUADERNO
for (x in 1:length(cuad.dim.nom)) {
  min(cuad.dim.pre)
  print(cuad.dim.nom[x])
}
print(cuad.dim.nom[x])
min(cuad.dim.pre)

for (x in 1:length(cuad.NA.nom)) {
  min(cuad.NA.pre)
  print(cuad.NA.nom[x])
}
print(cuad.NA.nom[x])
min(cuad.NA.pre)

#GRAFITO
for (x in 1:length(graf.dim.nom)) {
  min(graf.dim.pre)
  print(graf.dim.nom[x])
}
print(graf.dim.nom[x])
min(graf.dim.pre)

for (x in 1:length(graf.NA.nom)) {
  min(graf.NA.pre)
  print(graf.NA.nom[x])
}
print(graf.NA.nom[x])
min(graf.NA.pre)

#COLORES
for (x in 1:length(col.dim.nom)) {
  min(col.dim.pre)
  print(col.dim.nom[x])
}
print(col.dim.nom[x])
min(col.dim.pre)

for (x in 1:length(col.NA.nom)) {
  min(col.NA.pre)
  print(col.NA.nom[x])
}
print(col.NA.nom[x])
min(col.NA.pre)

#PASTA
for (x in 1:length(past.dim.nom)) {
  min(past.dim.pre)
  print(past.dim.nom[x])
}
print(past.dim.nom[x])
min(past.dim.pre)

for (x in 1:length(past.NA.nom)) {
  min(past.NA.pre)
  print(past.NA.nom[x])
}
print(past.NA.nom[x])
min(past.NA.pre)

#GOMA
for (x in 1:length(gom.dim.nom)) {
  min(gom.dim.pre)
  print(gom.dim.nom[x])
}
print(gom.dim.nom[x])
min(gom.dim.pre)

for (x in 1:length(gom.NA.nom)) {
  min(gom.NA.pre)
  print(gom.NA.nom[x])
}
print(gom.NA.nom[x])
min(gom.NA.pre)

#PEGAMENTO
for (x in 1:length(peg.dim.nom)) {
  min(peg.dim.pre)
  print(peg.dim.nom[x])
}
print(peg.dim.nom[x])
min(peg.dim.pre)

for (x in 1:length(peg.NA.nom)) {
  min(peg.NA.pre)
  print(peg.NA.nom[x])
}
print(peg.NA.nom[x])
min(peg.NA.pre)

#Media de precio de cada producto y tienda

#CUADERNO
for (x in 1:length(cuad.dim.nom)) {
  median(cuad.dim.pre)
  print(cuad.dim.nom[x])
}
print(cuad.dim.nom[x])
median(cuad.dim.pre)

for (x in 1:length(cuad.NA.nom)) {
  median(cuad.NA.pre)
  print(cuad.NA.nom[x])
}
print(cuad.NA.nom[x])
median(cuad.NA.pre)

#GRAFITO
for (x in 1:length(graf.dim.nom)) {
  median(graf.dim.pre)
  print(graf.dim.nom[x])
}
print(graf.dim.nom[x])
median(graf.dim.pre)

for (x in 1:length(graf.NA.nom)) {
  median(graf.NA.pre)
  print(graf.NA.nom[x])
}
print(graf.NA.nom[x])
median(graf.NA.pre)

#COLORES
for (x in 1:length(col.dim.nom)) {
  median(col.dim.pre)
  print(col.dim.nom[x])
}
print(col.dim.nom[x])
median(col.dim.pre)

for (x in 1:length(col.NA.nom)) {
  median(col.NA.pre)
  print(col.NA.nom[x])
}
print(col.NA.nom[x])
median(col.NA.pre)

#PASTA
for (x in 1:length(past.dim.nom)) {
  median(past.dim.pre)
  print(past.dim.nom[x])
}
print(past.dim.nom[x])
median(past.dim.pre)

for (x in 1:length(past.NA.nom)) {
  median(past.NA.pre)
  print(past.NA.nom[x])
}
print(past.NA.nom[x])
median(past.NA.pre)

#GOMA
for (x in 1:length(gom.dim.nom)) {
  median(gom.dim.pre)
  print(gom.dim.nom[x])
}
print(gom.dim.nom[x])
median(gom.dim.pre)

for (x in 1:length(gom.NA.nom)) {
  median(gom.NA.pre)
  print(gom.NA.nom[x])
}
print(gom.NA.nom[x])
median(gom.NA.pre)

#PEGAMENTO
for (x in 1:length(peg.dim.nom)) {
  median(peg.dim.pre)
  print(peg.dim.nom[x])
}
print(peg.dim.nom[x])
median(peg.dim.pre)

for (x in 1:length(peg.NA.nom)) {
  median(peg.NA.pre)
  print(peg.NA.nom[x])
}
print(peg.NA.nom[x])
median(peg.NA.pre)

for (x in 1:length(peg.NA.nom)) {
  median(peg.NA.pre)
  print(peg.NA.nom[x])
}
print(peg.NA.nom[x])
median(peg.NA.pre)

#Max de precio de cada producto y tienda

#CUADERNO
for (x in 1:length(cuad.dim.nom)) {
  max(cuad.dim.pre)
  print(cuad.dim.nom[x])
}
print(cuad.dim.nom[x])
max(cuad.dim.pre)

for (x in 1:length(cuad.NA.nom)) {
  max(cuad.NA.pre)
  print(cuad.NA.nom[x])
}
print(cuad.NA.nom[x])
max(cuad.NA.pre)

#GRAFITO
for (x in 1:length(graf.dim.nom)) {
  max(graf.dim.pre)
  print(graf.dim.nom[x])
}
print(graf.dim.nom[x])
max(graf.dim.pre)

for (x in 1:length(graf.NA.nom)) {
  max(graf.NA.pre)
  print(graf.NA.nom[x])
}
print(graf.NA.nom[x])
max(graf.NA.pre)

#COLORES
for (x in 1:length(col.dim.nom)) {
  max(col.dim.pre)
  print(col.dim.nom[x])
}
print(col.dim.nom[x])
max(col.dim.pre)

for (x in 1:length(col.NA.nom)) {
  max(col.NA.pre)
  print(col.NA.nom[x])
}
print(col.NA.nom[x])
max(col.NA.pre)

#PASTA
for (x in 1:length(past.dim.nom)) {
  max(past.dim.pre)
  print(past.dim.nom[x])
}
print(past.dim.nom[x])
max(past.dim.pre)

for (x in 1:length(past.NA.nom)) {
  max(past.NA.pre)
  print(past.NA.nom[x])
}
print(past.NA.nom[x])
max(past.NA.pre)

#GOMA
for (x in 1:length(gom.dim.nom)) {
  max(gom.dim.pre)
  print(gom.dim.nom[x])
}
print(gom.dim.nom[x])
max(gom.dim.pre)

for (x in 1:length(gom.NA.nom)) {
  max(gom.NA.pre)
  print(gom.NA.nom[x])
}
print(gom.NA.nom[x])
max(gom.NA.pre)

#PEGAMENTO
for (x in 1:length(peg.dim.nom)) {
  max(peg.dim.pre)
  print(peg.dim.nom[x])
}
print(peg.dim.nom[x])
max(peg.dim.pre)

for (x in 1:length(peg.NA.nom)) {
  max(peg.NA.pre)
  print(peg.NA.nom[x])
}
print(peg.NA.nom[x])
max(peg.NA.pre)

for (x in 1:length(peg.NA.nom)) {
  max(peg.NA.pre)
  print(peg.NA.nom[x])
}
print(peg.NA.nom[x])
max(peg.NA.pre)




















