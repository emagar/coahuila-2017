y <- 1900+c(16,17,18,20,22,24,26,28,30,32,34)
yord <- 1:length(y)
r <- c(NA,18,25,15,26,25,30,40,42,27,0)
rspace <- r*1.025

pdf(file = "hist.pdf", width = 10)
plot(yord,rspace, ylab = "", xlab = "", type = "n", axes = FALSE, main = "% returning deputies")
axis(1, at=yord, col = 0, labels = c(1916, paste0("'", c(17,seq(18,34,2)))), padj = -2)
for (i in 1:length(y)){
    polygon(x = yord[i]+c(-.33,-.33,.33,.33),
            y = c(0,r[i],r[i],0), col = "gray")
    text(yord[i], r[i], labels = paste0(r[i],"%"), pos = 3)
}
text(yord[1], 12, labels = "Constitutional Congress", col = "gray", srt = 90, cex = 1)
text(yord[9], 13, labels = "Congress size nearly halved", col = "white", srt = 90, cex = 1)
text(yord[11], 13, labels = "Single-term limits effective", col = "gray", srt = 90, cex = 1)
dev.off()

hist(rep(y,r))
