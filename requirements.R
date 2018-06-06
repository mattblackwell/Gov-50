library(remotes)

##### Install specific package versions from CRAN #####

# install_version("ggplot2", "2.2.1")
# install_version("dplyr", "0.7.5")
# install_version("tidyr", "0.8.1")
# install_version("purrr", "0.2.4")

##### Install packages in development from GitHub #####

# install_github("nicholasehamilton/ggtern")

##### Install packages from Bioconductor

# source("https://bioconductor.org/biocLite.R")
# biocLite("GenomicRanges")

##### Include datasets in the image

data_dir <- "/usr/local/share/datasets"
dir.create(data_dir)

#' @param x Filename of the datasets, as a string, not including the directory path.
#' @param course_id The Teach course ID, as an integer.
get_data <- function(x, course_id) {
  download.file(
    sprintf("http://s3.amazonaws.com/assets.datacamp.com/production/course_%d/datasets/%s", course_id, x), 
    file.path(data_dir, x)
  )
}
  
# get_data("mydata.rds", 9999)
