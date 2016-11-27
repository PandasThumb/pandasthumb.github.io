---
layout: article
title: 'The Rise of Human Chromosome 2:  Fixation Within a Deme'
date: '2009-05-19 10:27:28 -0700'
author: Arthur Hunt
mt_id: 4273
blog_id: 2
post_id: 4273
basename: the_rise_of_hum_2
---
**This essay is the third of a series authored by Dave Wisker, Graduate Student in Molecular Ecology at the University of Central Missouri.**

In previous essays in this series, I have discussed two issues with the fusion that resulted in human chromosome 2: its dicentric nature, and the fusion's possible effect on fertility. I showed how one extra centromere may not result in inevitable damage to the chromosome during meiosis and mitosis, and demonstrated that the fusion did not necessarily have to result in greatly decreased fertility. Either of those situations would have effectively prevented the fusion from rising in frequency and eventually becoming fixed in the human population. We are now in the position to consider the probability of such a fusion becoming fixed. This essay will examine the fixation probability of the fusion in a small subpopulation, or deme.

The first order of business is to get a better idea of what actual effect the chromosome fusion may have had on fertility. Even though some fusions are known to have little, if any, effect, the fact is many do decrease fitness to some extent.  Lande (1979) was of the opinion that fusions which resulted in metacentric chromosomes with arms that were roughly equal in size would not greatly reduce fertility in heterozygotes, and suggested that the heterozygote disadvantage for human chromosome 2 was probably only a few percent for that reason. Bengtsson  (1980) and Bengtsson & Bodmer (1976)  looked at human population karyotype data to estimate the fitness effect of chromosomal rearrangements. They determined the relative frequencies of _de novo_ and inherited chromosomal rearrangements in all human newborns in a particular region in Britain. The ratio of new mutations to those which have been inherited can give an idea of a rearrangement's mean fitness effect. The reasoning is simple. If a rearrangement (like a translocation or fusion) appears in a population and isn't eliminated by drift, then it will exist in most individuals as a heterozygote in the early generations. If the heterozygous state has a drastic effect on fertility, then successfully inherited rearrangements in live born children will be very rare in the population, in roughly the same order of rarity as  those which have newly arisen via mutation. So, for any given chromosomal rearrangement, the ratio of new mutations to the total number (inherited plus new mutations) gives a rough estimate of its mean fitness: the higher the ratio, the lower the fitness. Using this reasoning, Bengtsson (1980) reported that reciprocal translocations showed a 30% average decrease in fitness, but for _fusions_ the average decrease in fitness was only around 10% (and lower in some cases). I will therefore use a 10% heterozygote disadvantage as a plausible value for human chromosome 2 in the subsequent calculations below. 

Several factors can influence the frequency of a chromosomal rearrangement in a population:  


1. Mutation (recurrence of the same rearrangement) 
1. Emigration/immigration (gene flow between populations/demes)
1. Natural selection
1. Genetic Drift
1. Inbreeding
1. Meiotic drive (segregation bias at meiosis)


The head-to-head fusion that resulted in human chromosome 2 is extremely rare, so recurring fusions creating significant mutation pressure can most likely be ruled out.  For the moment, we will also leave aside emigration/immigration, but will return to it later. That leaves: 


1. Natural selection
1. Genetic Drift
1. Inbreeding
1. Meiotic drive (segregation bias at meiosis)


Hedrick (1981), expanding on earlier work by Sewall Wright and others, developed models for the probability of fixation of chromosomal rearrangements in both very large (essentially infinite) and finite (including very small) populations, where there was a heterozygote disadvantage. For the large population model (which renders the effects of genetic drift and inbreeding negligible), he restricted himself to the effects of selection and meiotic drive. 

Meiotic drive is simply a deviation from normal chromosomal segregation frequencies. Under normal segregation, a heterozygote for a chromosome rearrangement will produce 50% of its gametes with the rearrangement, and 50% with the normal karyotype. If there is a bias to segregation, that is, if there is a deviation from 50%, then meiotic drive is said to be occurring.  

Hedrick noted that meiotic drive is rarely present in both sexes, so his model restricted its effect to one sex (females). He represented meiotic drive mathematically this way: 

