

table <- read.csv("~/Git/BubbleRose/AS_PS_Demo.csv", sep=";", dec=",", header=T)
library(ggplot2)


png(file="AS_ICER.png",width=900,height=620)
# x=ICER, y=AS, size=Budsjett
ggplot(table, aes(x=ICER, y=AS, label=Name, legend=FALSE, group=Budsjett))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="black", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=Budsjett),colour="black", fill="green", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)#,position=position_jitter(height=0.3))
  #theme_bw() # Hvit bakgrund
dev.off()

png(file="PS_ICER.png",width=900,height=620)
# x=ICER, y=PS, size=Budsjett
ggplot(table, aes(x=ICER, y=PS, label=Name, legend=FALSE, group=Budsjett))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="red", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=Budsjett),colour="black", fill="green", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)
  #theme_bw() # Hvit bakgrund
dev.off()



png(file="AS_Budsjett.png",width=900,height=620)
# x=Budsjett, y=AS, size=ICER
ggplot(table, aes(x=Budsjett, y=AS, label=Name, legend=FALSE, group=ICER))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="black", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=ICER),colour="black", fill="green", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)
  #theme_bw() # Hvit bakgrund
dev.off()

png(file="PS_Budsjett.png",width=900,height=620)
# x=Budsjett, y=PS, size=ICER
ggplot(table, aes(x=Budsjett, y=PS, label=Name, legend=FALSE, group=ICER))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="black", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=ICER),colour="black", fill="green", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)
  #theme_bw() # Hvit bakgrund
dev.off()



png(file="AS_PS_ICER.png",width=900,height=620)
# x=Budsjett, y=AS, size=ICER
ggplot(table, aes(x=AS, y=PS, label=Name, legend=FALSE, group=ICER))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="black", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=ICER),colour="black", fill="yellow", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)
#theme_bw() # Hvit bakgrund
dev.off()

png(file="AS_PS_Budsjett.png",width=900,height=620)
# x=Budsjett, y=PS, size=ICER
ggplot(table, aes(x=AS, y=PS, label=Name, legend=FALSE, group=Budsjett))+
  geom_vline(xintercept=0, color="blue",alpha=0.5)+
  geom_hline(yintercept=0, color="blue",alpha=0.5)+
  geom_point(size=20,colour="black", fill="gray", alpha=0.3, shape=1)+
  geom_point(aes(size=Budsjett),colour="black", fill="blue", shape=21)+
  geom_text(size=4, hjust=-0.3, vjust=-0.4)
#theme_bw() # Hvit bakgrund
dev.off()
