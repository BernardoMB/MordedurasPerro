install.packages("data.table")
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")
install.packages("gridExtra")
library(data.table)
library(dplyr)
library(tidyr)
library(ggplot2)
library(gridExtra)

# ---------------------------- 1.- Directorio de Trabajo --------------------------

# Especificar el directorio de trabajo.
# El directorio de trabajo debe ser la capeta del proyecto:
workingDirectory <- "/Users/Bernardo/Documents/ITAM/Semestre 07/Estadistica Aplicada I/Proyecto/MordedurasPerro"
setwd(workingDirectory)


# ---------------------------- 2.- Lectura de Tablas ------------------------------

getNames <- function() {
  nombres <- NULL
  nombres <- c()
  for (i in 1:12) {
    nombres <- c(nombres, paste(2003 + i))
  }
  return(nombres)
}
nombres <- getNames()

# --------------- 2.1.- Fuente de Notificacion.

# Fuente de Notificacion General
spath <-paste(getwd(), "/Data/CSV/FuenteDeNotificacion/General/", sep="")
setwd(spath)
fng <- list.files()
fng
fng <- lapply(fng, fread, sep=",")
names(fng) <- nombres
setwd(workingDirectory)

# Fuente de Notificacion Hombres
spath <-paste(getwd(), "/Data/CSV/FuenteDeNotificacion/Hombres/", sep="")
setwd(spath)
fnh <- list.files()
fnh <- lapply(fnh, fread, sep=",")
names(fnh) <- nombres
setwd(workingDirectory)

# Fuente de Notificacion Mujeres
spath <-paste(getwd(), "/Data/CSV/FuenteDeNotificacion/Mujeres/", sep="")
setwd(spath)
fnm <- list.files()
fnm <- lapply(fnm, fread, sep=",")
names(fnm) <- nombres
setwd(workingDirectory)

# --------------- 2.2.- Grupo de Edad.

# Grupo de Edad General
spath <-paste(getwd(), "/Data/CSV/GrupoDeEdad/General/", sep="")
setwd(spath)
geg <- list.files()
geg <- lapply(geg, fread, sep=",")
names(geg) <- nombres
setwd(workingDirectory)

# Grupo de Edad Hombres
spath <-paste(getwd(), "/Data/CSV/GrupoDeEdad/Hombres/", sep="")
setwd(spath)
geh <- list.files()
geh <- lapply(geh, fread, sep=",")
names(geh) <- nombres
setwd(workingDirectory)

# Grupo de Edad Mujeres
spath <-paste(getwd(), "/Data/CSV/GrupoDeEdad/Mujeres/", sep="")
setwd(spath)
gem <- list.files()
gem <- lapply(gem, fread, sep=",")
names(gem) <- nombres
setwd(workingDirectory)

# --------------- 2.3.- Mes de Ocurrencia.

# Mes de Ocurrencia General
spath <-paste(getwd(), "/Data/CSV/MesDeOcurrencia/General/", sep="")
setwd(spath)
mog <- list.files()
mog <- lapply(mog, fread, sep=",")
names(mog) <- nombres
setwd(workingDirectory)

# Mes de Ocurrencia Hombres
spath <-paste(getwd(), "/Data/CSV/MesDeOcurrencia/Hombres/", sep="")
setwd(spath)
moh <- list.files()
moh <- lapply(moh, fread, sep=",")
names(moh) <- nombres
setwd(workingDirectory)

# Mes de Ocurrencia Mujeres
spath <-paste(getwd(), "/Data/CSV/MesDeOcurrencia/Mujeres/", sep="")
setwd(spath)
mom <- list.files()
mom <- lapply(mom, fread, sep=",")
names(mom) <- nombres
setwd(workingDirectory)

# --------------- 2.4.- Diccionario.

FuenteDeNotificacion = list(fng, fnh, fnm)
names(FuenteDeNotificacion) <- c("General", "Hombres", "Mujeres")

GrupoDeEdad = list(geg, geh, gem)
names(GrupoDeEdad) <- c("General", "Hombres", "Mujeres")

