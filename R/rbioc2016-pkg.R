#' rbioc2016 - datasets used in the course and other extra material
#'
#' rbioc2016 contains the following datasets
#'
#'
#' @author
#' Federico Marini \email{marinif@@uni-mainz.de}, 2016
#'
#' Maintainer: Federico Marini \email{marinif@@uni-mainz.de}
#' @name rbioc2016
#' @docType package
NULL




#' The results of the pre-course survey
#'
#' The results of the pre-course survey, arranged in a \code{data.frame} object. This object contains
#' 20 responses to 7 questions.
#'
#' The following questions were asked to the participants:
#' \itemize{
#'  \item{Q1: How old are you? Continuous value}
#'  \item{Q2: What is you current academic level Categorical variable; choices: PI/Professor/Group leader or similar,
#'  Postdoc,PhD student,Master student/else}
#'  \item{Q3: What is your current knowledge level of R? Categorical variable; choices: pro,good,intermediate,poor,none}
#'  \item{Q4: What is your knowledge of programming languages in general? Categorical variable; choices: pro,good,intermediate,poor,none}
#'  \item{Q5: What is your experience level with genomics and RNA-seq data? Categorical variable; choices: pro,good,intermediate,poor,genoWhat?}
#'  \item{Q6: How familiar are you with mogon and parallel computing? Categorical variable; choices: I am a regular user,Once in a while i used it,I know it exists,I heard we had some servers around,Is this supposed to be in the cloud?!}
#'  \item{Q7: What are your expectations from the course? Free text input}
#' }
#'
#' @author Federico Marini, \email{marinif@@uni-mainz.de}, 2016
#' @name surveyrbioc
#' @docType data
NULL




#' RNA-seq from microglia cells
#'
#' The \code{SummarizedExperiment} object for Bruttger et al, Immunity 2015. Three condition were assessed, namely bone marrow macrophages, wild type microglia, and repopulating microglia (GEO accession: GSE68376)
#'
#' Read counts per gene for the RNA-seq experiment experiment performed in PMID: 26163371.
#' Interleukin-1 signaling is involved in local self-renewal and maintenance of microglia.
#' During early embryogenesis microglia arise from yolk sac progenitors populating the developing CNS, where they are maintained as tissue-resident macrophages throughout the organism's lifespan.
#' Here, we describe an experimental system that allows the specific conditional ablation of microglia in vivo.
#' Strikingly, we found that the microglia compartment was reconstituted within one week following depletion. Microglia repopulation relied entirely on a CNS-resident, internal pool and was independent from bone marrow-derived precursors.
#' Newly formed microglia were found in highly proliferative, organized micro-clusters that dissolve once steady state was achieved. Gene expression profiling revealed prominent expression of Interleukin-1 (IL-1) receptor in proliferating microglia.
#' During the repopulation phase, IL-1 signaling was neutralized by treatment with IL-1 receptor antagonist that impaired microglia proliferation. Hence, microglia harbor a highly efficient potential to restore themselves without contribution of peripheral myeloid cells.
#' IL-1 signaling significantly participates in this restorative proliferation process and is involved in stabilizing microglia maintenance.
#'
#' @references Bruttger J, Karram K, Woertge S, Regen T, Marini F, Hoppmann N, Klein M, Blank T, Yona S, Wolf Y, Mack M, Pinteaux E, Mueller W, Zipp F, Binder H, Bopp T, Prinz M, Jung S, Waisman A. Genetic Cell Ablation Reveals Clusters of Local Self-Renewing Microglia in the Mammalian Central Nervous System. Immunity. 2015 Jul 21;43(1):92-106. doi: 10.1016/j.immuni.2015.06.012. Epub 2015 Jul 7. PMID: 26163371. GEO: GSE68376
#'
#' @author Federico Marini (\email{marinif@@uni-mainz.de}),
#' Julia Bruttger, 2016
#' @name dds_microglia
#' @docType data
NULL



#' A list of microglia signature genes
#'
#' A curated list of microglia signature genes, extracted from Butovsky et al (2014). Housekeeping genes were left out.
#' This list is represented on the MG400 microglial chip
#'
#'
#' @references Oleg Butovsky, Mark P Jedrychowski,	Craig S Moore, Ron Cialic,	Amanda J Lanser, Galina Gabriely,	Thomas Koeglsperger,	Ben Dake,	Pauline M Wu,	Camille E Doykan,	Zain Fanek,	LiPing Liu,	Zhuoxun Chen,	Jeffrey D Rothstein, Richard M Ransohoff, Steven P Gygi,	Jack P Antel, Howard L Weiner, Identification of a unique TGF-beta-dependent molecular and functional signature in microglia, Nature Neuroscience 17, 131-143 (2014)
#'
#' @author Federico Marini (\email{marinif@@uni-mainz.de})
#' @name mg400signatureGenes
#' @docType data
NULL

#' A subset of a list of microglia signature genes, split by location/function
#'
#' A subset of a list of microglia signature genes, split by location/function, extracted from Butovsky et al (2014). Housekeeping genes were left out.
#'
#'
#' @references Oleg Butovsky, Mark P Jedrychowski,	Craig S Moore, Ron Cialic,	Amanda J Lanser, Galina Gabriely,	Thomas Koeglsperger,	Ben Dake,	Pauline M Wu,	Camille E Doykan,	Zain Fanek,	LiPing Liu,	Zhuoxun Chen,	Jeffrey D Rothstein, Richard M Ransohoff, Steven P Gygi,	Jack P Antel, Howard L Weiner, Identification of a unique TGF-beta-dependent molecular and functional signature in microglia, Nature Neuroscience 17, 131-143 (2014)
#'
#' @author Federico Marini (\email{marinif@@uni-mainz.de})
#' @name mg400bylocation
#' @docType data
NULL

