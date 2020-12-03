maxvals<-c()
counters<-c()
starts<-c()
for (i in 1:1000) {
	N=as.integer(i)
	counter=1
	maxval=0
	while (N!=1) {
###cat(N,"\n")
		if (N%%2==0) {
			N<-N/2
		} else {
			N<-N*3+1
		}
		counter<-counter+1
		if (N>maxval) {
			maxval=N
		}
	}
	maxvals[i]=maxval
	counters[i]=counter
	starts[i]=i
	cat(i,counter,"\n")
}
plot(counters~starts, type="p", col="violetred", ylab="Starting value", xlab="Stopping time")
plot(maxvals~starts,type="p", col="steelblue4", ylab="Max values", xlab="Starting values")