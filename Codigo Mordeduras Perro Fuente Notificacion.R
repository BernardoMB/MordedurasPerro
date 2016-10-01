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





