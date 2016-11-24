---
layout: article
title: 'EvoMath 1: The Hardy-Weinberg Principle'
date: '2004-04-04 13:00:00 -0700'
author: Reed A. Cartwright
mt_id: 43
blog_id: 2
post_id: 43
basename: evomath_1_the_h_1
---
The Hardy-Weinberg Principle states that a population satisfying certain primary conditions will not evolve.  This result is very important because any departure from these conditions will result in an evolving population.  Three scientists in the early 20th century (G.H Hardy, Wilhelm Weinberg, and W.E. Castle) independently discovered this principle which is now used as the null model of population biology.

Consider a group of interbreeding organisms (a population). . .

# Initial assumptions about the population:

In order to construct any model, assumptions need to be made.  These establish the "world" in which the model exists.  How applicable the model is to the real world depends on how well the assumptions reflect reality.  With this in mind we will make the following assumptions to establish the theoretical conditions for the model.

Primary:


* Random mating (panmixia)
* Random union of gametes (Mendelian inheritance)
* The size of the population is infinite.
* No Migration
* No Mutation
* No Selection


Secondary:


* Diploid
* Sexual, hermaphroditic (no difference between males and females)
* Nonoverlapping generations
* The gene under consideration has two forms (alleles). (_A_ and _a_)
* The gene is not on a sex chromosome.


# Some Quick Definitions:


* **Allele:** an alternate form of a gene
* **Chromosome:** a long molecule of double stranded DNA that is associated with proteins and contains many genes
* **Evolution:** the change in heritable characteristics of a group of organisms over time
* **Gene:** a segment of DNA responsible for producing an RNA transcript
* **Genotype:** the genetic constitution of an individual
* **Locus:** the place on a chromosome where a particular gene is located
* **Migration:** movement of genes from one population to another
* **Mutation:** a change in an organism's genetic constitution
* **Phenotype:** the physiological traits of an individual
* **Population:** a group of interbreeding organisms
* **Selection:** the process where different alleles have different effects on the ability of an organism to produce offspring


# Allele Frequencies:

There are two alleles in the population: _A_ and _a_.  Let the frequency of the _A_ allele be represented by $$p$$ and the frequency of the _a_ allele be represented by $$q$$. Note: $$p+q=1$$.

# Genotype Frequencies:

Let $$P$$, $$H$$, and $$Q$$ represent the genotype frequencies _AA_, _Aa_, _aa_ respectively in the parental population and $$P^\prime$$, $$H^\prime$$, and $$Q^\prime$$ represent the genotype frequencies in the daughter population.  At Hardy-Weinberg equilibrium the frequency of the genotypes will be related to the allele frequencies as follows.


|**Genotype**|**Frequency**
|_AA_|$$P = P^\prime = p^2$$
|_Aa_|$$H = H^\prime = 2pq$$
|_aa_|$$Q = Q^\prime = q^2$$



# Rationale:

Each individual in the population has two alleles.  Homozygous individuals have two identical alleles; heterozygous individuals have one copy of each allele.  Using these facts we can determine allele frequencies as the ratio of the number of each allele over the total number of alleles in the population.  But first, to simplify things let $$N$$ be the number of individuals in a population, which means that the number of _AA_ individuals is $$PN$$, the number of _Aa_ individuals is $$HN$$, and the number of _aa_ individuals is $$QN$$.  Then the allele frequencies can be calculated from counts of individuals as follows.

$$p = \frac{2PN + HN}{2N} = \frac{2P + H}{2} =  P + \frac{H}{2}$$

$$q = \frac{2QN + HN}{2N} = \frac{2Q + H}{2} = Q + \frac{H}{2}$$

Note: $$p + q = P + H + Q = 1$$.

Because mating is random, the frequency of a mating is the frequency of the genotype of the first parent multiplied by the frequency of the genotype of the second.  For example, the probability that an _AA_ individual and an _aa_ individual mate with one another is

