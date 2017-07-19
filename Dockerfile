# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse:3.4.0

# required
MAINTAINER Ricarda Braun <ricarda.braun@fu-berlin.de>

COPY . /mjbtramp
# go into the repo directory
RUN . /etc/environment \

# build this compendium package
&& R -e devtools::install('/mytestokg', dep=TRUE)" \


  # knitting  the manuscript
&& R -e "rmarkdown::render('/mytestpkg/analysis/test_pkg.Rmd')"
