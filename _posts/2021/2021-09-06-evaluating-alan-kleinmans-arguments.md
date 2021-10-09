---
title: "Evaluating Alan Kleinman's arguments"
date: '2021-09-06 18:00 -7:00'
author: 'Joe Felsenstein'
---

Alan Kleinman has been commenting on various threads here at PT, in ways that repeatedly argue that he has done
the first correct probabilistic analysis of "DNA evolutionary adaptation" and "competition", and that call for
evolutionary biologists to provide an analysis of the Lenski and Kishony experiments in bacterial evolution.  He
also argues that we have not provided a correct analysis of bacterial antibiotic resistence or of the evolution
of drug resistance in cancer.  This thread is intended to allow discussion of these assertions, without disrupting discussions of other topics at PT.

Let me explain.
<!--more-->

Kleinman has published 7 papers on modeling evolutionary processes.  I have provided links to PDFs of these, when I encountered ones that might be free:

* Kleinman, A.  2014.  The basic science and mathematics of random mutation and natural
 selection <em>Statistics in Medicine</em> <strong>33 (29):</strong> 5074--5080 [(PDF)](https://onlinelibrary.wiley.com/doi/pdf/10.1002/sim.6307)
* Kleinman, A. 2015.  Random recombination and evolution of drug resistance. <em>Statistics in Medicine</em> <strong>34 (11):</strong> 1977--1980.
* Kleinman, A.  2016.  The mathematics of random mutation and natural selection for multiple simultaneous selection
 pressures and the evolution of antimicrobial drug resistance. <em>Statistics in Medicine</em> <strong>35 (29):</strong> 5391-5400
* Kleinman, A. 2018a.  Random mutation and natural selection in competitive and 
noncompetitive environments.  <em>Biomedical Journal of Scientific &amp; Technical Research</em> <strong>9 (1):</strong> 6903--6906. [(PDF)](https://biomedres.us/volume9-issue1.php)
* Kleinman, A. 2018b. Malaria and other infectious diseases, Suppression of the evolution
 of drug resistance. <em>Biomedical Journal of Scientific &amp; Technical Research</em>
<strong>12 (2):</strong> 9083-9085. [(PDF)](https://biomedres.us/fulltexts/BJSTR.MS.ID.002219.php)
* Kleinman, A. 2019. Fixation and adaptation in the Lenski E. coli Long Term Evolution Experiment. <em>Biomedical Journal of Scientific & Technical Research</em> <strong>20 (1):</strong> 14754--14760. [(PDF)](https://www.researchgate.net/profile/Alan-Kleinman/publication/335243441_Fixation_and_Adaptation_in_the_Lenski_E_coli_Long_Term_Evolution_Experiment/links/5d5ae99d4585152102521f7f/Fixation-and-Adaptation-in-the-Lenski-E-coli-Long-Term-Evolution-Experiment.pdf)
* Kleinman, A. M. 2020.  Drug resistance, An enemy of targeted cancer therapies. <em>Annals of Clinical and Medical Case Reports</em> <strong>4 (9):</strong> 1--4.

He has also brought his argument up repeatedly at Peaceful Science and at 
Panda&quot;s Thumb,
usually in the middle of threads devoted to other issues.

The basic calculation he does is to consider a haploid clonally-reproducing organism such
a bacterial culture, one which has no recombination.  He develops a formula for the
probability that the clone has beneficial mutations occuring at *n* sites, where the
first such mutation has *nGA* generations to occur, the second has *nGB* generations to
occur, and so on.  Note that an important feature of his model is that he considers,
not the time in generations but the number of cells that have ever arisen in the clone.
So with a probability *mu PA* for each new cell that
it has a beneficial mutation, it takes about *1/(mu PA)* cells before there is a
reasonable probability of seeing the beneficial mutation once.

A mystery (to me, anyway) is where selection is in all this.  We are computing
probabilities that, when a given number of cells has arisen, we have had
beneficial mutation at all of the *n* sites.  Once one has occurred, there seems to
be no futher mutation at that site.  Why?   This calculation is supposed to show
us the fundamental mathematical theory of mutation *and selection*, but aside from
waiting until a mutation labelled "beneficial" occurs, there is no further
effect of selection.

The same theory is also used in most of his other papers (an exception being the paper
on recombination which I will get back to later).  He has an idiosyncratic terminology.
As far as I can tell it involves calling the occurrence of beneficial mutations by
mutation "DNA adaptive evolution" while he calls their subsequent changes of gene
frequency in the population "competition".

Some questions arise:

1. Kleinman sees two processes at work: "competition" which is survival of the fittest, and "DNA evolutionary adaptation" which is
changes of genotypes by mutation, either deleterious or beneficial.  Is this terminology helpful?
2.  His equations are all about how many organisms (or cells) need to have arisen to get a given probability that a beneficial
allele will arise by mutation.  The theory uses the stochastic process of mutation. How does natural selection affect
this?
3. His treatment of recombination between genotypes with two or more loci assumes that offspring of a cross between a haploid
Ab genotype and a haploid  aB  genotype will all be  AB.  Is that true?
4. He seems to think that he is the first to give a correct mathematical theory of
mutation and natural selection.  Was he?  For example, his first paper has the
rather astonishingly grand title "The basic science and mathematics of random mutation and
natural selection". Would RA Fisher
(1922) or JBS Haldane (1924) have agreed?  I think he is off by 97-99 years.
5. Is he really the first to apply the mathematics of population genetics theory to evolution or drug resistance in cancer, or to
success of multidrug therapies for diseases?


Anyway, I must be misunderstanding how his theory works, and I hope that this thread will explain his theory to me.
After all, if it is the fundamental mathematical theory of my own field, then it is surely important to know.
By doing the discussion here, we can avoid being so rudely interrupted by the folks in the previous threads who were trying to discuss arguments
other than Kleinman&quot;s.

**After 2,111 comments in this thread, many by AK, I am placing him on pre-moderation and limiting him to 1 comment per day.  I will accumulate his future comments and release them at a rate of 1 per day.  People who consider this unreasonable suppression of discussion are invited to read his past comments and consider his responses to counterarguments.**
