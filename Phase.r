# Phase Plane Example. R-Book.(833-835)

plot(c(0,1),c(0,1),ylab="",xlab="",xaxt="n",yaxt="n",type="n")
abline(0.8,-1.5)
abline(0.6,-0.8,lty=2)

axis(1,at=0.805,lab=expression(1/alpha[21]))
axis(1,at=0.560,lab=expression(1/alpha[11]))

axis(2,at=0.860,lab=expression(1/alpha[12]),las=1)
axis(2,at=0.630,lab=expression(1/alpha[22]),las=1)

text(0.05,0.85,expression(paste(frac("d N"[1],"dt"),"=0")))
text(0.78,0.07,expression(paste(frac("d N"[2],"dt"),"=0")))

arrows(-0.02,0.72,0.05,0.72,length=0.1)
arrows(-0.02,0.72,-0.02,0.65,length=0.1)
arrows(-0.02,0.72,0.05,0.65,length=0.1)

arrows(0.65,-0.02,0.65,0.05,length=0.1)
arrows(0.65,-0.02,0.58,-0.02,length=0.1)
arrows(0.65,-0.02,0.58,0.05,length=0.1)

arrows(0.15,0.25,0.15,0.32,length=0.1)
arrows(0.15,0.25,0.22,0.25,length=0.1)
arrows(0.15,0.25,0.22,0.32,length=0.1)

arrows(0.42,0.53,0.42,0.46,length=0.1)
arrows(0.42,0.53,0.35,0.53,length=0.1)
arrows(0.42,0.53,0.35,0.46,length=0.1)

axis(1,at=1,lab=expression(N[1]))
axis(2,at=1,lab=expression(N[2]),las=1)