The heterozygotes for the rearrangement produce _m_  of the rearrangement and 1-_m_ of the normal karyotype in the gametes. In other words, _m_ is the percentage of gametes carrying the fusion. For normal segregation, then, _m_ =0.5. If there is meiotic drive _in favor_ of the fusion, the value of m will be between 0.5 and 1. 

For natural selection, Hedrick used standard population genetics nomenclature. He assigned the two homozygous karyotypes fitnesses of 1, and the heterozygote karyotype a fitness of 1-_s_ (to reflect a heterozygote disadvantage). Those familiar with population genetics will recognize _s_ as the _selection coefficient_, and it reflects the effect on viability and fertility. For the moment, we will not assign any values to _m_ or _s_, but simply see how they affect the frequency of the fusion. In Hedrick's paper, _p_ and _q_ are the frequencies of the normal and the fusion karyotypes, respectively. 

Hedrick went on to derive the equation that defines the conditions for what is called an unstable equilibrium value for _q_. Homozygotes for the fusion have normal   fertility vs. a selective disadvantage for the heterozygote. As the frequency of the fusion rises, the more copies of the fusion there are in the population, which in turn increases the chance of fusion homozygotes being formed. This creates more individuals who can out-reproduce the heterozygotes, and if there are enough of them, the rise in frequency will take on an inertia of its own. There is a critical frequency for the fusion-- _the unstable equilibrium frequency_--which, once exceeded, will allow the fusion to drive to fixation despite selection against the heterozygote. That is, if the unstable equilibrium frequency is exceeded, a tipping point will be reached where the fusion karyotype will _act as if it were under positive selection_. The unstable equilibrium frequency (_q(e)_) depends on both the levels of selection and meiotic drive (_s_ and _m_, respectively) as follows: 

$$q(e)  = \frac{1 + s + 2m(s - 1)}{4s}$$

As an example, if we give the heterozygote a 10% fitness disadvantage (_s_ = 0.1), but keep segregation normal (no meiotic drive, i.e., _m_ = 0.5), we get:

$$q(e) = 0.50$$

This means that the frequency of the fusion has to reach 0.50 before it can achieve the 'momentum' to drive to fixation, even with a relatively low level of selection against the heterozygote. Of course, in a large population, getting to this point is very, very difficult to do. But what happens if we posit a low level of meiotic drive in favor of the fusion (_m_ = 0.6), while keeping the selection against the heterozygote at 0.1? The results are dramatic:

$$q(e) = 0.05 $$

Just a small amount of meiotic drive has lowered the unstable equilibrium point by 90%. The fusion only has to reach a frequency of 0.05 before the combination of forces will automatically drive it to fixation. 

I will leave it as an exercise for the reader to plug in various values of _s_ and _m_. It will soon become clear that moderate to strong selection against the heterozygote will effectively prevent fixation of the fusion in very large populations, regardless of the level of meiotic drive. On the other hand, relatively weak selection can be countered by even moderate meiotic drive.

That is the large, essentially infinite, population model. Of course, in nature, populations are never infinite, and often structured into smaller, locally breeding subpopulations--called _demes_-- with effective population sizes (in many vertebrate species) between 10 and 100 (Wilson, 1975). Presumably, early human or ancestral hominid populations fell under this model, so when we consider the probability of fixation of a chromosomal fusion in early humans, we can assume the fusion arose in a small deme and spread from there. In doing so, however, we have to bring back the two forces we left out when we considered large populations, namely genetic drift and inbreeding. 

Genetic drift is present in all finite populations, regardless of size. It is defined as changes in frequency due to chance variations in reproduction that occur in all organisms. Its main effect is to reduce heterozygosity of a population over time. Since loss of heterozygosity has to be made up by an increase in homozygosity, drift actually increases the probability of fixation of one allele (or chromosomal variant). Drift reduces the heterozygosity by 1/2N per generation. Thus the amount of heterozygosity removed per generation is inversely proportional to the population size: as the population size decreases, the proportion of heterozygosity removed by drift increases. This means the frequency of homozygotes of one allele will also increase over time. Which allele eventually becomes fixed is primarily due to chance, but forces like meiotic drive can influence the outcome for one allele over another, as we shall see later. 

