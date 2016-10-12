#Grafica 2 para Aguascalientes
#Ver como buscar Aguascalientes en el data frame en lugar de poner [1]


#Ver porque no sale asi.
fn2007g[c("Aguascalientes"), ]

#Ya el codigo bien.
#Mordeduras de perro y años las variables. (esma es mordeduras totales en los años)
esma <- c(fn2004g$TOTAL[1],
fn2005g$TOTAL[1],
fn2006g$TOTAL[1],
fn2007g$TOTAL[1],
fn2008g$TOTAL[1],
fn2009g$TOTAL[1],
fn2010g$TOTAL[1],
fn2011g$TOTAL[1],
fn2012g$TOTAL[1],
fn2013g$TOTAL[1],
fn2014g$TOTAL[1],
fn2015g$TOTAL[1])

singularAguas <- data.frame(year, esma)


p <- ggplot(singularAguas, aes(year, esma))
p + geom_point()+ geom_smooth() + ggtitle("Aguascalientes")



