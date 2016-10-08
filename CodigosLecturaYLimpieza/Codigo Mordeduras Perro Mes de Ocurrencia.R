setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/General")
mog = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso general
for (i in 1:length(mog)) assign(mog[i], read.csv(mog[i],colClasses = "character", 
                                                 na.strings = "#N/A"))

setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/Hombres")
moh = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso hombres
for (i in 1:length(moh)) assign(moh[i], read.csv(moh[i],colClasses = "character", 
                                                 na.strings = "#N/A"))

setwd("/Users/rayangf/Desktop/MordedurasPerro/Data/CSV/MesDeOcurrencia/Mujeres")
mom = list.files(pattern="*.csv") #Codigo para leer los csv MesDeOcurrencia caso mujeres
for (i in 1:length(mom)) assign(mom[i], read.csv(mom[i],colClasses = "character", 
                                                 na.strings = "#N/A"))

names(mo2004g.csv) <- toupper(names(get(mog[1])))
names(mo2005g.csv) <- toupper(names(get(mog[2])))
names(mo2006g.csv) <- toupper(names(get(mog[3])))
names(mo2007g.csv) <- toupper(names(get(mog[4])))
names(mo2008g.csv) <- toupper(names(get(mog[5])))
names(mo2009g.csv) <- toupper(names(get(mog[6])))
names(mo2010g.csv) <- toupper(names(get(mog[7])))
names(mo2011g.csv) <- toupper(names(get(mog[8])))
names(mo2012g.csv) <- toupper(names(get(mog[9])))
names(mo2013g.csv) <- toupper(names(get(mog[10])))
names(mo2014g.csv) <- toupper(names(get(mog[11])))
names(mo2015g.csv) <- toupper(names(get(mog[12])))
names(mo2004h.csv) <- toupper(names(get(moh[1])))
names(mo2005h.csv) <- toupper(names(get(moh[2])))
names(mo2006h.csv) <- toupper(names(get(moh[3])))
names(mo2007h.csv) <- toupper(names(get(moh[4])))
names(mo2008h.csv) <- toupper(names(get(moh[5])))
names(mo2009h.csv) <- toupper(names(get(moh[6])))
names(mo2010h.csv) <- toupper(names(get(moh[7])))
names(mo2011h.csv) <- toupper(names(get(moh[8])))
names(mo2012h.csv) <- toupper(names(get(moh[9])))
names(mo2013h.csv) <- toupper(names(get(moh[10])))
names(mo2014h.csv) <- toupper(names(get(moh[11])))
names(mo2015h.csv) <- toupper(names(get(moh[12])))
names(mo2004m.csv) <- toupper(names(get(mom[1])))
names(mo2005m.csv) <- toupper(names(get(mom[2])))
names(mo2006m.csv) <- toupper(names(get(mom[3])))
names(mo2007m.csv) <- toupper(names(get(mom[4])))
names(mo2008m.csv) <- toupper(names(get(mom[5])))
names(mo2009m.csv) <- toupper(names(get(mom[6])))
names(mo2010m.csv) <- toupper(names(get(mom[7])))
names(mo2011m.csv) <- toupper(names(get(mom[8])))
names(mo2012m.csv)<- toupper(names(get(mom[9])))
names(mo2013m.csv) <- toupper(names(get(mom[10])))
names(mo2014m.csv) <- toupper(names(get(mom[11])))
names(mo2015m.csv) <- toupper(names(get(mom[12])))


mo2004g.csv<- within( mo2004g.csv , 
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
mo2005g.csv<- within( mo2005g.csv , 
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
mo2006g.csv<- within( mo2006g.csv , 
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
mo2007g.csv<- within( mo2007g.csv , 
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
mo2008g.csv<- within( mo2008g.csv , 
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
mo2009g.csv<- within( mo2009g.csv , 
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
mo2010g.csv<- within( mo2010g.csv , 
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
mo2011g.csv<- within( mo2011g.csv , 
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
mo2012g.csv<- within( mo2012g.csv , 
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
mo2013g.csv<- within( mo2013g.csv , 
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
mo2014g.csv<- within( mo2014g.csv , 
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
mo2015g.csv<- within( mo2015g.csv , 
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
mo2004h.csv<- within( mo2004h.csv , 
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
mo2005h.csv<- within( mo2005h.csv , 
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
mo2006h.csv<- within( mo2006h.csv , 
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
mo2007h.csv<- within( mo2007h.csv , 
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
mo2008h.csv<- within( mo2008h.csv , 
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
mo2009h.csv<- within( mo2009h.csv , 
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
mo2010h.csv<- within( mo2010h.csv , 
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
mo2011h.csv<- within( mo2011h.csv , 
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
mo2012h.csv<- within( mo2012h.csv , 
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
mo2013h.csv<- within( mo2013h.csv , 
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
mo2014h.csv<- within( mo2014h.csv , 
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
mo2015h.csv<- within( mo2015h.csv , 
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
mo2004m.csv<- within( mo2004m.csv , 
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
mo2005m.csv<- within( mo2005m.csv , 
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
mo2006m.csv<- within( mo2006m.csv , 
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
mo2007m.csv<- within( mo2007m.csv , 
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
mo2008m.csv<- within( mo2008m.csv , 
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
mo2009m.csv<- within( mo2009m.csv , 
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
mo2010m.csv<- within( mo2010m.csv , 
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
mo2011m.csv<- within( mo2011m.csv , 
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
mo2012m.csv<- within( mo2012m.csv , 
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
mo2013m.csv<- within( mo2013m.csv , 
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
mo2014m.csv<- within( mo2014m.csv , 
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
mo2015m.csv<- within( mo2015m.csv , 
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