MesDeOcurrencia = list(mog, moh, mom)
names(MesDeOcurrencia) <- c("General", "Hombres", "Mujeres")

mpData = list(FuenteDeNotificacion, GrupoDeEdad, MesDeOcurrencia)
names(mpData) <- c("FuenteDeNotificacion", "GrupoDeEdad", "MesDeOcurrencia")


# ---------------------------- 3.- Limpieza de Codigo.

# ---------------- 3.1.- Eliminacion de columnas.

# Elimina la columna TOTAL de los data.frames de Fuente de Notificacion.
for (i in 1:length(mpData$FuenteDeNotificacion)) {
  for (j in 1:length(mpData$FuenteDeNotificacion[[i]])) {
    mpData$FuenteDeNotificacion[[i]][[j]][[11]] <- NULL
  }
}

# Elimina la columna TOTAL de los data.frames de Gruepo de Edad.
for (i in 1:length(mpData$GrupoDeEdad)) {
  for (j in 1:length(mpData$GrupoDeEdad[[i]])) {
    mpData$GrupoDeEdad[[i]][[j]][[14]] <- NULL
  }
} 

# ---------------- 3.2.- Nombres, Agrega columnas, Pasa a formato organizado, Mordeduras to numeric.

# Corrige el nombre de los estados y de los encabezados.
for (i in 1:length(mpData)) {
  cat <- mpData[[i]]
  for (j in 1:length(cat)) {
    type <- cat[[j]]
    for (l in 1:length(type)) {
      names(type[[l]]) <- toupper(names(type[[l]]))
    }
    for (m in 1:length(type)) {
      if (i == 1) {
        # Fuente de Notificacion
        type[[m]] <- within(type[[m]], 
                            {
                              SALUD <- gsub("[ ]", "", SALUD)
                              IMSS.ORD <- gsub("[ ]", "", IMSS.ORD)
                              ISSSTE <- gsub("[ ]", "", ISSSTE)
                              IMSS.OP <- gsub("[ ]", "",IMSS.OP)
                              DIF <- gsub("[ ]", "", DIF)
                              PEMEX <- gsub("[ ]", "", PEMEX)
                              SEDENA <- gsub("[ ]", "", SEDENA)
                              SEMAR <- gsub("[ ]", "", SEMAR)
                              OTRAS <- gsub("[ ]", "", OTRAS)
                              IMSS.ORD <- gsub("N.A.*|S.R*|NA.", "NA", IMSS.ORD)
                              SALUD <- gsub("N.A.*|S.R*|NA.", "NA", SALUD)
                              ISSSTE <- gsub("N.A.*|S.R*|NA.", "NA", ISSSTE)
                              IMSS.OP <- gsub("N.A.*|S.R*|NA.", "NA",IMSS.OP)
                              DIF <- gsub("N.A.*|S.R*|NA.", "NA", DIF)
                              PEMEX <- gsub("N.A.*|S.R*|NA.", "NA", PEMEX)
                              SEDENA <- gsub("N.A.*|S.R*|NA.", "NA", SEDENA)
                              SEMAR <- gsub("N.A.*|S.R*|NA.", "NA", SEMAR)
                              OTRAS <- gsub("N.A.*|S.R*|NA.", "NA", OTRAS)
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
                            })
        # Agregando la columna sexo para pasar a formato organizado.
        if (j == 1) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "GENERAL")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 2) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "HOMBRES")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 3) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "MUJERES")
          }
          type[[m]][["SEXO"]] <- SEXO
        }
        # Agregando la columna de a??o para pasar a formato organizado.
        ANIO <- c()
        for (p in 1:32) {
          ANIO <- c(ANIO, 2003 + m)
        }
        type[[m]][["ANIO"]] <- ANIO
        # Pasar a formato organizado.
        type[[m]] <- gather(data = type[[m]], 
                         key = "FUENTE", 
                         value = "MORDEDURAS", 
                         2:10)
      } 
      else if (i == 2) {
        # Grupo de Edad
        type[[m]] <- within(type[[m]] , 
                            {
                              MAYOR.A.UNO <- gsub("[ ]", "", MAYOR.A.UNO)
                              UNO.A.CUATRO <- gsub("[ ]", "", UNO.A.CUATRO)
                              CINCO.A.NUEVE <- gsub("[ ]", "", CINCO.A.NUEVE)
                              DIEZ.A.CATORCE <- gsub("[ ]", "",DIEZ.A.CATORCE)
                              QUINCE.A.DIECINUEVE <- gsub("[ ]", "", QUINCE.A.DIECINUEVE)
                              VEINTE.A.VEINTICUATRO <- gsub("[ ]", "", VEINTE.A.VEINTICUATRO )
                              VEINTICINCO.A.CUARENTAYCUATRO <- gsub("[ ]", "", VEINTICINCO.A.CUARENTAYCUATRO)
                              CUARENTAYCINCO.A.CUARENTAYNUEVE <- gsub("[ ]", "", CUARENTAYCINCO.A.CUARENTAYNUEVE)
                              CINCUENTA.A.CINCUENTAYNUEVE <- gsub("[ ]", "", CINCUENTA.A.CINCUENTAYNUEVE)
                              SESENTA.A.SESENTAYCUATRO <- gsub("[ ]", "", SESENTA.A.SESENTAYCUATRO)
                              MAYOR.A.SESENTAYCINCO <- gsub("[ ]", "", MAYOR.A.SESENTAYCINCO)
                              NO.SE.REPORTO.LA.EDAD <- gsub("[ ]", "", NO.SE.REPORTO.LA.EDAD)
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
                            })
        # Agregando la columna sexo para pasar a formato organizado.
        if (j == 1) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "GENERAL")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 2) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "HOMBRES")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 3) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "MUJERES")
          }
          type[[m]][["SEXO"]] <- SEXO
        }
        # Agregando la columna de a??o para pasar a formato organizado.
        ANIO <- c()
        for (p in 1:32) {
          ANIO <- c(ANIO, 2003 + m)
        }
        type[[m]][["ANIO"]] <- ANIO
        # Pasar a formato organizado.
        type[[m]] <- gather(data = type[[m]], 
                         key = "EDAD", 
                         value = "MORDEDURAS", 
                         2:13)
      } 
      else if (i == 3) {
        # Mes de ocurrencia
        type[[m]] <- within(type[[m]] , 
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
                             })
        # Agregando la columna sexo para pasar a formato organizado.
        if (j == 1) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "GENERAL")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 2) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "HOMBRES")
          }
          type[[m]][["SEXO"]] <- SEXO
        } else if (j == 3) {
          SEXO <- c()
          for (n in 1:32) {
            SEXO <- c(SEXO, "MUJERES")
          }
          type[[m]][["SEXO"]] <- SEXO
        }
        # Agregando la columna de a??o para pasar a formato organizado.
        ANIO <- c()
        for (p in 1:32) {
          ANIO <- c(ANIO, 2003 + m)
        }
        type[[m]][["ANIO"]] <- ANIO
        # Pasar a formato organizado.
        type[[m]] <- gather(data = type[[m]], 
                         key = "MES", 
                         value = "MORDEDURAS", 
                         2:13)
      }
      type[[m]][["MORDEDURAS"]] <- as.numeric(type[[m]][["MORDEDURAS"]])
    }
    cat[[j]] <- type
  }
  mpData[[i]] <- cat 
}

