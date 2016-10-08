fn2004g <- read.csv("fn2004g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")


names(fn2004g) <- toupper(names(fn2004g))


fn2004g <- within(fn2004g, 
                  {
                    #  Eliminar espacios en n????meros.
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


c <- colnames(fn2004g)

for (i in c)
{
  if (i != "ESTADO"){
    fn2004g[[i]] <- as.numeric(fn2004g[[i]])}
  
}


                           fn2004g$SALUD <- NULL
                           fn2004g$IMSS.ORD <- NULL
                           fn2004g$ISSSTE <- NULL
                           fn2004g$IMSS.OP <- NULL
                           fn2004g$DIF <- NULL
                           fn2004g$PEMEX <- NULL
                           fn2004g$SEDENA <- NULL
                           fn2004g$SEMAR <- NULL
                           fn2004g$OTRAS <- NULL

                           
                            
fn2004g$ESTADO <- as.factor(fn2004g$ESTADO)


ggplot(fn2004g, aes(x = ESTADO, y = TOTAL)) + 
   theme_bw() + geom_bar(stat = "identity")        #Grafica un histograma 


fn2004g$ESTADO <- factor(fn2004g$ESTADO, 
  levels = fn2004g$ESTADO[order(fn2004g$TOTAL)]) #Ordena de menor a mayor el histograma

ggplot(fn2004g, aes(x = ESTADO, y = TOTAL)) + 
  theme_bw() + geom_bar(stat = "identity")


mean(fn2004g$TOTAL)









