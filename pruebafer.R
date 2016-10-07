fn2004g <- read.csv("fn2004g.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")


names(fn2004g) <- toupper(names(fn2004g))


fn2004g <- within(fn2004g, 
                            {
                              #  Eliminar espacios en nÃºmeros.
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
                            }
)

fn2004g <- within(fn2004g, 
                            {
                              #  Completa nombres estados.
                              ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                              ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                              ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                              ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                              ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                              ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                            }
)

fn2004g

c <- colnames(fn2004g)

for (i in c)
{
  if (i != "ESTADO"){
  fn2004g[[i]] <- as.numeric(fn2004g[[i]])}
  
}
  





