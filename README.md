# Rmorfer
Morphological analyzer for polish language.It is a R Wrapper on the JAVA implementation.
[Morfer-lib](https://github.com/lukw34/Morfer-lib) is an implementation which use Morfeusz library [jmorfeusz](http://sgjp.pl/morfeusz/).


# Installation
To install it, please make sure you have the `devtools` package installed. If not, enter, in your
R console,

```
install.packages('devtools')
```

Then load the package, and run the installation:

```
library(devtools)
devtools::install_github('lukw34/Rmorfer', force = TRUE)
```

# Example
Load the package by entering

```
library('Rmorfer')
```

To use Rmorfer, you need to initialize Morfer instance which is issued to conduct analysis'.
As a argument you need to pass path to libmorfeusz system file. As a default they are stored in Rmorfe installation directory.
How to use this default path is shown in example file. 

```
morfer <- getMorfer(paste(.libPaths()[1], "/Rmorfer/java/libs", sep = ""));

```

Rmorfer package contain three functions which return result of morphological analysis.
First one return plain string:
```
arrayFromString <- analyzeToArray("Ala ma bardzo dużo kotów")
```
Second return csv data:
```
analyzeToCSV("Ty masz prawo mieć swoje zdanie, a ja mam prawo mieć to w dupie.")
```
Last one return JSON data:
```
arrayFromString <- analyzeToJSON("Nie chce mi się pisać magisterki.")
```

Example script shich use this library is placed in example directory.

# Reference
* Kwan-Yuet Ho, "rJava: Running Java from R, and Building R Packages Wrapping a .jar", *Everything about Data Analytics*, WordPress. 
