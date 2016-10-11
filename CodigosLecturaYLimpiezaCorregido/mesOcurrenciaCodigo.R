library(data.table)  
setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/General")
mog = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso general
for (i in 1:length(mog)) assign(mog[i], read.csv(mog[i],colClasses = "character", 
                                                 na.strings = "#N/A"))
mogeneral <- lapply(mog, fread, sep=",") 


setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/Hombres")
moh = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso hombres
for (i in 1:length(moh)) assign(moh[i], read.csv(moh[i],colClasses = "character", 
                                                 na.strings = "#N/A"))
mohombres <- lapply(moh, fread, sep=",") 


setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/Mujeres")
mom = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso mujeres
for (i in 1:length(mom)) assign(mom[i], read.csv(mom[i],colClasses = "character", 
                                                 na.strings = "#N/A"))
momujeres <- lapply(mom, fread, sep=",") 

data <- rbindlist( mogeneral )#No estoy seguro si esto es necesario


for (i in 1:length(mogeneral)) {
  names(mogeneral[[i]]) <- toupper(names(mogeneral[[i]]))
}

for (j in 1:length(mogeneral)) {
  mogeneral[[j]] <- within( mogeneral[[j]] , 
                      {
                        ESTADO <- gsub("M.*co.*", "Mexico", ESTADO)
                        ESTADO <- gsub("Agua.*es.*", "Aguascalientes", ESTADO)
                        ESTADO <- gsub("Dist.*al.*", "Distrito Federal", ESTADO)
                        ESTADO <- gsub("Guan.*o.*", "Guanajuato", ESTADO)
                        ESTADO <- gsub("M.*n.*", "Michoacan", ESTADO)
                        ESTADO <- gsub("M.*los.*", "Morelos", ESTADO)
                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                        ESTADO <- gsub("Quer.*ro.*", "Queretaro", ESTADO)
                        ESTADO <- gsub("Zac.*cas.*", "Zacatecas", ESTADO)
                        ESTADO <- gsub("Quint.*oo.*", "Quintana Roo", ESTADO)
                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                      }
)
}

for (i in 1:length(mohombres)) {
  names(mohombres[[i]]) <- toupper(names(mohombres[[i]]))
}

for (j in 1:length(mohombres)) {
  mohombres[[j]] <- within( mohombres[[j]] , 
                            {
                              ESTADO <- gsub("M.*co.*", "Mexico", ESTADO)
                              ESTADO <- gsub("Agua.*es.*", "Aguascalientes", ESTADO)
                              ESTADO <- gsub("Dist.*al.*", "Distrito Federal", ESTADO)
                              ESTADO <- gsub("Guan.*o.*", "Guanajuato", ESTADO)
                              ESTADO <- gsub("M.*n.*", "Michoacan", ESTADO)
                              ESTADO <- gsub("M.*los.*", "Morelos", ESTADO)
                              ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                              ESTADO <- gsub("Quer.*ro.*", "Queretaro", ESTADO)
                              ESTADO <- gsub("Zac.*cas.*", "Zacatecas", ESTADO)
                              ESTADO <- gsub("Quint.*oo.*", "Quintana Roo", ESTADO)
                              ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                              ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                            }
  )
}

for (i in 1:length(momujeres)) {
  names(momujeres[[i]]) <- toupper(names(momujeres[[i]]))
}

for (j in 1:length(momujeres)) {
  momujeres[[j]] <- within( momujeres[[j]] , 
                            {
                              ESTADO <- gsub("M.*co.*", "Mexico", ESTADO)
                              ESTADO <- gsub("Agua.*es.*", "Aguascalientes", ESTADO)
                              ESTADO <- gsub("Dist.*al.*", "Distrito Federal", ESTADO)
                              ESTADO <- gsub("Guan.*o.*", "Guanajuato", ESTADO)
                              ESTADO <- gsub("M.*n.*", "Michoacan", ESTADO)
                              ESTADO <- gsub("M.*los.*", "Morelos", ESTADO)
                              ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                              ESTADO <- gsub("Quer.*ro.*", "Queretaro", ESTADO)
                              ESTADO <- gsub("Zac.*cas.*", "Zacatecas", ESTADO)
                              ESTADO <- gsub("Quint.*oo.*", "Quintana Roo", ESTADO)
                              ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                              ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                            }
  )
}

