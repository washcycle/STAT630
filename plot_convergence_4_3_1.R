## Plots convergence in probability


fplot <- function(n){
    x1 = 5.0
    x2 = 7.0
    x3 = 7.0 + 1/n^2
    
    xinfty = 20
    
    s1 <- seq(0,x1,by=0.1)
    s1 <- seq(5,7,by=0.1)
    
    s3 <- seq(7+1/n,xinfty,by=0.1)
    
    # create blank canvas for plotting 
    plot(s3, type='n', xlim = c(0,xinfty), ylim = c(0,1), 
         xlab="", ylab = "", 
         cex.lab=0.75, cex.axis = 0.75, 
         main = paste("n=",(bquote(.(n)))))
    
    # plot ploygon where Z = Zn
    x <- c(0,0,x2,x2)
    polygon(x, c(0,1,1,0), density = 5, col = 'blue')
    
    # plot ploygon where Z - Zn != 1
    x <- c(x2,x2,x3,x3)
    polygon(x, c(0,1,1,0), density = 5, col = 'red', angle = -45)
    
    # plot ploygon where Z = Zn again
    x <- c(x3,x3,xinfty,xinfty)
    polygon(x, c(0,1,1,0), density = 5, col = 'blue')
    
    legend(x = 10, y = 0.8, legend = c(expression("Z != Zn"), expression("Z = Zn")), col = c("red", "blue"), angle = c(45,-45), pch="", lwd=c(1,1))
}

par(mfrow=c(2,2), mar=c(3.4,3.4,3.4,3.4), oma=c(0,0,0,0))
fplot(0.5)
fplot(0.75)
fplot(1)
fplot(5)
par(mfrow=c(1,1))