# Corroborando la informacion que se necesita.
mpData$FuenteDeNotificacion
str(mpData$FuenteDeNotificacion)
mpData$GrupoDeEdad
str(mpData$GrupoDeEdad)
mpData$MesDeOcurrencia
str(mpData$MesDeOcurrencia)

# ---------------- 3.3.- Juntar todas las tablas en formato organizado ---------

ofnGeneral <- data.frame()
ofnHombres <- data.frame()
ofnMujeres <- data.frame()

ogeGeneral <- data.frame()
ogeHombres <- data.frame()
ogeMujeres <- data.frame()

omoGeneral <- data.frame()
omoHombres <- data.frame()
omoMujeres <- data.frame()

OFuenteDeNotifiacion = list(ofnGeneral, ofnHombres, ofnMujeres)
names(OFuenteDeNotifiacion) <- c("General","Hombres","Mujeres")

OGrupoDeEdad = list(ogeGeneral, ogeHombres, ogeMujeres)
names(OGrupoDeEdad) <- c("General","Hombres","Mujeres")

OMesDeOcurrencia = list(omoGeneral, omoHombres, omoMujeres)
names(OMesDeOcurrencia) <- c("General","Hombres","Mujeres")

mpOData = list(OFuenteDeNotifiacion, OGrupoDeEdad, OMesDeOcurrencia)
names(mpOData) <- c("FuenteDeNotificacion","GrupoDeEdad","MesDeOcurrencia")

