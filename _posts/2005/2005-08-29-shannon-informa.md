---
layout: article
title: Shannon Information and Biological Fitness
date: '2005-08-29 10:00:00 -0700'
author: PvM
mt_id: 1335
blog_id: 2
post_id: 1335
basename: shannon_informa
---
For Neurode...

[Bergstrom](http://octavia.zoology.washington.edu/) (Department of Zoology University of Washington Seattle, WA, USA) and [Lachmann](http://www.santafe.edu/~dirk/) (Max Planck Institute for Mathematics in the Sciences Leipzig, Germany) have published a paper titled "Shannon Information and Biological Fitness".

They conclude that

> In this paper we have shown that two measures of information, Shannon entropy and the decision-theory value of information, are united into one single information measure when one looks at the strategies that natural selection will favor, namely those that maximize the long term growth rate of biological organisms. Furthermore, we have shown that in evolving biological systems, the fitness value of information is bounded above by the Shannon entropy. These results suggest a close relationship between biological concepts of Darwinian fitness and information-theoretic measures such as Shannon entropy or mutual information.

Since Shannon information does not address the issue of information quality, as it does not distinguish between relevant and irrelevant information, they define the value of information as follows

> Definition: The value of information associated with a cue or signal X is defined as the difference between the maximum expected payoff or fitness that a decision-maker can obtain by conditioning on X and the maximum expected payoff that could be obtained without conditioning on X.

In "Change in Shannon information between systems as a measure of adaptation", [Katharina Mullen](http://www.nat.vu.nl/~kate/), from the department of physics and astronomy of the Vrije Universiteit Amsterdam, explains how fitness and Shannon information relate

> An information-theoretic measure of adaptation is presented as change in Shannon information between the components (e.g., entity and environment) of an adaptive system. The measure is applicable to natural and artificial adaptive systems in the absence of exogenic fitness criteria, unlike fitness-function-based measures of adaptation. It is introduced via formulation of the of the simplest system in which non-zero change in shared information between components arises, and via application to a predator-prey model.

Interestingly, she discusses the teleology of survival. 

> Under the view that an environment and an entity seeking to survive in the environment are patterns correlated to each other so that the state of the pattern represented by each effects the other, the purpose of the entity is representation of that pattern that allows maintenance of a maximal degree of order relative to the environment; that is, the purpose of the entity becomes taking on a state that allows survival with maximal probability given the environment. Should the environment's state change in a way as to change the state of the entity that allows maximal (or some degree of) order relative to the environment to be maintained, there is a selective pressure on the entity to change the pattern it embodies toward this new state. Then the ability of the entity to persist depends on how well changes in the environment are communicated to the pattern represented by the entity; Equation 3 measures this. By this reasoning there is a sense in which Equation 3 measures the 'survivability' of a system, and Equation 4 measures increases or decreases in that survivability.

Equation 3 describes Shannon mutual information I(X:Y)=H(X)+H(Y)-H(X,Y). By defining the information at time t0 and tn as I0 and In, the difference between the two is equation 4

She concludes that 


> In natural and artificial systems in which fitness is endogenic, application of the measure presented here may be more desirable than application of a fitness-based measure.

Things get even better in [cale-free dynamics emerging from information transfer](http://www.edpsciences.org/articles/epl/abs/2005/04/epl8582/epl8582.html) the authors argue:

>  Abstract
> The dynamics based on information transfer is proposed as an underlying mechanism for the scale-invariant dynamic critical behavior observed in a variety of systems. We apply the dynamics to the globally coupled Ising model, which is analytically tractable, and show that dynamic criticality is indeed attained. Such emergence of criticality is confirmed numerically in the two-dimensional Ising model as well as the globally coupled one and in a biological evolution model. Although criticality is precise only when information transfer is reversible, it may also be observed even in the irreversible case, during the practical time scale shorter than the relaxation time.

For a reprint of this article see [this link](http://arxiv.org/abs/cond-mat/0412156)

The authors observe that

> As an attempt to seek a general theoretical answer to the question why criticality appears so common, we note that essentially any system in nature is coupled to the environmental surroundings and consider information transfer between the system and the environment. The mathematical formulation of information was given in the context of the communication theory whereas entropy is identified with a measure of missing information \[3\]. The importance of such information transfer together with the role of entropy has been addressed in biological evolution based on random mutation and natural selection \[4\]: In general, every species tends to minimize its entropy, or in other words, attempts to get information from the environment. Here we propose that this information-transfer dynamics may serve as a generic and universal mechanism for dynamic scale-invariant behaviors observed in a vareity of systems, including physical as well as biological systems.

The reason why I am excited about these findings is that they tie together: scale free networks, Shannon information, criticality and evolution in a theoretic foundation.

For those interested in Shannon entropy, information and the common confusions, I recommend Adami's paper [Information theory in molecular biology](http://arxiv.org/abs/q-bio/0405004)
