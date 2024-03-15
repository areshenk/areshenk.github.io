library(plot3D)
library(RColorBrewer)

R <- 3
r <- 1.5
M <- mesh(seq(0, 2*pi,length.out=200), 
          seq(0, 2*pi,length.out=200))

alpha <- M$x
beta <- M$y

x <- (R + r*cos(alpha)) * cos(beta)
y <- (R + r*cos(alpha)) * sin(beta)
z <-  r * sin(alpha)

ProbFun <- function(x, y) {
    e1 <- 1 - complex(modulus = 1, argument = x)
    e2 <- 1 - complex(modulus = 1, argument = y)
    log(Mod((1 - e1 - e2) - (1 - e1) * (1 - e2) * .25)^2)
}

p <- apply(abind::abind(x, y, along = 3), c(1,2), function(i) ProbFun(i[1], i[2]))

surf3D(x = x, y = y, z = z, colkey=TRUE, colvar = p, 
       phi = 70, theta = 30, main="",
       col = rev(brewer.pal(11, 'RdBu')[-c(1:2)]))