for (i in 1:3) {
  for (j in 1:3) {
     mpOData[[i]][[j]] <- do.call(rbind, mpData[[i]][[j]])
  }
}

orgFn = data.frame()
orgGe = data.frame()
orgMo = data.frame()

mpOrgData = list(orgFn, orgGe, orgMo)
names(mpOrgData) <- c("FuenteDeNotificacion", "GrupoDeEdad", "MesDeOcurrencia")

for (i in 1:length(mpOrgData)) {
  mpOrgData[[i]] <- do.call(rbind, mpOData[[i]])
}

# Comprobando la informacion. (3 tablas en formato organizado).

# Fuente de Notificacion.
mpOrgData$FuenteDeNotificacion
str(mpOrgData$FuenteDeNotificacion)
head(mpOrgData$FuenteDeNotificacion)
tail(mpOrgData$FuenteDeNotificacion)

# Grupo de Edad.
mpOrgData$GrupoDeEdad
str(mpOrgData$GrupoDeEdad)
head(mpOrgData$GrupoDeEdad)
tail(mpOrgData$GrupoDeEdad)

# Mes de Ocurrencia.
mpOrgData$MesDeOcurrencia
str(mpOrgData$MesDeOcurrencia)
head(mpOrgData$MesDeOcurrencia)
tail(mpOrgData$MesDeOcurrencia)

# --------------- Fin limpieza ------------------------




# ------------------------- Piramides ------------------------------

# ------------------------- Piramides ------------------------------
# Fuente de Notificacion hombres y mujeres
# Hombres.
hombres <- subset(mpOrgData$FuenteDeNotificacion, SEXO %in% "HOMBRES")
mujeres <- subset(mpOrgData$FuenteDeNotificacion, SEXO %in% "MUJERES")
estados <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')
fuentes <- names(fng$`2004`)
fuentes <- fuentes[-c(1,11)]

dataframesPorEstado <- list()
for (i in 1:length(estados)) {
  # Hombres
  hombresYEstado <- subset(hombres, ESTADO %in% estados[[i]])
  totales1 <- c()  
  for (j in 1:length(fuentes)) {
    hombresYEstadoYFuente <- subset(hombresYEstado, FUENTE %in% fuentes[[j]])
    suma <- sum(subset(hombresYEstadoYFuente$MORDEDURAS,! is.na(hombresYEstadoYFuente$MORDEDURAS)))
    totales1 <- c(totales1, suma)
  }
  # Mujeres
  mujeresYEstado <- subset(mujeres, ESTADO %in% estados[[i]])
  totales2 <- c()  
  for (k in 1:length(fuentes)) {
    mujeresYEstadoYFuente <- subset(mujeresYEstado, FUENTE %in% fuentes[[k]])
    suma2 <- sum(subset(mujeresYEstadoYFuente$MORDEDURAS,! is.na(mujeresYEstadoYFuente$MORDEDURAS)))
    totales2 <- c(totales2, suma2)
  }
  # Creacion de los data.frames.
  dataframesPorEstado[[i]] <- data.frame(fuentes, totales1, totales2)
  names(dataframesPorEstado[[i]]) <- c("FUENTE", "HOMBRES", "MUJERES")
}
names(dataframesPorEstado) <- estados
dataframesPorEstado


