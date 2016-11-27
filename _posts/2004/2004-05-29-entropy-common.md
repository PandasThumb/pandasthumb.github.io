---
layout: article
title: 'Entropy: Common pitfalls'
date: '2004-05-29 21:35:31 -0700'
author: PvM
mt_id: 215
blog_id: 2
post_id: 215
basename: entropy_common
---
<img src="http://www.sci.osaka-cu.ac.jp/biol/cbiol/Updated.gif" alt="" style="float:left;" />


# Introduction

Entropy may seem to be at first a simple concept but when trying to apply these concepts correctly one invariably runs into frustrating issues and areas of confusion. In this posting I intend to explore some of these confusions and I hope to explain how one applies entropy calculations correctly. 

In its simplest form entropy can be [described](http://www.av8n.com/physics/thermo-laws.htm#sec-multiplicity) as

$$S = \log W$$

Where W describes the number of microstates of the system. The difference between macrostates and microstates is quite important and when confused can lead to erroneous calculations.

Feynman warned against this confusion when he remarked that

Feynman wrote:

> "So we now have to talk about what we mean by disorder and what we mean by order. . . . Suppose we divide the space into little volume elements. If we have black and white molecules, how many ways could we distribute them among the volume elements so that white is on one side and black is on the other? On the other hand, how many ways could we distribute them with no restriction on which goes where? Clearly, there are many more ways to arrange them in the latter case. **We measure "disorder" by the number of ways that the insides can be arranged, so that from the outside it looks the same.** The logarithm of that number of ways is the entropy. The number of ways in the separated case is less, so the entropy is less, or the "disorder" is less."

Now let's apply this to the tossing a coin 4 times. From a macro perspective there are 5 possible outcome namely: All Heads, All Tails, 3 Heads 1 Tail, 2 Heads and 2 Tails and finally 1 Head and 3 Tails. But the number of microstates can be calculated from the formula already presented in other threads

$$N_{micro} = \frac{(N_T+N_H)!}{N_H!N_T!}$$

where $$N_T$$ and $$N_H$$ are the number of Tails and Heads.

Let's put this all in a table:


|**Macrostate**|**Number of Microstates**|**Microstates**|**Formula**|**S**
|4 Heads|1|HHHH|4!/(4!0!)|0
|3 Heads, 1 Tails|4|HTTT,THTT, TTHT,TTTH|4!/(3!1!)|2
|2 Heads, 2 Tails|6|HHTT,HTHT, HTTH,THTH, TTHH,THHT|4!/(2!2!)|2.58
|1 Head, 3 Tails|4|THHH,HTHH, HHTH,HHHT|4!/(3!1!)|2
|4 Tails|1|TTTT|4!/(4!0!)|0



> Macro states and microstates for throwing a coin 4 times. Adapted from [this tutorial. Remember that 0! is by definition 1](http://www.uwec.edu/Physics/thomas/Physics332/Physics%20332%20Entropy.ppt)

So what can we learn from this simple example? First that the number of macrostates are not the same as the number of microstates. In fact the number of microstates can become quite large compared to the number of macrostates. Let's now assume that the throw is still 2 Heads and 2 Tails but in addition we now know that a 'mutation' has fixated one of the Tails to be in the first position.

What is the number of microstates now? Well, the only valid microstates are 

**TTHH, THTH, THHT**or 3!/(2!1!) as we can see fixating one of the Tails has decreased entropy from 2.58 to 1.58 or a drop of 1.

Not surprisingly because while the state 2 Heads and 2 Tails is one of maximum entropy (a uniform distribution of Heads and Tails will always have maximum entropy), fixating one of the throws to always be Tails has increased the order or decreased the entropy.

I would like to point out that in this example I have not used any of the approximations used by Shannon but merely have focused on the possible microstates for any given macrostate. The relevance you may ask is that when in a genome of 1000 uniformly distributed nucleotides, 2 positions become fixated, contrary to intuition, the number of microstates dropped from $$W=\frac{1000!}{(250!250!250!250!)}$$ to $$W=\frac{998!}{(250!250!250!248!)}$$

Other websites point out the same thing

[Microstates and Macrostates](http://www.dur.ac.uk/p.d.hatton/StatPtut1A.pdf)

[Excellent: Thermodynamics of Equilibrium](http://www.chem1.com/acad/pdf/thermeq.pdf)

[Microstates and Macrostates](http://farside.ph.utexas.edu/teaching/sm1/lectures/node32.html)

[Entropy](http://www.cmi.k12.il.us/~beuschlo/physics/PowerPoint/thermo.pdf)

[A good homework example](http://skipper.physics.sunysb.edu/phy306/hw1.html)

Check out the formula on the number of Microstates, with the correct substitutions, is exactly the same as the one above $$W(N,n)=N!/(n!*(N-n)!)$$  I'll leave that as an exercise to the reader

And a more indepth [view](http://www.bp.uni-bayreuth.de/bisb/Lectures/notes-lect7.pdf)

and another [way of looking at this issue](http://www.phys.unsw.edu.au/PHYS3410/lecture5.html)

Update:

A quick comment: The model used here assumes that the probabilities for Heads and Tails is equal (0.5). When a particular location is assumed to be fixated, the entropy for that site is 0.
Shannon's model is a first order model in which the probabilities can vary. Entropy is calculated based on the frequencies of occurrence. For the genome these frequencies are obtained from looking at many genomes. This means that for each location in the genome, the probabilities for the various nucleotides can vary. The first order model assumes that the probabilities for the nucleotides are independent of the other locations. If there is a dependency between locations then a higher order model needs to be applied to correct for the correlation.

<img src="http://www.data-compression.com/eqn018.png" alt="" />
[from this excellent page](http://www.data-compression.com/theory.shtml) on theory of datacompression

[Features, Patterns, Correlations in DNA and Protein Texts](http://www.nslij-genetics.org/dnacorr/) is a good website to explore.

[A good paper](http://hc.ims.u-tokyo.ac.jp/JSBi/journal/GIW02/GIW02F002.pdf) on distribution of di- and tri-nucleotides

<img src="http://hc.ims.u-tokyo.ac.jp/JSBi/journal/GIW02/GIW02F002/GIW02F002_fig0003.png" alt="" />

[Study of statistical correlations in DNA sequences](http://www.nslij-genetics.org/dnacorr/bernaola02.pdf)

> The plots of C(l) for prokaryotic genomes show that, at short scales (below the characteristic size of genes) correlations are dominated by the non-uniform base composition in the three codon positions. At larger scales we observe both behaviours, genomes for which C(l) almost vanishes (e.g. M. tuberculosis ) and genomes for which C(l) is significantly different from zero in a broad range of sizes (e.g. B. subtilis ). In the former, the behaviour beyond the characteristic size of genes is similar to what could be observed in a random sequence, thus implying that these genomes are essentially homogeneous at large scales (a commonly accepted idea, Rolfe and Meselson, 1959; Sueoka, 1959). Nevertheless, the latter class of prokaryotic genomes presents correlations implying the presence of heterogeneities that cannot be explained in terms of nonuniform base composition in the three codon positions and could be related to a massive lateral transfer of compositionally biased genes from other genomes or even to natural selection. In addition, we observe power-law correlations in these genomes which, in some cases extend to more than four orders of magnitude, in agreement with previous results (de Sousa Vieira, 1999). Thus, the results obtained for such genomes clearly questions the assumption of homogeneity in prokaryotic DNA.

# Onwards to Shannon entropy

In the above example I have used the formula $$S = \log W$$. I will show that for large number of coin tosses the formula simplifies to the Shannon format by using the Stirling approximation $$ \log M! = M \log M - M$$.

First we assume that we have $$N=N_H+N_T$$ coint tosses with $$N_H$$ Heads and $$N_T$$ Tails. The number of microstates is given by $$\frac{(N_H+N_T)!}{N_H!N_T!}$$ thus the entropy is:

$$S = \log \frac{(N_H+N_T)!}{N_H!N_T!}$$

rewrite this as
$$S = \log \frac{N!}{(p_HN)!(p_TN)!}$$ 

with $$p_H=\frac{N_H}{N}$$ and $$p_T=\frac{N_T}{N}$$

With Stirling approximation we  find:
$$S = N \log N - (p_HN) log (p_HN) - (p_TN)log(p_TN)-N +p_HN+(1-p_H)N$$ 

which simplifies to
$$S = N( \log N -p_H \log p_H -p_T \log p_T -(p_H+p_T) \log N)$$

and further
$$S = N(-p_H \log p_H -p_T \log p_T )$$ since $$p_H+p_T=1$$
