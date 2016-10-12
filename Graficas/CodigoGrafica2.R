fn2004g <- read.csv("fn2004g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2005g <- read.csv("fn2005g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2006g <- read.csv("fn2006g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2007g <- read.csv("fn2007g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2008g <- read.csv("fn2008g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2009g <- read.csv("fn2009g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2010g <- read.csv("fn2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2010g <- read.csv("fn2010g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2011g <- read.csv("fn2011g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2012g <- read.csv("fn2012g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2013g <- read.csv("fn2013g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2014g <- read.csv("fn2014g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")
fn2015g <- read.csv("fn2015g.csv", 
                    colClasses = "character", 
                    na.strings = "#N/A")



names(fn2004g) <- toupper(names(fn2004g))
names(fn2005g) <- toupper(names(fn2005g))
names(fn2006g) <- toupper(names(fn2006g))
names(fn2007g) <- toupper(names(fn2007g))
names(fn2008g) <- toupper(names(fn2008g))
names(fn2009g) <- toupper(names(fn2009g))
names(fn2010g) <- toupper(names(fn2010g))
names(fn2011g) <- toupper(names(fn2011g))
names(fn2012g) <- toupper(names(fn2012g))
names(fn2013g) <- toupper(names(fn2013g))
names(fn2014g) <- toupper(names(fn2014g))
names(fn2015g) <- toupper(names(fn2015g))









fn2004g$TOTAL <- as.numeric(fn2004g$TOTAL)
fn2005g$TOTAL <- as.numeric(fn2005g$TOTAL)
fn2006g$TOTAL <- as.numeric(fn2006g$TOTAL)
fn2007g$TOTAL <- as.numeric(fn2007g$TOTAL)
fn2008g$TOTAL <- as.numeric(fn2008g$TOTAL)
fn2009g$TOTAL <- as.numeric(fn2009g$TOTAL)
fn2010g$TOTAL <- as.numeric(fn2010g$TOTAL)
fn2011g$TOTAL <- as.numeric(fn2011g$TOTAL)
fn2012g$TOTAL <- as.numeric(fn2012g$TOTAL)
fn2013g$TOTAL <- as.numeric(fn2013g$TOTAL)
fn2014g$TOTAL <- as.numeric(fn2014g$TOTAL)
fn2015g$TOTAL <- as.numeric(fn2015g$TOTAL)


sum(fn2004g$TOTAL)


mordeduras <- c(sum(fn2004g$TOTAL), sum(fn2005g$TOTAL), sum(fn2006g$TOTAL), sum(fn2007g$TOTAL), sum(fn2008g$TOTAL), sum(fn2009g$TOTAL),  
       sum(fn2010g$TOTAL), sum(fn2011g$TOTAL),
       sum(fn2012g$TOTAL), sum(fn2013g$TOTAL), sum(fn2014g$TOTAL), sum(fn2015g$TOTAL)) 

mordeudras

year <- (2004:2015)




tendencia <- data.frame(year, mordeduras)



plot(year, mordeduras, type ="p", main = "Tendencia de mordeduras en todo Mexico", 
     xlab = "Años", ylab = "Mordeduras", pch = 16, col = "blue" )                   #Codigo Para leer la segunda grafica con plot



p <- ggplot(tendencia, aes(year, mordeduras), xlab = Años)
p + geom_point()+ geom_smooth()                                                  #codigo para leer la grafica con ggplot











