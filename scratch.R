## day2 scratch

mygr <- GRanges(c(rep("chr1",5),rep("chr2",5)),
                ranges = IRanges(start = 1:10, 
                                 end = 7:16, 
                                 names = head(letters, 10)),
                strand = Rle(strand(c("-", "+", "*", "+", "-")),
                             c(1, 2, 2, 3, 2)),
                score = 1:10,
                GC = seq(1, 0, length=10))




mygenes <- genes(tdb)
set.seed(42)
affectedgenes_id <- sample(x = 1:20000, 300)
affectedgenes <- mygenes[affectedgenes_id]
# where are your promoters?!
affectedpromoters <- promoters(affectedgenes)
width(affectedpromoters)
biocLite("BSgenome.Mmusculus.UCSC.mm10")
library("BSgenome.Mmusculus.UCSC.mm10")
Mmusculus
affectedpromoterseqs <- getSeq(Mmusculus,affectedpromoters)
affectedpromoterseqs
writeXStringSet(affectedpromoterseqs,"affectedpromoterseqs.fasta",width = 50)




mycm <- read.table(system.file("extdata","counts_matrix.csv",package="rbioc2016"),sep=",")
mydesign <- read.table(system.file("extdata","design_matrix.tsv",package="rbioc2016"),sep="\t")



