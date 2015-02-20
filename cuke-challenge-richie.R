
#### Richie's challenge ###############################################################

### first, download the data ##########################################################

download.file("http://r-bio.github.io/data/holothuriidae-specimens.csv",
              "data/holothuriidae-specimens.csv")
download.file("http://r-bio.github.io/data/holothuriidae-nomina-valid.csv",
              "data/holothuriidae-nomina-valid.csv")

### assign data frames ################################################################

hol <- read.csv(file="data/holothuriidae-specimens.csv", stringsAsFactors=FALSE)
nom <- read.csv(file="data/holothuriidae-nomina-valid.csv", stringsAsFactors=FALSE)

### Question 1: How many specimens are included in the data fram hol?  ################

### find the structure of the data frame hol ##########################################

str(hol)

### I determined that idigbio.uuid was the best choice for finding number of specimens

no_missing <- na.omit(hol$idigbio.uuid)
length(no_missing)

### The number of specimens is 2984 ###################################################

### Question 2: How many institutions house specimens; draw a bar plot ################

Institutions <- unique(hol$dwc.institutionCode)

### 4 institutions house specimens ###################################################

FLcounts <- length(hol$dwc.institutionCode)[which(hol$dwc.institutionCode == "FLMNH")]
CAcounts <- length(hol$dwc.institutionCode)[which(hol$dwc.institutionCode == "CAS")]
MCcounts <- length(hol$dwc.institutionCode)[which(hol$dwc.institutionCode == "MCZ")]
YPcounts <- length(hol$dwc.institutionCode)[which(hol$dwc.institutionCode == "YPM")]


