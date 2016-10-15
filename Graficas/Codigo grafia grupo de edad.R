#Grafica Grupo de Edad por a??o

getwd()
setwd("/Users/Bernardo/Documents/ITAM/Semestre 07/Estadistica Aplicada I/Proyecto/MordedurasPerro/Data/CSV/GrupoDeEdad/General")

ge2004g <- read.csv("ge2004g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2005g <- read.csv("ge2005g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2006g <- read.csv("ge2006g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2007g <- read.csv("ge2007g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2008g <- read.csv("ge2008g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2009g <- read.csv("ge2009g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2010g <- read.csv("ge2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2010g <- read.csv("ge2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2011g <- read.csv("ge2011g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2012g <- read.csv("ge2012g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2013g <- read.csv("ge2013g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2014g <- read.csv("ge2014g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
ge2015g <- read.csv("ge2015g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")


names(ge2004g) <- toupper(names(ge2004g))
names(ge2005g) <- toupper(names(ge2005g))
names(ge2006g) <- toupper(names(ge2006g))
names(ge2007g) <- toupper(names(ge2007g))
names(ge2008g) <- toupper(names(ge2008g))
names(ge2009g) <- toupper(names(ge2009g))
names(ge2010g) <- toupper(names(ge2010g))
names(ge2011g) <- toupper(names(ge2011g))
names(ge2012g) <- toupper(names(ge2012g))
names(ge2013g) <- toupper(names(ge2013g))
names(ge2014g) <- toupper(names(ge2014g))
names(ge2015g) <- toupper(names(ge2015g))


ge2004g <- within(ge2004g , 
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
ge2005g <- within(ge2005g , 
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
ge2006g <- within(ge2006g , 
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
ge2007g <- within(ge2007g , 
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
ge2008g <- within(ge2008g , 
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
ge2009g <- within(ge2009g , 
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
ge2010g <- within(ge2010g , 
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
ge2011g <- within(ge2011g , 
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
ge2012g <- within(ge2012g , 
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
ge2013g <- within(ge2013g , 
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
ge2014g <- within(ge2014g , 
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
ge2015g <- within(ge2015g , 
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

d1 <- colnames(ge2004g)

for (i in d1)
{
  if (i != "ESTADO"){
    ge2004g[[i]] <- as.numeric(ge2004g[[i]])}
  
}


d2 <- colnames(ge2005g)

for (i in d2)
{
  if (i != "ESTADO"){
    ge2005g[[i]] <- as.numeric(ge2005g[[i]])}
  
}

d3 <- colnames(ge2006g)

for (i in d3)
{
  if (i != "ESTADO"){
    ge2006g[[i]] <- as.numeric(ge2006g[[i]])}
  
}

d4 <- colnames(ge2007g)

for (i in d4)
{
  if (i != "ESTADO"){
    ge2007g[[i]] <- as.numeric(ge2007g[[i]])}
  
}
d5 <- colnames(ge2008g)

for (i in d5)
{
  if (i != "ESTADO"){
    ge2008g[[i]] <- as.numeric(ge2008g[[i]])}
  
}
d6 <- colnames(ge2009g)

for (i in d6)
{
  if (i != "ESTADO"){
    ge2009g[[i]] <- as.numeric(ge2009g[[i]])}
  
}
d7 <- colnames(ge2010g)

for (i in d7)
{
  if (i != "ESTADO"){
    ge2010g[[i]] <- as.numeric(ge2010g[[i]])}
  
}
d8 <- colnames(ge2011g)

for (i in d8)
{
  if (i != "ESTADO"){
    ge2011g[[i]] <- as.numeric(ge2011g[[i]])}
  
}
d9 <- colnames(ge2012g)

for (i in d9)
{
  if (i != "ESTADO"){
    ge2012g[[i]] <- as.numeric(ge2012g[[i]])}
  
}
d10 <- colnames(ge2013g)

for (i in d10)
{
  if (i != "ESTADO"){
    ge2013g[[i]] <- as.numeric(ge2013g[[i]])}
  
}
d11 <- colnames(ge2014g)

for (i in d11)
{
  if (i != "ESTADO"){
    ge2014g[[i]] <- as.numeric(ge2014g[[i]])}
  
}
d12 <- colnames(ge2015g)

for (i in d12)
{
  if (i != "ESTADO"){
    ge2015g[[i]] <- as.numeric(ge2015g[[i]])}
  
}

geg2004 <- ge2004g
geg2005 <- ge2005g
geg2006 <- ge2006g
geg2007 <- ge2007g
geg2008 <- ge2008g
geg2009 <- ge2009g
geg2010 <- ge2010g
geg2011 <- ge2011g
geg2012 <- ge2012g
geg2013 <- ge2013g
geg2014 <- ge2014g
geg2015 <- ge2015g




Ge1 <- c(sum(geg2004$MAYOR.A.UNO), sum(geg2004$UNO.A.CUATRO), sum(geg2004$CINCO.A.NUEVE), 
         sum(geg2004$DIEZ.A.CATORCE), sum(geg2004$QUINCE.A.DIECINUEVE), 
         sum(geg2004$VEINTE.A.VEINTICUATRO), sum(geg2004$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2004$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2004$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2004$SESENTA.A.SESENTAYCUATRO), sum(geg2004$MAYOR.A.SESENTAYCINCO), 
         sum(geg2004$NO.SE.REPORTO.LA.EDAD))
Ge2 <- c(sum(geg2005$MAYOR.A.UNO), sum(geg2005$UNO.A.CUATRO), sum(geg2005$CINCO.A.NUEVE), 
         sum(geg2005$DIEZ.A.CATORCE), sum(geg2005$QUINCE.A.DIECINUEVE), 
         sum(geg2005$VEINTE.A.VEINTICUATRO), sum(geg2005$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2005$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2005$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2005$SESENTA.A.SESENTAYCUATRO), sum(geg2005$MAYOR.A.SESENTAYCINCO), 
         sum(geg2005$NO.SE.REPORTO.LA.EDAD))
Ge3 <- c(sum(geg2006$MAYOR.A.UNO), sum(geg2006$UNO.A.CUATRO), sum(geg2006$CINCO.A.NUEVE), 
         sum(geg2006$DIEZ.A.CATORCE), sum(geg2006$QUINCE.A.DIECINUEVE), 
         sum(geg2006$VEINTE.A.VEINTICUATRO), sum(geg2006$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2006$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2006$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2006$SESENTA.A.SESENTAYCUATRO), sum(geg2006$MAYOR.A.SESENTAYCINCO), 
         sum(geg2006$NO.SE.REPORTO.LA.EDAD))
Ge4 <- c(sum(geg2007$MAYOR.A.UNO), sum(geg2007$UNO.A.CUATRO), sum(geg2007$CINCO.A.NUEVE), 
         sum(geg2007$DIEZ.A.CATORCE), sum(geg2007$QUINCE.A.DIECINUEVE), 
         sum(geg2007$VEINTE.A.VEINTICUATRO), sum(geg2007$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2007$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2007$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2007$SESENTA.A.SESENTAYCUATRO), sum(geg2007$MAYOR.A.SESENTAYCINCO), 
         sum(geg2007$NO.SE.REPORTO.LA.EDAD))
Ge5 <- c(sum(geg2008$MAYOR.A.UNO), sum(geg2008$UNO.A.CUATRO), sum(geg2008$CINCO.A.NUEVE), 
         sum(geg2008$DIEZ.A.CATORCE), sum(geg2008$QUINCE.A.DIECINUEVE), 
         sum(geg2008$VEINTE.A.VEINTICUATRO), sum(geg2008$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2008$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2008$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2008$SESENTA.A.SESENTAYCUATRO), sum(geg2008$MAYOR.A.SESENTAYCINCO), 
         sum(geg2008$NO.SE.REPORTO.LA.EDAD))
Ge6 <- c(sum(geg2009$MAYOR.A.UNO), sum(geg2009$UNO.A.CUATRO), sum(geg2009$CINCO.A.NUEVE), 
         sum(geg2009$DIEZ.A.CATORCE), sum(geg2009$QUINCE.A.DIECINUEVE), 
         sum(geg2009$VEINTE.A.VEINTICUATRO), sum(geg2009$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2009$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2009$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2009$SESENTA.A.SESENTAYCUATRO), sum(geg2009$MAYOR.A.SESENTAYCINCO), 
         sum(geg2009$NO.SE.REPORTO.LA.EDAD))
Ge7 <- c(sum(geg2010$MAYOR.A.UNO), sum(geg2010$UNO.A.CUATRO), sum(geg2010$CINCO.A.NUEVE), 
         sum(geg2010$DIEZ.A.CATORCE), sum(geg2010$QUINCE.A.DIECINUEVE), 
         sum(geg2010$VEINTE.A.VEINTICUATRO), sum(geg2010$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2010$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2010$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2010$SESENTA.A.SESENTAYCUATRO), sum(geg2010$MAYOR.A.SESENTAYCINCO), 
         sum(geg2010$NO.SE.REPORTO.LA.EDAD))
Ge8 <- c(sum(geg2011$MAYOR.A.UNO), sum(geg2011$UNO.A.CUATRO), sum(geg2011$CINCO.A.NUEVE), 
         sum(geg2011$DIEZ.A.CATORCE), sum(geg2011$QUINCE.A.DIECINUEVE), 
         sum(geg2011$VEINTE.A.VEINTICUATRO), sum(geg2011$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2011$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2011$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2011$SESENTA.A.SESENTAYCUATRO), sum(geg2011$MAYOR.A.SESENTAYCINCO), 
         sum(geg2011$NO.SE.REPORTO.LA.EDAD)
Ge9 <- c(sum(geg2012$MAYOR.A.UNO), sum(geg2012$UNO.A.CUATRO), sum(geg2012$CINCO.A.NUEVE), 
         sum(geg2012$DIEZ.A.CATORCE), sum(geg2012$QUINCE.A.DIECINUEVE), 
         sum(geg2012$VEINTE.A.VEINTICUATRO), sum(geg2012$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2012$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2012$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2012$SESENTA.A.SESENTAYCUATRO), sum(geg2012$MAYOR.A.SESENTAYCINCO), 
         sum(geg2012$NO.SE.REPORTO.LA.EDAD))
Ge10 <- c(sum(geg2013$MAYOR.A.UNO), sum(geg2013$UNO.A.CUATRO), sum(geg2013$CINCO.A.NUEVE), 
          sum(geg2013$DIEZ.A.CATORCE), sum(geg2013$QUINCE.A.DIECINUEVE), 
          sum(geg2013$VEINTE.A.VEINTICUATRO), sum(geg2013$VEINTICINCO.A.CUARENTAYCUATRO),
          sum(geg2013$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2013$CINCUENTA.A.CINCUENTAYNUEVE),
          sum(geg2013$SESENTA.A.SESENTAYCUATRO), sum(geg2013$MAYOR.A.SESENTAYCINCO), 
          sum(geg2013$NO.SE.REPORTO.LA.EDAD))
Ge11 <-c(sum(geg2014$MAYOR.A.UNO), sum(geg2014$UNO.A.CUATRO), sum(geg2014$CINCO.A.NUEVE), 
         sum(geg2014$DIEZ.A.CATORCE), sum(geg2014$QUINCE.A.DIECINUEVE), 
         sum(geg2014$VEINTE.A.VEINTICUATRO), sum(geg2014$VEINTICINCO.A.CUARENTAYCUATRO),
         sum(geg2014$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2014$CINCUENTA.A.CINCUENTAYNUEVE),
         sum(geg2014$SESENTA.A.SESENTAYCUATRO), sum(geg2014$MAYOR.A.SESENTAYCINCO), 
         sum(geg2014$NO.SE.REPORTO.LA.EDAD))
Ge12 <- c(sum(geg2015$MAYOR.A.UNO), sum(geg2015$UNO.A.CUATRO), sum(geg2015$CINCO.A.NUEVE), 
          sum(geg2015$DIEZ.A.CATORCE), sum(geg2015$QUINCE.A.DIECINUEVE), 
          sum(geg2015$VEINTE.A.VEINTICUATRO), sum(geg2015$VEINTICINCO.A.CUARENTAYCUATRO),
          sum(geg2015$CUARENTAYCINCO.A.CUARENTAYNUEVE),sum(geg2015$CINCUENTA.A.CINCUENTAYNUEVE),
          sum(geg2015$SESENTA.A.SESENTAYCUATRO), sum(geg2015$MAYOR.A.SESENTAYCINCO), 
          sum(geg2015$NO.SE.REPORTO.LA.EDAD))


grupoedad <- c("Ma1","1a4","5a9","10a14","15a19","20a24","25a44","45a49",
               "50a59","60a64","Ma65","NSRE")

grupoedad <- as.factor(grupoedad)
levels(grupoedad) <- c("Ma1","1a4","5a9","10a14","15a19","20a24","25a44","45a49",
                       "50a59","60a64","Ma65","NSRE")

GDE1 <- data.frame(grupoedad, Ge1)
GDE2 <- data.frame(grupoedad, Ge2)
GDE3 <- data.frame(grupoedad, Ge3)
GDE4 <- data.frame(grupoedad, Ge4)
GDE5 <- data.frame(grupoedad, Ge5)
GDE6 <- data.frame(grupoedad, Ge6)
GDE7 <- data.frame(grupoedad, Ge7)
GDE8 <- data.frame(grupoedad, Ge8)
GDE9 <- data.frame(grupoedad, Ge9)
GDE10 <- data.frame(grupoedad, Ge10)
GDE11 <- data.frame(grupoedad, Ge11)
GDE12 <- data.frame(grupoedad, Ge12)


mo1 <-  ggplot(GDE1, aes(x = grupoedad, y = Ge1)) + 
  theme_bw() + geom_bar(stat = "identity")+ ggtitle("2004") 
mo2 <-  ggplot(GDE2, aes(x = grupoedad, y = Ge2)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2005")
mo3 <-  ggplot(GDE3, aes(x = grupoedad, y = Ge3)) + 
  theme_bw() + geom_bar(stat = "identity")  + ggtitle("2006")
mo4 <-  ggplot(GDE4, aes(x = grupoedad, y = Ge4)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2007")
mo5 <-  ggplot(GDE5, aes(x = grupoedad, y = Ge5)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2008")  
mo6 <-  ggplot(GDE6, aes(x = grupoedad, y = Ge6)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2009")
mo7 <-  ggplot(GDE7, aes(x = grupoedad, y = Ge7)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2010")  
mo8 <-  ggplot(GDE8, aes(x = grupoedad, y = Ge8)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2011")
mo9 <-  ggplot(GDE9, aes(x = grupoedad, y = Ge9)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2012")  
mo10 <- ggplot(GDE10, aes(x = grupoedad, y = Ge10)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2013")
mo11 <- ggplot(GDE11, aes(x = grupoedad, y = Ge11)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2014")
mo12 <- ggplot(GDE12, aes(x = grupoedad, y = Ge12)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2015")



grid.arrange(mo1,mo2,mo3,mo4,mo5,mo6,mo7,mo8,mo9,mo10,mo11,mo12, nrow = 4, ncol = 3) 


  