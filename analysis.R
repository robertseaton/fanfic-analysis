library("ggplot2")

options(scipen=999)
dat = read.csv("data.csv")
dat$RATIO = dat$COMPRESSED / dat$UNCOMPRESSED
qplot(y = dat$RATIO, x = dat$UNCOMPRESSED, xlab="Uncompressed size.", ylab="Compression ratio.", color=dat$CLASS)
ggplot(dat, aes(x = dat$RATIO, fill=dat$CLASS), xlab="Compressibility.") + geom_dotplot()
t.test(dat$RATIO~dat$CLASS)
