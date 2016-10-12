install.packages("data.table")
library(data.table)

# ---------------------------- 1.- Directorio de Trabajo --------------------------

# Especificar el directorio de trabajo.
# El directorio de trabajo debe ser la capeta del proyecto:
workingDirectory <- "/Users/rayangf/Desktop/MordedurasPerro"
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

mpData$GrupoDeEdad$Hombres$`2005` 

# ---------------------------- 3.- Limpieza de Codigo -----------------------------

for (i in 1:length(fng)) {
  names(fng[[i]]) <- toupper(names(fng[[i]]))
}

for (j in 1:length(fng)) {
  fng[[j]] <- within( fng[[j]] , 
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
                            }
  )
}

for (i in 1:length(fnh)) {
  names(fnh[[i]]) <- toupper(names(fnh[[i]]))
}

for (j in 1:length(fnh)) {
  fnh[[j]] <- within( fnh[[j]] , 
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
                            }
  )
}

for (i in 1:length(fnm)) {
  names(fnm[[i]]) <- toupper(names(fnm[[i]]))
}

for (j in 1:length(fnm)) {
  fnm[[j]] <- within( fnm[[j]] , 
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
                            }
  )
}

for (i in 1:length(geg)) {
  names(geg[[i]]) <- toupper(names(geg[[i]]))
}

for (j in 1:length(geg)) {
  geg[[j]] <- within( geg[[j]] , 
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
                            }
  )
}

for (i in 1:length(geh)) {
  names(geh[[i]]) <- toupper(names(geh[[i]]))
}

for (j in 1:length(geh)) {
  geh[[j]] <- within( geh[[j]] , 
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
                            }
  )
}



for (i in 1:length(gem)) {
  names(gem[[i]]) <- toupper(names(gem[[i]]))
}

for (j in 1:length(gem)) {
  gem[[j]] <- within( gem[[j]] , 
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
                            }
  )
}

for (i in 1:length(mog)) {
  names(mog[[i]]) <- toupper(names(mog[[i]]))
}

for (j in 1:length(mog)) {
  mog[[j]] <- within( mog[[j]] , 
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

for (i in 1:length(moh)) {
  names(moh[[i]]) <- toupper(names(moh[[i]]))
}

for (j in 1:length(moh)) {
  moh[[j]] <- within( moh[[j]] , 
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

for (i in 1:length(mom)) {
  names(mom[[i]]) <- toupper(names(mom[[i]]))
}

for (j in 1:length(mom)) {
  mom[[j]] <- within( mom[[j]] , 
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