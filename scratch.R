## day2 scratch

mygr <- GRanges(c(rep("chr1",5),rep("chr2",5)),
                ranges = IRanges(start = 1:10, 
                                 end = 7:16, 
                                 names = head(letters, 10)),
                strand = Rle(strand(c("-", "+", "*", "+", "-")),
                             c(1, 2, 2, 3, 2)),
                score = 1:10,
                GC = seq(1, 0, length=10))

