install.packages("data.table")
install.packages("dplyr")
library(data.table)
library(dplyr)

# ---------------------------- 1.- Directorio de Trabajo --------------------------

# Especificar el directorio de trabajo.
# El directorio de trabajo debe ser la capeta del proyecto:
workingDirectory <- "/Users/Bernardo/Documents/ITAM/Semestre 07/Estadistica Aplicada I/Proyecto/MordedurasPerro"
setwd(workingDirectory)


# ---------------------------- 2.- Lectura de Tablas ------------------------------

nombres <- c()
for (i in 1:12) {
  nombres <- c(nombres, paste(2003 + i))
}

# ------------------- 2.1.- Fuente de Notificacion --------------------

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

# ------------------- 2.2.- Grupo de Edad --------------------

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

# ------------------- 2.3.- Mes de Ocurrencia --------------------

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

FuenteDeNotificacion = list(fng, fnh, fnm)
names(FuenteDeNotificacion) <- c("General", "Hombres", "Mujeres")

GrupoDeEdad = list(geg, geh, gem)
names(GrupoDeEdad) <- c("General", "Hombres", "Mujeres")

MesDeOcurrencia = list(mog, moh, mom)
names(MesDeOcurrencia) <- c("General", "Hombres", "Mujeres")

mpData = list(FuenteDeNotificacion, GrupoDeEdad, MesDeOcurrencia)
names(mpData) <- c("FuenteDeNotificacion", "GrupoDeEdad", "MesDeOcurrencia")


# ---------------------------- 3.- Limpieza de Codigo -----------------------------

# ---------------- 3.1.- Nombres ----------------------- 

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
                              TOTAL <- gsub("[ ]", "", TOTAL)
                              IMSS.ORD <- gsub("N.A.*|S.R*|NA.", "NA", IMSS.ORD)
                              SALUD <- gsub("N.A.*|S.R*|NA.", "NA", SALUD)
                              ISSSTE <- gsub("N.A.*|S.R*|NA.", "NA", ISSSTE)
                              IMSS.OP <- gsub("N.A.*|S.R*|NA.", "NA",IMSS.OP)
                              DIF <- gsub("N.A.*|S.R*|NA.", "NA", DIF)
                              PEMEX <- gsub("N.A.*|S.R*|NA.", "NA", PEMEX)
                              SEDENA <- gsub("N.A.*|S.R*|NA.", "NA", SEDENA)
                              SEMAR <- gsub("N.A.*|S.R*|NA.", "NA", SEMAR)
                              OTRAS <- gsub("N.A.*|S.R*|NA.", "NA", OTRAS)
                              TOTAL <- gsub("N.A.*|S.R*|NA.", "NA", TOTAL)
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
      } else if (i == 2) {
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
                              TOTAL <- gsub("[ ]", "", TOTAL)
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
      } else if (i == 3) {
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
      } 
    }
    cat[[j]] <- type
  }
  mpData[[i]] <- cat 
}

# ---------------- 3.2.- Eliminacion de columnas ---------

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

# --------------------------------------------------------

# Corroborando la informacion que se necesita.
str(mpData$FuenteDeNotificacion)
str(mpData$GrupoDeEdad)
str(mpData$MesDeOcurrencia)