Inbreeding is another force that has a stronger effect in small populations than in large ones. Inbreeding essentially increases the probability that the gene copies on the two chromosomes of an individual are related by descent. Obviously, if close relatives mate, their offspring will have a greater chance of having genes related by descent than those of offspring from distantly related individuals. It should also be clear that in small, isolated demes, the chances of genes being related by descent is higher than in large populations. Like genetic drift, inbreeding also reduces heterozygosity. To actually calculate its effect, however, requires detailed pedigree information, and since we are dealing with prehistoric populations, the chance of getting that is pretty slim. About all we can say is, the degree of inbreeding in small populations is higher than that in large ones.

With the above background, we are now ready to consider the probability of fixation of the fusion in a single deme. 

Getting back to Phil Hedrick's paper (previously cited), he synthesized the effects of drift with natural selection and meiotic drive, and worked out the probabilities of fixation for chromosomal variants with various population sizes, which he summarized in Table 2. Here are some interesting illustrative values: 

Population size: 40 individuals 

_s_: 0.3   _m_: 0.5 (no meiotic drive):  Probability of fixation: 10 -5

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.0002 

_s_: 0.1   _m_: 0.5 (no meiotic drive):  Probability of fixation: 0.00046

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.045

Population size: 20 individuals   

 s: 0.3  _m_: 0.5 (no meiotic drive): Probability of fixation: 0.00008 

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.0015 

_s_: .01  _m_: 0.5 (no meiotic drive): Probability of fixation: 0.0056

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.068

Population size: 10 individuals  

_s_: 0.3      _m_: 0.5 (no meiotic drive): Probability of fixation: 0.0039 

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.017 

_s_: 0.1      _m_: 0.5 (no meiotic drive): Probability of fixation: 0.026

_m_: 0.6 (low level meiotic drive): Probability of fixation: 0.102

It should be clear from these selected values that low values of meiotic drive increase the probability of fixation considerably in small populations, just like it does in large ones.  For low selection (i.e, _s_  = 0.1) the probability ranges from 4.5 % to 10 % for various population sizes; however, moderate values of selection against the heterozygote keep the probability well below 1%, with low meiotic drive. Table 2 also shows that moderate selection against the heterozygote with very high values of meiotic drive, say 0.8 or 0.9, has probabilities of fixation between 10 and 20% . 

So the question is, does meiotic drive for chromosomal fusions occur in humans? The answer is yes. Pardo-Manuel de Villena and Sapienza (2001) have shown that, in human female heterozygotes, ~60% of the balanced gametes contain fusions. This translates to an _m_ value of 0.6. So, for humans at least, the level of meiotic drive is low. 

Looking back at Hedrick's paper, and using the values for _s_ and _m_ which are reasonable for humans, even with a population of 40 individuals, the probability of fixation within a deme is 4.5%, and for ten individuals it is 10%. This is not very high, but well within the realm of possibility. It should be very clear then, that modern evolutionary theory can provide a naturalistic explanation for how fixation can occur within a deme. What is left is to consider the probability of fixation beyond the deme to the species itself. That will be the subject of the final essay in this series. 


* Bengtsson BO (1980). Rates of karyotypic evolution in placental mammals. _Hereditas_ **92**: 37-47.
* Bengtsson BO and WF Bodmer (1976). The fitness of human translocation carriers. _Ann. Hum. Genet London_**40**: 253-257.
* Hedrick P (1981). The establishment of chromosomal variants. _Evolution_ **35**(2): 322-332.
* Lande, R (1979). Effective deme sizes during long term evolution estimated from rates of chromosomal rearrangement. _Evolution_ **33**(1):234-251.
* Pardo-Manuel de Villena F and C Sapienza (2001). Transmission ratio distortion in offspring of heterozygous female carriers of Robertsonian translocations. _Hum. Genet._ **108**: 31-36.
* Wilson, EO (1975). _Sociobiology: The New Synthesis_ Belknap Press, Cambridge MA.
