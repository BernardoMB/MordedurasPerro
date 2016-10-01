mpdosmilcuatroGE <- within(mpdosmilcuatroGE, 
                           {
                             #  Eliminar espacios en números.
                             Mayor.a.uno <- gsub("[ ]", "", Mayor.a.uno)
                             Uno.a.Cuatro <- gsub("[ ]", "", Uno.a.Cuatro)
                             Cinco.a.Nueve <- gsub("[ ]", "", Cinco.a.Nueve)
                             Diez.a.Catorce <- gsub("[ ]", "",Diez.a.Catorce)
                             Quince.a.Diecinueve <- gsub("[ ]", "", Quince.a.Diecinueve)
                             Veinte.a.Veinticuatro <- gsub("[ ]", "", Veinte.a.Veinticuatro)
                             Veinticinco.a.Cuarentaycuatro <- gsub("[ ]", "", Veinticinco.a.Cuarentaycuatro)
                             CuarentayCinco.a.Cuarentaynueve <- gsub("[ ]", "", CuarentayCinco.a.Cuarentaynueve)
                             Cincuenta.a.Cincuentaynueve <- gsub("[ ]", "", Cincuenta.a.Cincuentaynueve)
                             Sesenta.a.Sesentaycuatro <- gsub("[ ]", "", Sesenta.a.Sesentaycuatro)
                             Mayor.a.Sesentaycinco <- gsub("[ ]", "", Mayor.a.Sesentaycinco)
                             No.se.reporto.la.edad <- gsub("[ ]", "", No.se.reporto.la.edad)
                             Total <- gsub("[ ]", "", Total)
                             }
)


