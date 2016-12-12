mu = 0.99
step = rt(10000, 1.1)
z = rep(0,10000)
xz = 0
for (i in 1:10000) {
  z[i] = mu*xz + step[i]
  xz = z[i]
}
pdf('filtered-step.pdf', height='3', width='4', pointsize=16)
plot(cumsum(step), type='l', xaxt='n', ylab='m', xlab=NA, col=rgb(0,0,0,alpha=0.5))
lines(z, col=rgb(1,0,0,alpha=0.7),lwd=2)
dev.off()
