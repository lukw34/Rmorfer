library(stringr)

install.packages('devtools')
library(devtools)
devtools::install_github('lukw34/Rmorfer', ref = "v0.1.0", force = TRUE)

library('Rmorfer')
arrayFromFile <- analyzeToArray(getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
arrayFromString <- analyzeToArray("Ala ma bardzo dużo kotów")
CSVFromFile <- analyzeToCSV(getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
CSVFromString <- analyzeToCSV("Każdy ma prawo mieć swoje zdanie.")
JSONFromFile <- analyzeToJSON(getFileData("./example/data/Harry Potter i Wiezien Azkabanu.txt"))
JSONFromString <- analyzeToJSON("Nie chce mi się pisać magisterki.")

lemmatized <- as.data.frame(CSVFromFile, stringsAsFactors=FALSE)
