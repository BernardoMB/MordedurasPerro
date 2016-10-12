fn2004g <- within(fn2004g , 
                  {
                    #  Eliminar espacios en n??meros.
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
                    #  Sustituye N.A. y S/R por cero.
                    IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                    SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                    ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                    IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                    DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                    PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                    SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                    SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                    OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                    TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                    #  Completa nombres estados.
                    ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                    ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                    ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                    ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                    ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                    ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                  }
)
fn2005g  <- within(fn2005g , 
                   {
                     #  Eliminar espacios en n??meros.
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
                     #  Sustituye N.A. y S/R por cero.
                     IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                     SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                     ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                     IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                     DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                     PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                     SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                     SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                     OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                     TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                     #  Completa nombres estados.
                     ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                     ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                     ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                     ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                     ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                     ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                   }
                   
                   fn2006g  <- within(fn2006g , 
                                      {
                                        #  Eliminar espacios en n??meros.
                                        SALUD <- gsub("[ ]", "", SALUD)
                                        IMSS.ORD <- gsub("[ ]", "", IMSS.ORD)
                                        ISSSTE <- gsub("[ ]", "", ISSSTE)
                                        IMSS.OP <- gsub("[ ]", "",IMSS.OP)
                                        DIF <- gsub("[ ]", "", DIF)
                                        PEMEX <- gsub("[ ]", "", PEMEX)
                                        SEDENA <- gsub("[ ]", "", SEDENA)
                                        SEMAR <- gsub("[ ]", "", SEMAR)
                                        OTRAS <- gsub("[ ]", "", OTRAS)
                                        TOTAL <- gsub("[ ]+", "", TOTAL)
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2007g <- within(fn2007g , 
                                     {
                                       #  Eliminar espacios en n??meros.
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
                                       #  Sustituye N.A. y S/R por cero.
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                       SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                       ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                       DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                       PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                       SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                       SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                       OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                       TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                       #  Completa nombres estados.
                                       ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                       ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                       ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                       ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                       ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                       ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                     }
                   )
                   fn2008g  <- within(fn2008g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2009g <- within(fn2009g , 
                                     {
                                       #  Eliminar espacios en n??meros.
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
                                       #  Sustituye N.A. y S/R por cero.
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                       SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                       ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                       DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                       PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                       SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                       SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                       OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                       TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                       #  Completa nombres estados.
                                       ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                       ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                       ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                       ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                       ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                       ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                     }
                   )
                   fn2010g  <- within(fn2010g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2011g  <- within(fn2011g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2012g  <- within(fn2012g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2013g <- within(fn2013g , 
                                     {
                                       #  Eliminar espacios en n??meros.
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
                                       #  Sustituye N.A. y S/R por cero.
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                       SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                       ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                       IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                       DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                       PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                       SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                       SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                       OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                       TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                       #  Completa nombres estados.
                                       ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                       ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                       ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                       ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                       ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                       ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                     }
                   )
                   fn2014g  <- within(fn2014g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
                                        #  Completa nombres estados.
                                        ESTADO <- gsub("M.xico.*", "Mexico", ESTADO)
                                        ESTADO <- gsub("Mich.*n.*", "Michoacan", ESTADO)
                                        ESTADO <- gsub("Nuevo Le.*n.*", "Nuevo Leon", ESTADO)
                                        ESTADO <- gsub("Quer.taro.*", "Queretaro", ESTADO)
                                        ESTADO <- gsub("San Luis Pot.*.*", "San Luis Potosi", ESTADO)
                                        ESTADO <- gsub("Yuca.*n.*", "Yucatan",ESTADO)
                                      }
                   )
                   fn2015g  <- within(fn2015g , 
                                      {
                                        #  Eliminar espacios en n??meros.
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
                                        #  Sustituye N.A. y S/R por cero.
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA", IMSS.OP)
                                        SALUD <- gsub("N.A.*|S.R*", "NA", SALUD)
                                        ISSSTE <- gsub("N.A.*|S.R*", "NA", ISSSTE)
                                        IMSS.OP <- gsub("N.A.*|S.R*", "NA",IMSS.OP)
                                        DIF <- gsub("N.A.*|S.R*", "NA", DIF)
                                        PEMEX <- gsub("N.A.*|S.R*", "NA", PEMEX)
                                        SEDENA <- gsub("N.A.*|S.R*", "NA", SEDENA)
                                        SEMAR <- gsub("N.A.*|S.R*", "NA", SEMAR)
                                        OTRAS <- gsub("N.A.*|S.R*", "NA", OTRAS)
                                        TOTAL <- gsub("N.A.*|S.R*", "NA", TOTAL)
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
                   
                   
                   c2 <- colnames(fn2005g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2005g[[i]] <- as.numeric(fn2005g[[i]])}
                     
                   }
                   
                   c3 <- colnames(fn2006g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2006g[[i]] <- as.numeric(fn2006g[[i]])}
                     
                   }
                   
                   c4 <- colnames(fn2007g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2007g[[i]] <- as.numeric(fn2007g[[i]])}
                     
                   }
                   c5 <- colnames(fn2008g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2008g[[i]] <- as.numeric(fn2008g[[i]])}
                     
                   }
                   c6 <- colnames(fn2009g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2009g[[i]] <- as.numeric(fn2009g[[i]])}
                     
                   }
                   c7 <- colnames(fn2010g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2010g[[i]] <- as.numeric(fn2010g[[i]])}
                     
                   }
                   c8 <- colnames(fn2011g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2011g[[i]] <- as.numeric(fn2011g[[i]])}
                     
                   }
                   c9 <- colnames(fn2012g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2012g[[i]] <- as.numeric(fn2012g[[i]])}
                     
                   }
                   c10 <- colnames(fn2013g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2013g[[i]] <- as.numeric(fn2013g[[i]])}
                     
                   }
                   c11 <- colnames(fn2014g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2014g[[i]] <- as.numeric(fn2014g[[i]])}
                     
                   }
                   c12 <- colnames(fn2015g)
                   
                   for (i in c)
                   {
                     if (i != "ESTADO"){
                       fn2015g[[i]] <- as.numeric(fn2015g[[i]])}
                     
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
                   
                   fn2005g$SALUD <- NULL
                   fn2005g$IMSS.ORD <- NULL
                   fn2005g$ISSSTE <- NULL
                   fn2005g$IMSS.OP <- NULL
                   fn2005g$DIF <- NULL
                   fn2005g$PEMEX <- NULL
                   fn2005g$SEDENA <- NULL
                   fn2005g$SEMAR <- NULL
                   fn2005g$OTRAS <- NULL
                   fn2005g$ESTADO <- as.factor(fn2005g$ESTADO)
                   
                   fn2006g$SALUD <- NULL
                   fn2006g$IMSS.ORD <- NULL
                   fn2006g$ISSSTE <- NULL
                   fn2006g$IMSS.OP <- NULL
                   fn2006g$DIF <- NULL
                   fn2006g$PEMEX <- NULL
                   fn2006g$SEDENA <- NULL
                   fn2006g$SEMAR <- NULL
                   fn2006g$OTRAS <- NULL
                   fn2006g$ESTADO <- as.factor(fn2006g$ESTADO)
                   
                   fn2007g$SALUD <- NULL
                   fn2007g$IMSS.ORD <- NULL
                   fn2007g$ISSSTE <- NULL
                   fn2007g$IMSS.OP <- NULL
                   fn2007g$DIF <- NULL
                   fn2007g$PEMEX <- NULL
                   fn2007g$SEDENA <- NULL
                   fn2007g$SEMAR <- NULL
                   fn2007g$OTRAS <- NULL
                   fn2007g$ESTADO <- as.factor(fn2007g$ESTADO)
                   
                   fn2008g$SALUD <- NULL
                   fn2008g$IMSS.ORD <- NULL
                   fn2008g$ISSSTE <- NULL
                   fn2008g$IMSS.OP <- NULL
                   fn2008g$DIF <- NULL
                   fn2008g$PEMEX <- NULL
                   fn2008g$SEDENA <- NULL
                   fn2008g$SEMAR <- NULL
                   fn2008g$OTRAS <- NULL
                   fn2008g$ESTADO <- as.factor(fn2008g$ESTADO)
                   
                   fn2009g$SALUD <- NULL
                   fn2009g$IMSS.ORD <- NULL
                   fn2009g$ISSSTE <- NULL
                   fn2009g$IMSS.OP <- NULL
                   fn2009g$DIF <- NULL
                   fn2009g$PEMEX <- NULL
                   fn2009g$SEDENA <- NULL
                   fn2009g$SEMAR <- NULL
                   fn2009g$OTRAS <- NULL
                   fn2009g$ESTADO <- as.factor(fn2009g$ESTADO)
                   
                   fn2010g$SALUD <- NULL
                   fn2010g$IMSS.ORD <- NULL
                   fn2010g$ISSSTE <- NULL
                   fn2010g$IMSS.OP <- NULL
                   fn2010g$DIF <- NULL
                   fn2010g$PEMEX <- NULL
                   fn2010g$SEDENA <- NULL
                   fn2010g$SEMAR <- NULL
                   fn2010g$OTRAS <- NULL
                   fn2010g$ESTADO <- as.factor(fn2010g$ESTADO)
                   
                   fn2011g$SALUD <- NULL
                   fn2011g$IMSS.ORD <- NULL
                   fn2011g$ISSSTE <- NULL
                   fn2011g$IMSS.OP <- NULL
                   fn2011g$DIF <- NULL
                   fn2011g$PEMEX <- NULL
                   fn2011g$SEDENA <- NULL
                   fn2011g$SEMAR <- NULL
                   fn2011g$OTRAS <- NULL
                   fn2011g$ESTADO <- as.factor(fn2004g$ESTADO)
                   
                   fn2012g$SALUD <- NULL
                   fn2012g$IMSS.ORD <- NULL
                   fn2012g$ISSSTE <- NULL
                   fn2012g$IMSS.OP <- NULL
                   fn2012g$DIF <- NULL
                   fn2012g$PEMEX <- NULL
                   fn2012g$SEDENA <- NULL
                   fn2012g$SEMAR <- NULL
                   fn2012g$OTRAS <- NULL
                   fn2012g$ESTADO <- as.factor(fn2012g$ESTADO)
                   
                   fn2013g$SALUD <- NULL
                   fn2013g$IMSS.ORD <- NULL
                   fn2013g$ISSSTE <- NULL
                   fn2013g$IMSS.OP <- NULL
                   fn2013g$DIF <- NULL
                   fn2013g$PEMEX <- NULL
                   fn2013g$SEDENA <- NULL
                   fn2013g$SEMAR <- NULL
                   fn2013g$OTRAS <- NULL
                   fn2013g$ESTADO <- as.factor(fn2013g$ESTADO)
                   
                   fn2014g$SALUD <- NULL
                   fn2014g$IMSS.ORD <- NULL
                   fn2014g$ISSSTE <- NULL
                   fn2014g$IMSS.OP <- NULL
                   fn2014g$DIF <- NULL
                   fn2014g$PEMEX <- NULL
                   fn2014g$SEDENA <- NULL
                   fn2014g$SEMAR <- NULL
                   fn2014g$OTRAS <- NULL
                   fn2014g$ESTADO <- as.factor(fn2014g$ESTADO)
                   
                   fn2015g$SALUD <- NULL
                   fn2015g$IMSS.ORD <- NULL
                   fn2015g$ISSSTE <- NULL
                   fn2015g$IMSS.OP <- NULL
                   fn2015g$DIF <- NULL
                   fn2015g$PEMEX <- NULL
                   fn2015g$SEDENA <- NULL
                   fn2015g$SEMAR <- NULL
                   fn2015g$OTRAS <- NULL
                   fn2015g$ESTADO <- as.factor(fn2015g$ESTADO)
                   
                   
         
                   
            



for(i in 1:12) {
  
t[i] = ggplot(bb[i], aes(x = ESTADO, y = TOTAL)) + 
    theme_bw() + geom_bar(stat = "identity")  #Grafica un histograma 

grid.arrange(T[i], 
      
}




bb <- c(fn2004g,fn2005g,fn2006g,fn2007g,fn2008g,fn2009g,fn2010g,fn2011g,fn2012g,fn2013g,fn2014g,fn2015g)

mm <- c(1:12)






grid.arrange(p, pp, ncol=2)

multiplot(p, pp, ncols=2)









pp <- ggplot(fn2004g, aes(x = ESTADO, y = TOTAL)) + 
  theme_bw() + geom_bar(stat = "identity")        #Grafica un histograma 


fn2004g$ESTADO <- factor(fn2004g$ESTADO, 
                         levels = fn2004g$ESTADO[order(fn2004g$TOTAL)]) #Ordena de menor a mayor el histograma

ggplot(fn2004g, aes(x = ESTADO, y = TOTAL)) + 
  theme_bw() + geom_bar(stat = "identity")


mean(fn2004g$TOTAL)