#Pir??mide hombres y mujeres, por estado y fuente de notificacion  


par(mfrow = c(4, 8), mar = c(0, 0, 1, 0), oma = c(0, 0, 1.2, 0))
entidades <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')

for (i in 1:32) {
  PIR <- dataframesPorEstado[[i]]
  Fem <- PIR[[3]]
  Masc <- PIR[[2]]
  
  with(PIR, plot(0, 0, type = "n", xlim = c(-max(Masc), max(Fem)), ylim = c(0, 10), xlab ="",    ylab = "", axes = FALSE, bty="n", cex.main = 0.8, main = entidades[i]))
  mtext(paste0("FUENTE DE NOTIFICACION", " (HOMBRES, MUJERES)"), side = 3, outer = TRUE)
  
  for(j in 1:10){
    rect(-Masc[j],j, 0, j+1, col = "blue", border = "white")
    rect(0,j, Fem[j], j+1, col = "red",  border = "white") 
  }
}



# Grupo de Edad hombres y mujeres
# Hombres.
hombresg <- subset(mpOrgData$GrupoDeEdad, SEXO %in% "HOMBRES")
mujeresg <- subset(mpOrgData$GrupoDeEdad, SEXO %in% "MUJERES")
estados <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')
grupos <- names(geg$`2004`)
grupos <- toupper(grupos[-c(1,14)])

dataframesPorEstadog <- list()
for (i in 1:length(estados)) {
  # Hombres
  hombresYEstado <- subset(hombresg, ESTADO %in% estados[[i]])
  totales1 <- c()  
  for (j in 1:length(grupos)) {
    hombresYEstadoYGrupo <- subset(hombresYEstado, EDAD %in% grupos[[j]])
    suma <- sum(subset(hombresYEstadoYGrupo$MORDEDURAS,! is.na(hombresYEstadoYGrupo$MORDEDURAS)))
    totales1 <- c(totales1, suma)
  }
  # Mujeres
  mujeresYEstado <- subset(mujeresg, ESTADO %in% estados[[i]])
  totales2 <- c()  
  for (k in 1:length(grupos)) {
    mujeresYEstadoYGrupo <- subset(mujeresYEstado, EDAD %in% grupos[[k]])
    suma2 <- sum(subset(mujeresYEstadoYGrupo$MORDEDURAS,! is.na(mujeresYEstadoYGrupo$MORDEDURAS)))
    totales2 <- c(totales2, suma2)
  }
  # Creacion de los data.frames.
  dataframesPorEstadog[[i]] <- data.frame(grupos, totales1, totales2)
  names(dataframesPorEstadog[[i]]) <- c("EDAD", "HOMBRES", "MUJERES")
}
names(dataframesPorEstadog) <- estados
dataframesPorEstadog

#Pir??mide hombres y mujeres, por estado y grupo de edad

par(mfrow = c(4, 8), mar = c(0, 0, 1, 0), oma = c(0, 0, 1.2, 0))
entidades <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')

for (i in 1:32) {
  PIRG <- dataframesPorEstadog[[i]]
  Femg <- PIRG[[3]]
  Mascg <- PIRG[[2]]
  
  with(PIRG, plot(0, 0, type = "n", xlim = c(-max(Mascg), max(Femg)), ylim = c(0, 12), xlab ="",    ylab = "", axes = FALSE, bty="n", cex.main = 0.8, main = entidades[i]))
  mtext(paste0("GRUPO DE EDAD", " (HOMBRES, MUJERES)"), side = 3, outer = TRUE)
  
  for(j in 1:18){
    rect(-Mascg[j],j, 0, j+1, col = "blue", border = "white")
    rect(0,j, Femg[j], j+1, col = "red",  border = "white") 
  }
  
}
# Mes de ocurrencia hombres y mujeres
# Hombres.
hombresm <- subset(mpOrgData$MesDeOcurrencia, SEXO %in% "HOMBRES")
mujeresm <- subset(mpOrgData$MesDeOcurrencia, SEXO %in% "MUJERES")
estados <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')
meses <- names(mog$`2004`)
meses <- meses[-c(1)]

