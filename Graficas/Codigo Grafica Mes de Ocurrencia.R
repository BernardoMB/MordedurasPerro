#Grafica para Mes de Ocurrencia cada año.

mo2004g <- read.csv("mo2004g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2005g <- read.csv("mo2005g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2006g <- read.csv("mo2006g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2007g <- read.csv("mo2007g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2008g <- read.csv("mo2008g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2009g <- read.csv("mo2009g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2010g <- read.csv("mo2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2010g <- read.csv("mo2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2011g <- read.csv("mo2011g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2012g <- read.csv("mo2012g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2013g <- read.csv("mo2013g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2014g <- read.csv("mo2014g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
mo2015g <- read.csv("mo2015g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")


names(mo2004g) <- toupper(names(mo2004g))
names(mo2005g) <- toupper(names(mo2005g))
names(mo2006g) <- toupper(names(mo2006g))
names(mo2007g) <- toupper(names(mo2007g))
names(mo2008g) <- toupper(names(mo2008g))
names(mo2009g) <- toupper(names(mo2009g))
names(mo2010g) <- toupper(names(mo2010g))
names(mo2011g) <- toupper(names(mo2011g))
names(mo2012g) <- toupper(names(mo2012g))
names(mo2013g) <- toupper(names(mo2013g))
names(mo2014g) <- toupper(names(mo2014g))
names(mo2015g) <- toupper(names(mo2015g))


mo2004g <- within(mo2004g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2005g <- within(mo2005g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2006g <- within(mo2006g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2007g <- within(mo2007g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2008g <- within(mo2008g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2009g <- within(mo2009g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2009g <- within(mo2009g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2010g <- within(mo2010g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2011g <- within(mo2011g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2012g <- within(mo2012g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2013g <- within(mo2013g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2014g <- within(mo2014g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
mo2015g <- within(mo2015g , 
                  {
                    #  Eliminar espacios en n??meros.
                    ENE <- gsub("[ ]", "", ENE)
                    FEB <- gsub("[ ]", "", FEB)
                    MAR <- gsub("[ ]", "", MAR)
                    ABR <- gsub("[ ]", "",ABR)
                    MAY <- gsub("[ ]", "", MAY)
                    JUN <- gsub("[ ]", "", JUN)
                    JUL <- gsub("[ ]", "", JUL)
                    AGO <- gsub("[ ]", "", AGO)
                    SEP <- gsub("[ ]", "", SEP)
                    OCT <- gsub("[ ]", "", OCT)
                    NOV <- gsub("[ ]", "", NOV)
                    DIC <- gsub("[ ]", "", DIC)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)

d1 <- colnames(mo2004g)

for (i in d1)
{
  if (i != "ESTADO"){
    mo2004g[[i]] <- as.numeric(mo2004g[[i]])}
  
}


d2 <- colnames(mo2005g)

for (i in d2)
{
  if (i != "ESTADO"){
    mo2005g[[i]] <- as.numeric(mo2005g[[i]])}
  
}

d3 <- colnames(mo2006g)

for (i in d3)
{
  if (i != "ESTADO"){
    mo2006g[[i]] <- as.numeric(mo2006g[[i]])}
  
}

d4 <- colnames(mo2007g)

for (i in d4)
{
  if (i != "ESTADO"){
    mo2007g[[i]] <- as.numeric(mo2007g[[i]])}
  
}
d5 <- colnames(mo2008g)

for (i in d5)
{
  if (i != "ESTADO"){
    mo2008g[[i]] <- as.numeric(mo2008g[[i]])}
  
}
d6 <- colnames(mo2009g)

for (i in d6)
{
  if (i != "ESTADO"){
    mo2009g[[i]] <- as.numeric(mo2009g[[i]])}
  
}
d7 <- colnames(mo2010g)

for (i in d7)
{
  if (i != "ESTADO"){
    mo2010g[[i]] <- as.numeric(mo2010g[[i]])}
  
}
d8 <- colnames(mo2011g)

for (i in d8)
{
  if (i != "ESTADO"){
    mo2011g[[i]] <- as.numeric(mo2011g[[i]])}
  
}
d9 <- colnames(mo2012g)

for (i in d9)
{
  if (i != "ESTADO"){
    mo2012g[[i]] <- as.numeric(mo2012g[[i]])}
  
}
d10 <- colnames(mo2013g)

for (i in d10)
{
  if (i != "ESTADO"){
    mo2013g[[i]] <- as.numeric(mo2013g[[i]])}
  
}
d11 <- colnames(mo2014g)

for (i in d11)
{
  if (i != "ESTADO"){
    mo2014g[[i]] <- as.numeric(mo2014g[[i]])}
  
}
d12 <- colnames(mo2015g)

for (i in d12)
{
  if (i != "ESTADO"){
    mo2015g[[i]] <- as.numeric(mo2015g[[i]])}
  
}




Tm1 <- c(sum(mo2004g$ENE), sum(mo2004g$FEB), sum(mo2004g$MAR), sum(mo2004g$ABR), 
           sum(mo2004g$MAY), sum(mo2004g$JUN), sum(mo2004g$JUL), sum(mo2004g$AGO),
           sum(mo2004g$SEP), sum(mo2004g$OCT), 
           sum(mo2004g$NOV), sum(mo2004g$DIC))
Tm2 <- c(sum(mo2005g$ENE), sum(mo2005g$FEB), sum(mo2005g$MAR), sum(mo2005g$ABR), 
         sum(mo2005g$MAY), sum(mo2005g$JUN), sum(mo2005g$JUL), sum(mo2005g$AGO),
         sum(mo2005g$SEP), sum(mo2005g$OCT), 
         sum(mo2005g$NOV), sum(mo2005g$DIC))
Tm3 <- c(sum(mo2006g$ENE), sum(mo2006g$FEB), sum(mo2006g$MAR), sum(mo2006g$ABR), 
         sum(mo2006g$MAY), sum(mo2006g$JUN), sum(mo2006g$JUL), sum(mo2006g$AGO),
         sum(mo2006g$SEP), sum(mo2006g$OCT), 
         sum(mo2006g$NOV), sum(mo2006g$DIC))
Tm4 <- c(sum(mo2007g$ENE), sum(mo2007g$FEB), sum(mo2007g$MAR), sum(mo2007g$ABR), 
         sum(mo2007g$MAY), sum(mo2007g$JUN), sum(mo2007g$JUL), sum(mo2007g$AGO),
         sum(mo2007g$SEP), sum(mo2007g$OCT), 
         sum(mo2007g$NOV), sum(mo2007g$DIC))
Tm5 <- c(sum(mo2008g$ENE), sum(mo2008g$FEB), sum(mo2008g$MAR), sum(mo2008g$ABR), 
         sum(mo2008g$MAY), sum(mo2008g$JUN), sum(mo2008g$JUL), sum(mo2008g$AGO),
         sum(mo2008g$SEP), sum(mo2008g$OCT), 
         sum(mo2008g$NOV), sum(mo2008g$DIC))
Tm6 <- c(sum(mo2009g$ENE), sum(mo2009g$FEB), sum(mo2009g$MAR), sum(mo2009g$ABR), 
         sum(mo2009g$MAY), sum(mo2009g$JUN), sum(mo2009g$JUL), sum(mo2009g$AGO),
         sum(mo2009g$SEP), sum(mo2009g$OCT), 
         sum(mo2009g$NOV), sum(mo2009g$DIC))
Tm7 <- c(sum(mo2010g$ENE), sum(mo2010g$FEB), sum(mo2010g$MAR), sum(mo2010g$ABR), 
         sum(mo2010g$MAY), sum(mo2010g$JUN), sum(mo2010g$JUL), sum(mo2010g$AGO),
         sum(mo2010g$SEP), sum(mo2010g$OCT), 
         sum(mo2010g$NOV), sum(mo2010g$DIC))
Tm8 <- c(sum(mo2011g$ENE), sum(mo2011g$FEB), sum(mo2011g$MAR), sum(mo2011g$ABR), 
         sum(mo2011g$MAY), sum(mo2011g$JUN), sum(mo2011g$JUL), sum(mo2011g$AGO),
         sum(mo2011g$SEP), sum(mo2011g$OCT), 
         sum(mo2011g$NOV), sum(mo2011g$DIC))
Tm9 <- c(sum(mo2012g$ENE), sum(mo2012g$FEB), sum(mo2012g$MAR), sum(mo2012g$ABR), 
         sum(mo2012g$MAY), sum(mo2012g$JUN), sum(mo2012g$JUL), sum(mo2012g$AGO),
         sum(mo2012g$SEP), sum(mo2012g$OCT), 
         sum(mo2012g$NOV), sum(mo2012g$DIC))
Tm10 <- c(sum(mo2013g$ENE), sum(mo2013g$FEB), sum(mo2013g$MAR), sum(mo2013g$ABR), 
         sum(mo2013g$MAY), sum(mo2013g$JUN), sum(mo2013g$JUL), sum(mo2013g$AGO),
         sum(mo2013g$SEP), sum(mo2013g$OCT), 
         sum(mo2013g$NOV), sum(mo2013g$DIC))
Tm11 <- c(sum(mo2014g$ENE), sum(mo2014g$FEB), sum(mo2014g$MAR), sum(mo2014g$ABR), 
         sum(mo2014g$MAY), sum(mo2014g$JUN), sum(mo2014g$JUL), sum(mo2014g$AGO),
         sum(mo2014g$SEP), sum(mo2014g$OCT), 
         sum(mo2014g$NOV), sum(mo2014g$DIC))
Tm12 <- c(sum(mo2015g$ENE), sum(mo2015g$FEB), sum(mo2015g$MAR), sum(mo2015g$ABR), 
         sum(mo2015g$MAY), sum(mo2015g$JUN), sum(mo2015g$JUL), sum(mo2015g$AGO),
         sum(mo2015g$SEP), sum(mo2015g$OCT), 
         sum(mo2015g$NOV), sum(mo2015g$DIC))


meses <- c("ENE","FEB","MAR","ABR","MAY","JUN","JUL","AGO","SEP","OCT","NOV","DIC")
meses <- as.factor(meses)
levels(meses) <- c("ENE","FEB","MAR","ABR","MAY","JUN","JUL","AGO","SEP",
                   "OCT","NOV","DIC")


MDO1 <- data.frame(meses, Tm1)
MDO2 <- data.frame(meses, Tm2)
MDO3 <- data.frame(meses, Tm3)
MDO4 <- data.frame(meses, Tm4)
MDO5 <- data.frame(meses, Tm5)
MDO6 <- data.frame(meses, Tm6)
MDO7 <- data.frame(meses, Tm7)
MDO8 <- data.frame(meses, Tm8)
MDO9 <- data.frame(meses, Tm9)
MDO10 <- data.frame(meses, Tm10)
MDO11 <- data.frame(meses, Tm11)
MDO12 <- data.frame(meses, Tm12)


mo1 <-  ggplot(MDO1, aes(x = meses, y = Tm1)) + 
  theme_bw() + geom_bar(stat = "identity")+ ggtitle("2004") 
mo2 <-  ggplot(MDO2, aes(x = meses, y = Tm2)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2005")
mo3 <-  ggplot(MDO3, aes(x = meses, y = Tm3)) + 
  theme_bw() + geom_bar(stat = "identity")  + ggtitle("2006")
mo4 <-  ggplot(MDO4, aes(x = meses, y = Tm4)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2007")
mo5 <-  ggplot(MDO5, aes(x = meses, y = Tm5)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2008")  
mo6 <-  ggplot(MDO6, aes(x = meses, y = Tm6)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2009")
mo7 <-  ggplot(MDO7, aes(x = meses, y = Tm7)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2010")  
mo8 <-  ggplot(MDO8, aes(x = meses, y = Tm8)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2011")
mo9 <-  ggplot(MDO9, aes(x = meses, y = Tm9)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2012")  
mo10 <- ggplot(MDO10, aes(x = meses, y = Tm10)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2013")
mo11 <- ggplot(MDO11, aes(x = meses, y = Tm11)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2014")
mo12 <- ggplot(MDO12, aes(x = meses, y = Tm12)) + 
  theme_bw() + geom_bar(stat = "identity") + ggtitle("2015")



grid.arrange(mo1,mo2,mo3,mo4,mo5,mo6,mo7,mo8,mo9,mo10,mo11,mo12, nrow = 4, ncol = 3) 






#No se necesita este codigo para las graficas 
#Lo dejo aqui por si se llega a necesitar 

#Tal vez se llegue a necesitar si queremos hacer una grafica como la del profe en 
#la sesion de Limpieza creo que la presentacion 12.

#Pone en una variable todos los meses como mes.
mo2004g.cambio <- gather(data = mo2004g, 
                   key = "Mes", 
                   value = "Mordeduras", 
                   2:13)

















