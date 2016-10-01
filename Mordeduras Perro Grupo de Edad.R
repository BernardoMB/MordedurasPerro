mpdosmilcuatroGE <- read.csv("2004mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmilcincoGE <- read.csv("2005mp3.csv", 
                             colClasses = "character", 
                             na.strings = "#N/A")

mpdosmilseisGE <- read.csv("2006mp3.csv", 
                            colClasses = "character", 
                            na.strings = "#N/A")

mpdosmilsieteGE <- read.csv("2007mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmilochoGE <- read.csv("2008mp3.csv", 
                            colClasses = "character", 
                            na.strings = "#N/A")

mpdosmilnueveGE <- read.csv("2009mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmildiezGE <- read.csv("2010mp3.csv", 
                            colClasses = "character", 
                            na.strings = "#N/A")

mpdosmilonceGE <- read.csv("2011mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmildoceGE <- read.csv("2012mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmiltreceGE <- read.csv("2013mp3.csv", 
                           colClasses = "character", 
                           na.strings = "#N/A")

mpdosmilcatorceGE <- read.csv("2014mp3.csv", 
                            colClasses = "character", 
                            na.strings = "#N/A")

mpdosmilquinceGE <- read.csv("2015mp3.csv", 
                              colClasses = "character", 
                              na.strings = "#N/A")


k <- "Hola.. como. te lla.mas"

h <- mpdosmilcincoGE[, -1]

gsub("[ ]", "", h$Total)
