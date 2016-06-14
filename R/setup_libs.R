#' setup all packages for day 1 of the course
#'
#' @return Installs the required packages - day1
#' @export
#'
#' @author Federico Marini, \email{marinif@@uni-mainz.de}, 2016
#' @examples
#' \dontrun{
#'  setup_day1()
#' }
setup_day1 <- function(){

  source("http://bioconductor.org/biocLite.R")
  day1pkgs <- c("devtools","ggplot2","gapminder","ggthemes","knitr")
  biocLite(day1pkgs)
  devtools::install_github("federicomarini/rbioc2016")
  # library("knitr")
  # library("devtools")
  # library("rbioc2016")
  # library("ggplot2")
  # library("gapminder")
  # library("ggthemes")
}


#' setup all packages for day 2 of the course
#'
#' @param newestR logical, whether you are using R-3.3.0
#'
#' @return Installs the required packages - day2
#' @export
#'
#' @author Federico Marini, \email{marinif@@uni-mainz.de}, 2016
#' @examples
#' \dontrun{
#'  setup_day2(newestR=TRUE)
#' }
setup_day2 <- function(newestR=TRUE){

  source("http://bioconductor.org/biocLite.R")

  day2pkgs <- c("GenomicRanges","TxDb.Mmusculus.UCSC.mm10.knownGene","airway","DESeq2","gplots",
                "pheatmap","genefilter","topGO","rmarkdown","ggplot2")

  # for the live interactive session
  if(newestR)
    biocLite("pcaExplorer")
  else
    devtools::install_github("federicomarini/pcaExplorer")

  ## optional!
  # biocLite("BSgenome.Mmusculus.UCSC.mm10")

  # library("GenomicRanges")
  # library("TxDb.Mmusculus.UCSC.mm10.knownGene")
  # library("BSgenome.Mmusculus.UCSC.mm10")
  # library("airway")
  # library("DESeq2")
  # library("gplots")
  # library("pheatmap")
  # library("pcaExplorer")
  # library("ggplot2")
  # library("genefilter")
  # library("rbioc2016")
  # library("topGO")
  # library("rmarkdown")
}

