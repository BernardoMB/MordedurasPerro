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


Mordeduras <- c(sum(as.numeric(fn2004g$TOTAL)), sum(as.numeric(fn2005g$TOTAL)), 
       sum(as.numeric(fn2006g$TOTAL)), sum(as.numeric(fn2007g$TOTAL)), 
       sum(as.numeric(fn2008g$TOTAL)), sum(as.numeric(fn2009g$TOTAL)),
       sum(as.numeric(fn2010g$TOTAL)), sum(as.numeric(fn2011g$TOTAL)),
       sum(as.numeric(fn2012g$TOTAL)), sum(as.numeric(fn2013g$TOTAL)),
       sum(as.numeric(fn2014g$TOTAL)), sum(as.numeric(fn2015g$TOTAL)))

year <- c(2004:2015)

Tendencia <- data.frame(Mordeduras, year)

Tendencia$year <- as.numeric(Tendencia$year)

Tendencia$Mordeduras<- as.numeric(paste(Tendencia$Mordeduras))

Tendencia


