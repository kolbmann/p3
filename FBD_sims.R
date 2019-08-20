set.seed(1)
library("FossilSim", lib.loc="~/R/win-library/3.4")
library("TreeSim", lib.loc="~/R/win-library/3.4")
age = 180
numbsim = 2
data <- read.delim("../TH_rates.txt")
lambda = data[2,11]
mu = data[2,7]
n = 756
age_tree <- sim.bd.age(age, numbsim, lambda, mu)
plot(age_tree[[1]])
taxa_tree <- sim.bd.taxa(n, numbsim, lambda, mu)
plot(taxa_tree[[1]])
aged_taxa_tree <- sim.bd.taxa.age(n, numbsim, lambda, mu, frac = 1, age)
plot(aged_taxa_tree[[1]])
age_FBD_tree <- sim.fbd.age(age, numbsim, lambda, mu)
plot(age_FBD_tree[[1]])
taxa_FBD_tree <- sim.fbd.taxa(n, numbsim, lambda, mu, psi = data[2,10])
plot(taxa_FBD_tree[[1]])