---
layout: article
title: A quick explanation of Wasserstein Metric
date: '2004-08-12 18:26:33 -0700'
author: PvM
mt_id: 381
blog_id: 2
post_id: 381
basename: a_quick_explana
---
**Note that Dembski has uploaded a [revised manuscript](http://www.designinference.com/documents/2004.08.Variational_Information.pdf) which now correctly attributes the measure to Renyi and thanks the many critics for their contributions**

I am not a mathematician but let me give it a try and others can amend and revise my comments.

The Kantorovich/Wasserstein distance metric is also known under such names as the Dudley, Fortet Mourier, Mallows and is defined as follows.

$$d_p(F,G) = \overset{\inf}{\tau_{x,y}} \lbrace E |x-y|^{\frac{1}{p}} \rbrace$$

where $$E(x)$$ refers to the expectation of the random variable x and $$\inf$$ means that the minimum is sought on all random variables X which take a distribution F and random variables Y which take a distribution G.

where $$\tau_{x,y}$$ is the set of all joint distributions of random variables X and Y whose marginal distributions are F and G. 

These metrics define a 'distance' between two stochastic distributions and are one of many such metrics that have been mathematically defined. There is a good paper on many of these metrics [On Choosing and Bounding Probability Metrics](http://www.math.hmc.edu/~su/papers.dir/metrics.pdf).  Different circumstances ask for different distance metrics.

These metrics have found applicability in non-linear equations,  variational approaches to entropy dissipation, [Phase transitions and symmetry breaking in singular diffusion](http://www.pnas.org/cgi/content/full/100/12/6922), random walks, Markov processes and many more. Needless to say these metrics are quite commonly applied in a variety of applications. Applications of this metric to Markov processes may be of interest to evolutionary theory.

Adapted from [Central Limit Theorem and convergence to stable laws in Mallows distance](http://www.statslab.cam.ac.uk/Reports/2004/2004-04.pdf)

Another way of looking at this is by assuming one has two samples X and Y of the same size $$X=\lbrace x_1,...,x_n \rbrace$$ and $$Y=\lbrace y_1,...,y_n \rbrace$$. The Mallows distance between empirical distributions is

$$d_p(X,Y)= ( \frac{1}{n} \overset{min}{(j_1,...,j_n)} \sum_{i=1}^{n} \lvert x_i - y_i \rvert   )^\frac{1}{p}$$

where the minimum is taken over all possible permutations of $$\lbrace 1, ..., n \rbrace$$

Rachev, S. T. (1984), The Monge-Kantorovich problem on mass transfer and
its applications in stochastics, Theor. Probab. Appl., 29, 647-676. 

As far as some interesting applications are concerned

[Minimal Entropy Probability Paths Between Genome Families](http://www.math.missouri.edu/~calvin/entropyfiles/ABC.pdf)
