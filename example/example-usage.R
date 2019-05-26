library(stringr)

install.packages('devtools')
library(devtools)
devtools::install_github('lukw34/Rmorfer', force = TRUE)

library('Rmorfer')
morfer <- getMorfer(paste(.libPaths()[1], "/Rmorfer/java/libs", sep = ""));
arrayFromFile <- analyzeToArray(morfer, getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
arrayFromString <- analyzeToArray(morfer, "Ala ma bardzo dużo kotów")
CSVFromFile <- analyzeToCSV(morfer, getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
CSVFromString <- analyzeToCSV(morfer, "Każdy ma prawo mieć swoje zdanie.")
JSONFromFile <- analyzeToJSON(morfer, getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
JSONFromString <- analyzeToJSON(morfer, "Nie chce mi się pisać magisterki.")

lemmatized <- as.data.frame(CSVFromFile, stringsAsFactors=FALSE)
