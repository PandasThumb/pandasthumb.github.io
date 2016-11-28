---
layout: article
title: Gambler's Ruin is Darwin's Gain
date: '2008-05-05 13:21:42 -0700'
author: Guest Contributor
mt_id: 3812
blog_id: 2
post_id: 3812
basename: gamblers_ruin_i
---
<img src="/uploads/2008/21poster.jpg" alt="" width="200" height="280" style="float:right;" />

**by Joe Felsenstein<br />[http&#58;//www.gs.washington.edu/faculty/felsenstein.htm](http://www.gs.washington.edu/faculty/felsenstein.htm)**

Over at Uncommon Descent Sal Cordova has opened a dramatic new thread "[Gambler's Ruin is Darwin's Ruin](http://www.uncommondescent.com/evolution/gamblers-ruin-is-darwins-ruin/)".  Apparently improvement of a population by natural selection is now shown to be essentially impossible.  He invokes the example of Edward Thorp, who developed the winning system for blackjack fictionalized in the movie _[21](http://en.wikipedia.org/wiki/21_%282008_film%29)_.

Cordova uses the stochastic theory of gene frequency change of citing Motoo Kimura and Tomoko Ohta's well-known 1971 monograph "Theoretical Aspects of Population Genetics",  and argues that

> Without going into details, I'll quote the experts who investigated the issues. Consider the probability a selectively advantaged trait will survive in a population a mere 7 generations after it emerges:
> 
> > if a mutant gene is selectively neutral the probability is 0.79 that it will be lost from the population
> > ...
> > if the mutant gene has a selective advantage of 1%, the probability of loss during the fist seven generations is 0.78. As compared with the neutral mutant, this probability of extinction \[with natural selection\] is less by only .01 \[compared to extinction by purely random events\]. _(bracketing is by Cordova)_
> 
> This means is that natural selection is only slightly better than random chance. Darwin was absolutely wrong to suggest that the emergence of a novel trait will be preserved in most cases. It will not! Except for extreme selection pressures (like antibiotic resistance, pesticide resistance, anti-malaria drug resistance), selection fails to make much of an impact.

The Kimura/Ohta quote in question is on page 1 of their book, and describes a mutant with a selective advantage of 1%.

This would be a shocking disproof of decades of work in population genetics---if it accurately reflected the ultimate fate of those mutants.  Fortunately, we can turn to an equation seven pages later in Kimura and Ohta's book, equation (10), which is Kimura's famous 1962 formula for fixation probabilities.  Using it we can compare three mutants, one advantageous (s = 0.01), one neutral (s = 0), and one disadvantageous (s = -0.01).  Suppose that the population has size N = 1,000,000.  Using equation (10) we find that


*  The advantageous mutation has probability of fixation 0.0198013.
*  The neutral mutation has probability of fixation 0.0000005.
*  The disadvantageous mutation has probability of fixation 3.35818 x
10<sup>-17374</sup>


In other words, yes, in this case there is a lot of loss of advantageous mutations, about 49 being lost of every one that makes it to fixation.  But they are each nearly 40,000 times as likely to fix as are individual neutral mutations, and deleterious mutations are essentially never going to fix in such a case.

Why does this give such a different result than the comparison of 0.78 to 0.79?  It is because after 7 generations the surviving mutants in the case of selective advantage are at a higher frequency than are those in the neutral case, and the result is a much greater chance of fixation.

In fact, the Gambler's Ruin shows a similar behavior---its mathematics is similar to (but not identical to) the population-genetic case.  If you toss coins with a stake of $1 against a house which has $1,999,999 to wager, and you both keep playing until one holds the whole $2,000,000, if the game is fair you will be the ultimate victor one time out of 2,000,000, and the rest of the times the house will win.  But if you have a 1% advantage, so that on each toss you have a 50.5% chance of winning, you will be the ultimate victor nearly 1% of the time.  Mostly you will be ruined, but you will bankrupt the house 20,000 times as often as you would if the toss were fair.

So yes, the mathematics of Gambler's Ruin speaks to the issue of natural selection---but it confirms its effectiveness.

(The other issue raised by Cordova, that of interference between mutations at different loci, is the well-known Hill-Robertson effect.  If the loci have more than a tiny amount of genetic recombination between them, the interference largely vanishes.  Cordova and the other commenters there have forgotten this.)