$$\begin{split}
\Pr\left\{AA \, \& \, aa\right\} &= \Pr\left\{\mbox{mom} = AA \,\&\, \mbox{dad} = aa \right\} + \Pr\left\{\mbox{dad} = aa\,\&\,\mbox{mom} = AA\right\} \\
&= PQ + PQ = 2PQ
\end{split}$$

Because random union of gametes (Mendelian inheritance) is occurring, the genotype of an offspring is derived by randomly choosing one allele from each parent.  _AA_ individuals will always produce _A_ gametes, _aa_ individuals will always produce _a_ gametes, and   _Aa_ individuals will always produce both _A_ gametes and _a_ gametes in a 50:50 ratio.  It is easy to see that an _AA_ x _aa_ mating will always produce _Aa_ offspring.  These frequencies can be calculated likewise for each of the six possible matings, and the results are displayed in the table below.


|**Mating**|**Freq**|**Offspring**
|**_AA_**|**_Aa_**|**_aa_**
|**_AA_ x _AA_** |$$P^2$$ |1.0|0.0|0.0
|**_AA_ x _Aa_** |$$2PH$$ |0.5|0.5|0.0
|**_AA_ x _aa_** |$$2PQ$$ |0.0|1.0|0.0
|**_Aa_ x _Aa_** |$$H^2$$ |0.25|0.5|0.25
|**_Aa_ x _aa_** |$$2HQ$$ |0.0|0.5|0.5
|**_aa_ x _aa_** |$$Q^2$$ |0.0|0.0|1.0
 |**Total**|1.0|$$P^\prime$$|$$H^\prime$$|$$Q^\prime$$



# Therefore:

Using this table, we can calculate the genotype frequencies in the next generation as the average of the proportion of offspring of each genotype that each mating produces, weighted by the frequency of the mating.

$$\begin{split}
P^\prime &= 1.0 \times P^2 +0.5\times 2PH + 0.25\times H^2 = \left(P + \frac{H}{2}\right)^2 = p^2 \\
H^\prime &= 0.5 \times 2PQ + 1.0 \times 2PQ + 0.5 \times H^2 + 0.5 \times 2HQ  = 2\left(P+\frac{H}{2}\right)\left(Q+\frac{H}{2}\right) = 2pq \\
Q^\prime &= 0.25 \times H^2 + 0.5 \times 2HQ + 1.0 \times Q^2 = \left(Q+\frac{H}{2}\right)^2 = q^2\end{split}$$

# Equilibrium:

The process of reproduction described above does not affect the allele frequency in the population: $$p^\prime = \frac{2P^\prime+H^\prime}{2}=\frac{2p^2+2pq}{2} = p$$.  Because the allele frequency does not change from one generation to the next, the population is considered to be at "equilibrium" with respect to its alleles.  The only things that have changed in the population are the frequencies of genotypes, and that only happens if they are not already at $$\left\{p^2, 2pq, q^2\right\}$$.  After the first round of reproduction, the genotype frequencies also reach equilibrium.

# Significance:

A population satisfying the initial assumptions does not evolve after the first generation.  The allele frequencies never change, and the genotype frequencies only change in the first breeding cycle to the equilibrium distribution of $$\left\{p^2, 2pq, q^2\right\}$$.  This is significant because, before the Hardy-Weinberg principle was proved, it was argued by some biologists that a gene will go extinct unless it was actively selected for.  In fact the opposite is true; in the absence of evolutionary forces, alleles will be maintained at their present frequencies.

This result can be shown to be consistent when the secondary assumptions are changed, i.e. there is an analogous principle for multiallelic, continuous, and/or polyploid populations.  Although populations that violate the primary conditions will technically evolve, in many instances these violations can be so slight that the rate of evolution is not significantly different than zero.  For instance, a very large population might be effectively infinite, and a mutation or migration rate might be so small that it is effectively zero.  The Hardy-Weinberg principle forms the null hypothesis for population biology, and most population-based models of evolution derive from modifying the assumptions of this model.

[Back to EvoMath Introduction.](http://www.pandasthumb.org/pt-archives/000090.html)
