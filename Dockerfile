# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse:3.4.0

# required
MAINTAINER Ricarda Braun <ricarda.braun@fu-berlin.de>

COPY . /mytestpkg
# go into the repo directory

RUN . /etc/environment \
&& apt-get update -y \
 && apt-get install -y libudunits2-dev libgdal-dev libgsl0-dev gdal-bin libgeos-dev libpng-dev libproj-dev \

&& R -e "options(repos='https://mran.microsoft.com/snapshot/2017-07-20'); devtools::install('/mytestpkg', dep = TRUE)" \

# build this compendium package
&& R -e "devtools::install('/mytestpkg', dep=TRUE)" \


  # knitting  the manuscript
&& R -e "rmarkdown::render('/mytestpkg/analysis/test_pkg.Rmd')"
