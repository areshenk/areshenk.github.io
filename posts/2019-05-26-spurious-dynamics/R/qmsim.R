library(ggplot2)
library(patchwork)
library(RColorBrewer)

FunCM <- function(u, r) {
  z <- r*u
  p <- exp(z) / (exp(z) + 3)
  return(log(p) - log(.25))
}

FunQM <- function(u, eta, b1, b2) {
  
  psi <- c(pi * (u * cos(pi*eta) + b1),
           pi * (u * sin(pi*eta) + b2))

  p <- (1 - complex(modulus = 1, argument = psi[1]) - complex(modulus = 1, argument = psi[2])) -
       (1 - complex(modulus = 1, argument = psi[1]))*(1 - complex(modulus = 1, argument = psi[2]))*.25
  R <- Mod(p)^2
  return(log(R))
}

pars.cm <- expand.grid('u' = seq(-2.5, 2.5, by = .2),
                       'r' = seq(.05, .9, by = .1))
pars.qm <- expand.grid('u' = seq(-.3, .5, .01),
                       'eta' = seq(-.1, .4, by = .05))

pars.cm$Ratio <- sapply(1:nrow(pars.cm), function(i) FunCM(pars.cm$u[i], pars.cm$r[i]))
pars.qm$Ratio <- sapply(1:nrow(pars.qm), function(i) 
  FunQM(pars.qm$u[i], pars.qm$eta[i], -.2, .3))
pars.qm$Psi1 <- sapply(1:nrow(pars.qm), function(i) pi * (pars.qm$u[i] * cos(pi*pars.qm$eta[i]) + -.2))
pars.qm$Psi2 <- sapply(1:nrow(pars.qm), function(i) pi * (pars.qm$u[i] * sin(pi*pars.qm$eta[i]) + .3))
pars.qm$Ratio <- sapply(1:nrow(pars.qm), function(i) {
  psi <- c(pars.qm$Psi1[i], pars.qm$Psi2[i])
  u <- pars.qm$u[i]
  p <- (1 - complex(modulus = 1, argument = psi[1]) - complex(modulus = 1, argument = psi[2])) -
    (1 - complex(modulus = 1, argument = psi[1]))*(1 - complex(modulus = 1, argument = psi[2]))*.25
  R <- Mod(p)^2
  return(log(R))
})


pars.grid <- expand.grid('Psi1' = seq(-pi, pi, .02),
                         'Psi2' = seq(0, pi, .02))
FunGRID <- function(psi1, psi2) {
  
  psi <- c(psi1, psi2)
  
  p <- (1 - complex(modulus = 1, argument = psi[1]) - complex(modulus = 1, argument = psi[2])) -
    (1 - complex(modulus = 1, argument = psi[1]))*(1 - complex(modulus = 1, argument = psi[2]))*.25
  R <- Mod(p)^2
  return(log(R))
}
pars.grid$Ratio <- sapply(1:nrow(pars.grid), function(i) FunGRID(pars.grid$Psi1[i], pars.grid$Psi2[i]))


png(filename = 'content/blog/2024-01-11-quantum-brain-somethingorother/img/cm_logodds.png', width = 480, height = 370)
ggplot(pars.cm, aes(x = u, y = Ratio, group = r, color = r)) +
  theme_minimal(base_size = 23) + geom_line(size = 1.25) +
  xlab('Utility') + ylab('Log-odds of selection') + 
  scale_colour_distiller(palette = "RdYlBu")
dev.off()

png(filename = 'content/blog/2024-01-11-quantum-brain-somethingorother/img/cm_logodds.png', width = 480, height = 370)
p.curve <- ggplot(pars.qm, aes(x = u, y = Ratio, group = eta, color = eta)) +
  theme_minimal(base_size = 23) + geom_line(size = 1.25) +
  geom_point(data = data.frame(u = 0, Ratio = -1, eta = 0),
             aes(x = u, y = Ratio), size = 4, color = 'black') +
  xlab('Utility') + ylab('Log-odds of selection') + 
  scale_colour_distiller(palette = "PiYG")
dev.off()

png(filename = 'content/blog/2024-01-11-quantum-brain-somethingorother/img/qm_logodds_oscilate.png', width = 480, height = 370)
p.grad <- ggplot(pars.grid, aes(x = Psi1, y = Psi2, fill = Ratio)) +
  theme_minimal(base_size = 23) + geom_tile() +
  xlab(bquote(psi[1])) + ylab(bquote(psi[2])) +
  geom_line(data = pars.qm, aes(x = Psi1, y = Psi2, group = eta, color = eta)) +
  geom_point(data = data.frame(Psi1 = pi * (-.2), Psi2 = pi * (.3), Ratio = 0), 
             aes(x = Psi1, y = Psi2), size = 4) +
  scale_colour_distiller(bquote(eta), palette = "PiYG") +
  scale_fill_gradient2('Log-odds',
                       low = 'blue', mid = 'white', 
                       high = 'red', midpoint = 0) +
  theme(legend.position = 'none')
dev.off()

png(filename = 'content/blog/2024-01-11-quantum-brain-somethingorother/img/qm_logodds_example4.png', width = 800, height = 370)
p.grad + p.curve + plot_layout(widths = c(2, 1))
dev.off()
