mpdosmilcuatroFNH <- within(mpdosmilcuatroFNH, 
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

mpdosmilcuatroFNH <- within(mpdosmilcuatroFNH, 
                         {
                           #  Completa nombres estados.
                           Estado <- gsub("M.xico.*", "Mexico", Estado)
                           Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                           Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                           Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                           Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                           Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                         }
)

mpdosmilcuatroFNH <- within(mpdosmilcuatroFNH, 
                        {
                          #  Sustituye N.A. y S/R por cero.
                          IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                        }
)
mpdosmilcincoFNH <- within(mpdosmilcincoFNH, 
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
mpdosmilcincoFNH <- within(mpdosmilcincoFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilcincoFNH <- within(mpdosmilcincoFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilseisFNH <- within(mpdosmilseisFNH, 
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
mpdosmilseisFNH <- within(mpdosmilseisFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilseisFNH <- within(mpdosmilseisFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilsieteFNH <- within(mpdosmilsieteFNH, 
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
mpdosmilsieteFNH <- within(mpdosmilsieteFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilsieteFNH <- within(mpdosmilsieteFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilochoFNH <- within(mpdosmilochoFNH, 
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
mpdosmilochoFNH <- within(mpdosmilochoFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilochoFNH <- within(mpdosmilochoFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilnueveFNH <- within(mpdosmilnueveFNH, 
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
mpdosmilnueveFNH <- within(mpdosmilnueveFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilnueveFNH <- within(mpdosmilnueveFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmildiezFNH <- within(mpdosmildiezFNH, 
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
mpdosmildiezFNH <- within(mpdosmildiezFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmildiezFNH <- within(mpdosmildiezFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilonceFNH <- within(mpdosmilonceFNH, 
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
mpdosmilonceFNH <- within(mpdosmilonceFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilonceFNH <- within(mpdosmilonceFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmildoceFNH <- within(mpdosmildoceFNH, 
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
mpdosmildoceFNH <- within(mpdosmildoceFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmildoceFNH <- within(mpdosmildoceFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmiltreceFNH <- within(mpdosmiltreceFNH, 
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
mpdosmiltreceFNH <- within(mpdosmiltreceFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmiltreceFNH <- within(mpdosmiltreceFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilcatorceFNH <- within(mpdosmilcatorceFNH, 
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
mpdosmilcatorceFNH <- within(mpdosmilcatorceFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilcatorceFNH <- within(mpdosmilcatorceFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilquinceFNH <- within(mpdosmilquinceFNH, 
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
mpdosmilquinceFNH <- within(mpdosmilquinceFNH, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilquinceFNH <- within(mpdosmilquinceFNH, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilcuatroFNM <- within(mpdosmilcuatroFNM, 
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

mpdosmilcuatroFNM <- within(mpdosmilcuatroFNM, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilcuatroFNM <- within(mpdosmilcuatroFNM, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)
mpdosmilcincoFNM <- within(mpdosmilcincoFNM, 
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
mpdosmilcincoFNM <- within(mpdosmilcincoFNM, 
                           {
                             #  Completa nombres estados.
                             Estado <- gsub("M.xico.*", "Mexico", Estado)
                             Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                             Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                             Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                             Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                             Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                           }
)

mpdosmilcincoFNM <- within(mpdosmilcincoFNM, 
                           {
                             #  Sustituye N.A. y S/R por cero.
                             IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                           }
)
mpdosmilseisFNM <- within(mpdosmilseisFNM, 
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
mpdosmilseisFNM <- within(mpdosmilseisFNM, 
                          {
                            #  Completa nombres estados.
                            Estado <- gsub("M.xico.*", "Mexico", Estado)
                            Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                            Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                            Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                            Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                            Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                          }
)

mpdosmilseisFNM <- within(mpdosmilseisFNM, 
                          {
                            #  Sustituye N.A. y S/R por cero.
                            IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                          }
)
mpdosmilsieteFNM <- within(mpdosmilsieteFNM, 
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
mpdosmilsieteFNM <- within(mpdosmilsieteFNM, 
                           {
                             #  Completa nombres estados.
                             Estado <- gsub("M.xico.*", "Mexico", Estado)
                             Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                             Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                             Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                             Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                             Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                           }
)

mpdosmilsieteFNM <- within(mpdosmilsieteFNM, 
                           {
                             #  Sustituye N.A. y S/R por cero.
                             IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                           }
)
mpdosmilochoFNM <- within(mpdosmilochoFNM, 
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
mpdosmilochoFNM <- within(mpdosmilochoFNM, 
                          {
                            #  Completa nombres estados.
                            Estado <- gsub("M.xico.*", "Mexico", Estado)
                            Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                            Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                            Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                            Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                            Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                          }
)

mpdosmilochoFNM <- within(mpdosmilochoFNM, 
                          {
                            #  Sustituye N.A. y S/R por cero.
                            IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                          }
)
mpdosmilnueveFNM <- within(mpdosmilnueveFNM, 
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
mpdosmilnueveFNM <- within(mpdosmilnueveFNM, 
                           {
                             #  Completa nombres estados.
                             Estado <- gsub("M.xico.*", "Mexico", Estado)
                             Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                             Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                             Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                             Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                             Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                           }
)

mpdosmilnueveFNM <- within(mpdosmilnueveFNM, 
                           {
                             #  Sustituye N.A. y S/R por cero.
                             IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                           }
)
mpdosmildiezFNM <- within(mpdosmildiezFNM, 
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
mpdosmildiezFNM <- within(mpdosmildiezFNM, 
                          {
                            #  Completa nombres estados.
                            Estado <- gsub("M.xico.*", "Mexico", Estado)
                            Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                            Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                            Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                            Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                            Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                          }
)

mpdosmildiezFNM <- within(mpdosmildiezFNM, 
                          {
                            #  Sustituye N.A. y S/R por cero.
                            IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                          }
)
mpdosmilonceFNM <- within(mpdosmilonceFNM, 
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
mpdosmilonceFNM <- within(mpdosmilonceFNM, 
                          {
                            #  Completa nombres estados.
                            Estado <- gsub("M.xico.*", "Mexico", Estado)
                            Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                            Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                            Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                            Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                            Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                          }
)

mpdosmilonceFNM <- within(mpdosmilonceFNM, 
                          {
                            #  Sustituye N.A. y S/R por cero.
                            IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                          }
)
mpdosmildoceFNM <- within(mpdosmildoceFNM, 
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
mpdosmildoceFNM <- within(mpdosmildoceFNM, 
                          {
                            #  Completa nombres estados.
                            Estado <- gsub("M.xico.*", "Mexico", Estado)
                            Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                            Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                            Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                            Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                            Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                          }
)

mpdosmildoceFNM <- within(mpdosmildoceFNM, 
                          {
                            #  Sustituye N.A. y S/R por cero.
                            IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                          }
)
mpdosmiltreceFNM <- within(mpdosmiltreceFNM, 
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
mpdosmiltreceFNM <- within(mpdosmiltreceFNM, 
                           {
                             #  Completa nombres estados.
                             Estado <- gsub("M.xico.*", "Mexico", Estado)
                             Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                             Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                             Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                             Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                             Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                           }
)

mpdosmiltreceFNM <- within(mpdosmiltreceFNM, 
                           {
                             #  Sustituye N.A. y S/R por cero.
                             IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                           }
)
mpdosmilcatorceFNM <- within(mpdosmilcatorceFNM, 
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
mpdosmilcatorceFNM <- within(mpdosmilcatorceFNM, 
                             {
                               #  Completa nombres estados.
                               Estado <- gsub("M.xico.*", "Mexico", Estado)
                               Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                               Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                               Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                               Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                               Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                             }
)

mpdosmilcatorceFNM <- within(mpdosmilcatorceFNM, 
                             {
                               #  Sustituye N.A. y S/R por cero.
                               IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                             }
)
mpdosmilquinceFNM <- within(mpdosmilquinceFNM, 
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
mpdosmilquinceFNM <- within(mpdosmilquinceFNM, 
                            {
                              #  Completa nombres estados.
                              Estado <- gsub("M.xico.*", "Mexico", Estado)
                              Estado <- gsub("Mich.*n.*", "Michoacan", Estado)
                              Estado <- gsub("Nuevo Le.*n.*", "Nuevo Leon", Estado)
                              Estado <- gsub("Quer.taro.*", "Queretaro", Estado)
                              Estado <- gsub("San Luis Pot.*.*", "San Luis Potosi", Estado)
                              Estado <- gsub("Yuca.*n.*", "Yucatan",Estado)
                            }
)

mpdosmilquinceFNM <- within(mpdosmilquinceFNM, 
                            {
                              #  Sustituye N.A. y S/R por cero.
                              IMSS.OP <- gsub("N.A.*|S.R*", "0", IMSS.OP)
                            }
)





