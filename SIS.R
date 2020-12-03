alpham<-0.000006
alphaf<-0.0000009
gammam<-0.05
gammaf<-0.007
Sm<-14000
Sf<-9000
Im<-1000
If<-1000
Sm.hist<-c()
Im.hist<-c()
Sf.hist<-c()
If.hist<-c()
for (day in 1:2000) {
    Sm.hist[day]<-Sm
    Im.hist[day]<-Im
    Sf.hist[day]<-Sf
    If.hist[day]<-If
    delta.Sm<-(gammam*Im-alpham*Sm*If)
    delta.Im<-(alpham*Sm*If-gammam*Im)
    delta.Sf<-(gammaf*If-alphaf*Sf*Im)
    delta.If<-(alphaf*Sf*Im-gammaf*If)
    Sm<-Sm+delta.Sm
    Im<-Im+delta.Im
    Sf<-Sf+delta.Sf
    If<-If+delta.If
    ## Ensure S,I,R > 0
    Sm<-max(Sm,0) 
    Im<-max(Im,0)
    Sf<-max(Sf,0)
    If<-max(If,0)
}


plot(Im.hist,type="l",ylab="Population of infected", xlab="Time",main="SIS Model")
lines(If.hist,col=2)


