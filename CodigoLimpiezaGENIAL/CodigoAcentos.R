

fdnprueba <- within(fdnprueba, 
                     {
                       #  Tipo de motocicleta.
                       estado <- gsub("M.*xico", "Mexico", estado)
                       estado <- gsub("Michoac.*n", "Michoacan", estado)
                       estado <- gsub("Nuevo Le.*n", "Nuevo Leon", estado)
                       estado <- gsub("Quer.*taro", "Queretaro", estado)
                       estado <- gsub("San Lu.*s Potos.*", "San Luis Potosi", estado)
                       estado <- gsub("Yucat.*n", "Yucatan", estado)
                     }
)