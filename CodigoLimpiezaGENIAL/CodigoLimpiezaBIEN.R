fdnprueba <- read.csv("2004fdnprueba.csv", 
                      colClasses = "character", 
                      na.strings = "#N/A")




fdnprueba[fdnprueba == ""] <- NA                               #Rellena las columnas vacias con NA's
fdnprueba <- Filter(function(x)!all(is.na(x)), fdnprueba)      #Elimina las columnas con NA's

fdnprueba$Total <- NULL    # Elimina la variable Total



col <-colnames(fdnprueba)       #un vector con los nombres de las variables


col[1]                          # Col de 1 es Estado 
names(fdnprueba) <- gsub(col[1] , "estado", names(fdnprueba))  #Cambia de Nombre a "estado".

col[2]                          
names(fdnprueba) <- gsub(col[2] , "salud", names(fdnprueba))

col[3]                          
names(fdnprueba) <- gsub(col[3] , "imss.ord", names(fdnprueba))

col[4]                          
names(fdnprueba) <- gsub(col[4] , "issste", names(fdnprueba))

col[5]                          
names(fdnprueba) <- gsub(col[5] , "imss.prosp", names(fdnprueba))

col[6]                          
names(fdnprueba) <- gsub(col[6] , "dif", names(fdnprueba))

col[7]                          
names(fdnprueba) <- gsub(col[7] , "pemex", names(fdnprueba))

col[8]                          
names(fdnprueba) <- gsub(col[8] , "sedena", names(fdnprueba))

col[9]                          
names(fdnprueba) <- gsub(col[9] , "semar", names(fdnprueba))

col[10]                          
names(fdnprueba) <- gsub(col[10] , "otras", names(fdnprueba))


names(fdnprueba) <- tolower(names(fdnprueba)) #Pone las variables en minúsculas
names(fdnprueba) <- gsub("[.]+", ".", names(fdnprueba))  #Quita dos puntos si existen










mpdosmilcuatro <- within(mpdosmilcuatro, 
                         {
                           #  Eliminar espacios en números.
                           Salud <- gsub("[ ]", "", Salud)
                           IMSS.ORD <- gsub("[ ]", "", IMSS.ORD)
                           ISSSTE <- gsub("[ ]", "", ISSSTE)
                           IMSS.OP <- gsub("[ ]", "",IMSS.OP)
                           DIF <- gsub("[ ]", "", DIF)
                           PEMEX <- gsub("[ ]", "", PEMEX)
                           SEDENA <- gsub("[ ]", "", SEDENA)
                           SEMAR <- gsub("[ ]", "", SEMAR)
                           OTRAS <- gsub("[ ]", "", OTRAS)
                           Total <- gsub("[ ]", "", Total)
                         }
)

mpdosmilcuatro <- within(mpdosmilcuatro, 
                         {
                           #  Sustituye N.A. y S/R por cero.
                           IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                         }
)



