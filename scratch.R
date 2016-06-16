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










mycm2 <- mycm
mylibs <- colSums(mycm2)/1e6
mycm2 <- mycm2/mylibs # "counts per million" 
for (i in unique(mydesign$condition)){
  print(i)
  mycm2[[paste0(i,"_avg")]] <- rowMeans(mycm2[,which(i==mydesign$condition)])
}
# let's take mono VS ctrl
plot(mycm2$mono_avg,mycm2$ctrl_avg,pch=16,log="xy")
mycm2$avg_monoctrl <- rowMeans(mycm2[,c("mono_avg","ctrl_avg")])
mycm2$log2ratio_monoctrl <- log2(mycm2$mono_avg/mycm2$ctrl_avg)
plot(mycm2$avg_monoctrl,mycm2$log2ratio_monoctrl,pch=16,log="x")
abline(h=0, col="grey")
abline(h=1, col="steelblue")
abline(h=-1, col="steelblue")
sum(abs(mycm2$log2ratio_monoctrl) >= 1,na.rm=TRUE)







library(rbioc2016)
library(DESeq2)
library(pcaExplorer)
data("dds_microglia")
dds_microglia
dds_microglia <- DESeq(dds_microglia)
rld_microglia <- rlog(dds_microglia)
resu_monoctrl <- results(dds_microglia,contrast = c("condition","mono","ctrl"))
head(resu_monoctrl)





plot(-log10(pvalue) ~ log2FoldChange, myresu, pch=20,
     main="best eruction so far!",ylim=c(0,30))
     
with(subset(myresu, padj < 0.05), points(log2FoldChange, -log10(pvalue), col = "red"))


with(subset(myresu, abs(log2FoldChange) > 1), points(log2FoldChange, -log10(pvalue), 
    col = "orange"))


with(subset(myresu, padj < 0.05 & abs(log2FoldChange) > 1), points(log2FoldChange, 
    -log10(pvalue), col = "green"))
# Add legend
legend("topright", legend = c("FDR<0.05", "|LFC|>1", "both"), pch = 16, col = c("red", 
    "orange", "green"))





library(ggplot2)
ggplotCounts <- function(dds,gene,intgroup="condition",log=TRUE,...){
  df <- plotCounts(dds,gene,intgroup,returnData = T,...)
  # genesymbol <- cm2$fromgtf[match(gene,rownames(cm2))]
  genesymbol <- ""
  p <- ggplot(df,aes(x=condition,y=count,col=condition)) + 
    geom_boxplot(outlier.shape = NA) + 
    labs(title=paste0("Normalized counts for ",genesymbol," - ",gene)) + 
    scale_x_discrete(name="") +
    geom_jitter(aes(x=condition,y=count),position = position_jitter(width = 0.1)) + 
    scale_color_discrete(name="Experimental\nconditions")

  if(log) 
    p <- p + scale_y_log10(name="Normalized counts - log10 scale",limits=c(1,NA))
  else 
    p <- p + scale_y_continuous(name="Normalized counts",limits=c(1,NA))
  p
}