dataframesPorEstadom <- list()
for (i in 1:length(estados)) {
  # Hombres
  hombresYEstado <- subset(hombresm, ESTADO %in% estados[[i]])
  totales1 <- c()  
  for (j in 1:length(meses)) {
    hombresYEstadoYMes <- subset(hombresYEstado, MES %in% meses[[j]])
    suma <- sum(subset(hombresYEstadoYMes$MORDEDURAS,! is.na(hombresYEstadoYMes$MORDEDURAS)))
    totales1 <- c(totales1, suma)
  }
  # Mujeres
  mujeresYEstado <- subset(mujeresm, ESTADO %in% estados[[i]])
  totales2 <- c()  
  for (k in 1:length(meses)) {
    mujeresYEstadoYMes <- subset(mujeresYEstado, MES %in% meses[[k]])
    suma2 <- sum(subset(mujeresYEstadoYMes$MORDEDURAS,! is.na(mujeresYEstadoYMes$MORDEDURAS)))
    totales2 <- c(totales2, suma2)
  }
  # Creacion de los data.frames.
  dataframesPorEstadom[[i]] <- data.frame(meses, totales1, totales2)
  names(dataframesPorEstadom[[i]]) <- c("MES", "HOMBRES", "MUJERES")
}
names(dataframesPorEstadom) <- estados
dataframesPorEstadom

#Pir??mide hombres y mujeres, mes de ocurrencia.

par(mfrow = c(4, 8), mar = c(0, 0, 1, 0), oma = c(0, 0, 1.2, 0))
entidades <- c('Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche', 'Chiapas', 'Chihuahua', 'Coahuila', 'Colima', 'Distrito Federal', 'Durango', 'Guanajuato','Guerrero', 'Hidalgo', 'Jalisco', 'Mexico', 'Michoacan', 'Morelos', 'Nayarit','Nuevo Leon', 'Oaxaca', 'Puebla', 'Queretaro', 'Quintana Roo', 'San Luis Potosi','Sinaloa', 'Sonora', 'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatan','Zacatecas')

for (i in 1:32) {
  PIRM <- dataframesPorEstadom[[i]]
  Femm <- PIRM[[3]]
  Mascm <- PIRM[[2]]
  
  with(PIRM, plot(0, 0, type = "n", xlim = c(-max(Mascm), max(Femm)), ylim = c(0, 14), xlab ="",    ylab = "", axes = FALSE, bty="n", cex.main = 0.8, main = entidades[i]))
  mtext(paste0("MES DE OCURRENCIA", " (HOMBRES, MUJERES)"), side = 3, outer = TRUE)
  
  for(j in 1:12){
    rect(-Mascm[j],j, 0, j+1, col = "blue", border = "white")
    rect(0,j, Femm[j], j+1, col = "red",  border = "white") 
  }
}
#Fin de pir??mides




# A??os vs. Total de mordeduras 
fn <- subset(mpOrgData$FuenteDeNotificacion, SEXO  %in% c("GENERAL"))
fn <-subset(fn, !is.na(MORDEDURAS))
head(fn)
tail(fn)
years <- c()
sums <- c()
for (i in 1:12) {
  new <- subset(fn, ANIO %in% c(i+2003))
  sums <- c(sums, sum(new$MORDEDURAS))
  years <- c(years, i+2003)
}
FuenteDeN <- data.frame(years, sums)
FuenteDeN



# Box plot A??os vs. Mordeduras por estado.
fn1 <- subset(mpOrgData$FuenteDeNotificacion, SEXO  %in% c("GENERAL"))
fn1 <-subset(fn, !is.na(MORDEDURAS))
mean(subset(fn1$MORDEDURAS, fn1$ANIO %in% 2004))
p <- ggplot(fn1, aes(factor(ANIO), MORDEDURAS))
p + geom_boxplot()

