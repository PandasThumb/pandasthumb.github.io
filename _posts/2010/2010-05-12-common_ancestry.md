---
layout: article
title: Common ancestry passes another test. News at 11.
date: '2010-05-12 17:23:09 -0700'
author: Nick Matzke
mt_id: 4618
blog_id: 2
post_id: 4618
basename: common_ancestry
---
Many readers will be familiar with longtime TalkOrigins regular Doug Theobald -- he is the author of "[29+ Evidence~~s~~ for Macroevolution: The Scientific Case for Common Descent](http://www.talkorigins.org/faqs/comdesc/)," pretty much the most impressive FAQ of all time.  Oh, and he's a professor too, and has published [some other stuff](http://www.ncbi.nlm.nih.gov/sites/entrez?cmd=Search&amp;db=pubmed&amp;term=Theobald%20DL).

Today he has published a pretty [impressive paper](http://www.nature.com/nature/journal/v465/n7295/full/nature09014.html#/) in _Nature_.  It is entitled "[A formal test of the theory of universal common ancestry](http://www.nature.com/nature/journal/v465/n7295/full/nature09014.html#/)."  Basically, it applies the likelihood-based and Bayesian phylogenetic techniques that have been developed over the last decade or two, adds in some standard model-selection theory, and uses these to assess "universal common ancestry" (UCA).  A lot of arguments "for common ancestry", e.g. biogeography, are really arguments for the common ancestry of groups of modern-day organisms -- like mammals -- rather than arguments that every living thing we know about shares common ancestry.  There have been some powerful arguments for UCA over the years -- e.g. the extremely conserved (if not quite identical) genetic code (and as everyone except Paul Nelson knows, "almost identical" and "identical" are virtually the same thing statistically, so his decade of yammering about the non-universality of the genetic code has had no impact on this evidence).  However, although the arguments remain powerful and convincing, they weren't usually quantitative and statistical, and it takes some serious work to construct a statistical assessment of something as deep and universal as common ancestry.  This is what Doug has done.

He's getting a lot of press.  Just in _Nature_ there is a [News & Views from Mike Steel and David Penny](http://www.nature.com/nature/journal/v465/n7295/full/465168a.html), and a _Nature_ [podcast](http://www.nature.com/nature/podcast/).

I can't wait to read creationist/ID reaction to this paper.  They will likely do what they always do, which is make up something ad hoc on the spot, like, "Oh, God would have done it \[i.e. produced the observed sequence patterns\] that way when he miraculously created species."  Until they produce a quantifiable model to compare to the common ancestry one via a likelihood ratio test (LRT) or Akaike Information Criterion (AIC), such verbiage is pretty much pointless.  Either that, or there will just be confused bickering based on misunderstandings of likelihood, probability, statistics, etc.  It should be great sport.

So that you can follow the chaos, here's a quickie for those who didn't learn this stuff in kindergarten or in frequentist-dominated intro stats classes:

**1.** likelihood = the probability of the data, given a model = P(data|model)

**2.** Two (or more) models\* can be compared by taking a single dataset\*\* and calculating the likelihood under each model.  The highest likelihood model confers the highest probability on the data, and is considered to be the model that best explains the data.  If the difference in likelihoods is big enough, one can say (using various tests) that one model is statistically significantly better than another model.

\* Models like, say, different phylogenetic trees and/or different sets of transition probabilities between DNA or amino acid sequences.

\*\* A single dataset like, for example, an alignment of a bunch of gene or protein sequences.

**3.** posterior probability = probability of the model, given the data = P(model|data)

**4.** [Bayes' Theorem](http://en.wikipedia.org/wiki/Bayes%27_theorem) allows you to take a prior probability of a model (P(model), e.g. your model could be "this coin has a 50% chance of landing heads on a toss" --  these are your initial beliefs), add some data (say, coin tosses), calculate the likelihood of that data given the model, and then calculate a posterior probability (your updated beliefs).

**5.** So probability, likelihood, and posterior probability are related, but they are not the same thing. 

**6.** For much more, including a primer on the differences between frequentist, likelihoodist, and Bayesian schools of thought in statistics (I get these categories from Sober 2008, _Evolution and Evidence_, so please argue with me about something other than this), please see these lecture notes for a introductory lecture I recently gave on Bayesian phylogenetics: [http://ib.berkeley.edu/courses/ib200a/IB200A_SyllabusHandouts.shtml](http://ib.berkeley.edu/courses/ib200a/IB200A_SyllabusHandouts.shtml), Tuesday, March 9 ([PDF](http://ib.berkeley.edu/courses/ib200a/lect/ib200a_lect14_Matzke_Bayesian_phylogenetics.pdf)).

Congrats to Doug!  A lot of work went into this paper, and I think it will be a classic.  Apart from debunking creationists, it also takes down a few other misconceptions that are pretty silly but have for some become widespread even with scientists, i.e. (1) the idea that lateral gene transfer contradicts UCA; and relatedly, (2) the idea that UCA means that all life descends from one literal single individual organism, rather than from an ancestral population.  The latter idea is particularly strange: did anyone ever think that the "common ancestor" of e.g. humans and chimps was a single _individual_?  I think not; it was always an ancestral population.  So why should the common ancestor of all life have been a single individual organism, especially since we have known of bacterial conjugation for 50+ years.  I suspect that many people have been mislead by the fact that "ancestor" is a singular, rather than plural, and then mistakenly extrapolated this to mean single individual organism.

So, enjoy, and please post links/comments on creationist reactions.  [Here's the first, from Todd Wood: Testing universal common ancestry?](http://toddcwood.blogspot.com/2010/05/testing-universal-common-ancestry.html).

Full disclosure: I am not entirely neutral, as both I and fellow PTer John Wilkins got to see the paper during its development, and give comments etc.)

PS: Oh yeah.  I almost forgot.  This quote is for those who think the results are trivial:

>  "It will be determined to what extent the phylogenetic tree, as derived from molecular data in complete independence from the results of organismal biology, coincides with the phylogenetic tree constructed on the basis of organismal biology. If the two phylogenetic trees are mostly in agreement with respect to the topology of branching, the best available single proof of the reality of macro-evolution would be furnished. Indeed, only the theory of evolution, combined with the realization that events at any supramolecular level are consistent with molecular events, could reasonably account for such a congruence between lines of evidence obtained independently, namely amino acid sequences of homologous polypeptide chains on the one hand, and the finds of organismal taxonomy and paleontology on the other hand. Besides offering an intellectual satisfaction to some, the advertising of such evidence would of course amount to beating a dead horse. Some beating of dead horses may be ethical, when here and there they display unexpected twitches that look like life."
> 
> Emile Zuckerkandl and Linus Pauling, discussing the possibility of the twin nested hierarchy before the first molecular phylogenies had been made.
> (1965) "Evolutionary Divergence and Convergence in Proteins." in _Evolving Genes and Proteins_, p. 101. ([source](http://www.talkorigins.org/faqs/comdesc/section1.html))
