---
layout: article
title: 'Intelligent Design explained: Part 2 random search'
date: '2006-06-21 19:43:35 -0700'
author: PvM
mt_id: 2294
blog_id: 2
post_id: 2294
basename: intelligent_des_28
---
# Random Search and No Free Lunch

In his book "No Free Lunch", Dembski argues that, based upon the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems),  finding an optimal solution via "random search" is virtually impossible because no evolutionary algorithm is superior to random search. And while various authors have shown the many problems with Dembski's arguments, I intend to focus on a relatively small but devastating aspect of the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems).

First I will explain what the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems) are all about, subsequently I will show how Dembski uses the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems) and finally I will show that the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems) show how a random search, perhaps counterintuitively, is actually quite effective.

# No Free Lunch (NFL) Theorems

The [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems), after which Dembski named his book, are based on a set of papers  by Wolpert and MacReady which basically state that:

> "\[...\] all algorithms that search for an extremum of a cost function perform exactly the same, when averaged over all possible cost functions." (Wolpert and Macready, 1995)

# Dembski and the NFL

Dembski argued, based on the [No Free Lunch Theorems](http://en.wikipedia.org/wiki/No-Free-Lunch_theorems), that evolutionary algorithms could not perform better than a random search.

Dembski wrote:

> It's against this backdrop of displacement that I treat the No Free Lunch theorems. These theorems say that when averaged across all fitness functions of a given class (each fitness function being an item of information that constrains an otherwise unconstrained search), no evolutionary algorithm is superior to blind or random search.

and

Dembski wrote:

> In general, arbitrary, unconstrained, maximal classes of fitness functions each seem to have a No Free Lunch theorem for which evolutionary algorithms cannot, on average, outperform blind search.

**Source**: Dembski [Evolution's Logic of Credulity: An Unfettered Response to Allen Orr](http://acs.ucsd.edu/~idea/dembskiorr.htm)

While Dembski's treatment of the "No Free Lunch" theorems was, according to mathematician David Wolpert, mostly [written in Jello](http://www.talkreason.org/articles/jello.cfm), it is still interesting to pursue some of Dembski's claims. As I will show, not only do the No Free Lunch theorems fail to support Dembski's thesis, but in fact the No Free Lunch theorems show that such optimization is child's play.

The question really becomes: Is it really that hard to find an optimal solution using random search under the assumptions of the No Free Lunch Theorems?

The answer may be a surprise to many and it is 'not really'. 

# Random Search

Finding the optimum value may be  hard but finding a solution which is almost as good, is actually reasonably simple. And since evolution does not necessarily search for the best solution, it quickly becomes clear that Dembski's 'No Free Lunch" may have little relevance to evolutionary theory.

In 2002, on the ISCID boards, Erik provided the following calculations:

Erik wrote:

> Ironically, even if we grant that the prior over the set of all cost functions is uniform, the NFL theorem does not say that optimization is very difficult. **It actually says that, when the prior is uniform, optimization is child's play!** I mean that almost literally. Almost any strategy no matter how elaborate or crude will do. If the prior over the set of cost functions is uniform, then so is the prior over the set of cost values. That means that if we sample a point in the search space we are equally likely to get a low cost value as a high cost value. Suppose that there are Y possible cost values. Then the probability a sampled point will have one of the L lowest cost values is just
> 
> r = L / Y,
> 
> regardless of which strategy that was used to decide which point to sample. The probability s that at least one of N different sampled points will have a cost value among the L best is given by
> 
> s = 1 - (1 - r)^N,
> 
> again independently of the strategy used. Is that good or bad performance? The number of points required to achieve a given performance and confidence level is
> 
> N = ln(1 - s) / ln(1 - r) ~ - ln(1 - s) / r.
> 
> After sampling 298 points the probability that at least one of them is among the best 1% is 0.95. After 916 sampled points the same probability is 0.9999. If instead we want a point among the best 0.1% we need to sample 2994 points to find one with probability 0.95, or approximately 9206 points to find one with probability 0.9999. That kind of performance may not be satisfactory when the optimization must be done very fast in real-time under critical conditions, but it is good for most purposes. Certainly our universe would seem to be able to spare the time necessary to sample 9206 points. 
> 
> This is why Thomas English wrote
> 
> > "The maligned uniform distribution is actually benign. The probability of finding one of the better points with n evaluations does not depend on the size of the domain \[7\]. For instance, 916 evaluations uncover with 99.99% certainty a point that is better than 99% of the domain. What is remarkable about NFL and the uniform is not just that simple enumeration of points is optimal, but that it is highly effective." (see below for a reference)
> 
> **Source**: English T. (1999) "Some Information Theoretic Results On Evolutionary Optimization", Proceedings of the 1999 Congress on Evolutionary Computation: CEC99, pp. 788-795
> 
> The inference is never better than the assumption of a uniform prior that it relies on, however. It would seem that in most non-trivial optimization problems the number of good points in the search space are not as frequent as the number of bad points, meaning that the corresponding cost functions are not drawn uniformly from the set of all possible cost functions.

As Erik pointed out, as early as 1996, Tom English derived how relatively simple optimization really is:

Tom English wrote:

> The obvious interpretation of "no free lunch" is that no optimizer is faster, in general, than any other. This  misses some very important aspects of the result, however. One might conclude that all of the optimizers  are slow, because none is faster than enumeration. And one might also conclude that the unavoidable slowness derives from the perverse difficulty of the uniform distribution of test functions. Both of these conclusions would be wrong. 
> If the distribution of functions is uniform, the optimizer's best-so-far value is the maximum of n realizations of a uniform random variable. The probability that all n values are in the lower q fraction of the codomain is p = q<sup>n</sup>. Exploring n = log2 p points makes the probability p that all values are in the lower q  fraction. Table 1 shows n for several values of q and p. 
> It is astonishing that in 99.99% of trials a value better than 99.999% of those in the codomain is obtained with fewer than one million evaluations. This is an average over all functions, of course. It bears mention that one of them has only the worst codomain value in its range, and another has only the best  codomain value in its range.

Thomas M. English  **Evaluation of Evolutionary and Genetic Optimizers:  No Free Lunch** Evolutionary Programming V: Proceedings of the Fifth Annual Conference on Evolutionary Programming, L. J. Fogel, P. J. Angeline, and T BÃ¤ck, Eds., pp. 163-169. Cambridge, Mass: MIT Press, 1996. 


|**Fraction**|**Probability**
|**0.01**|**0.001**|**0.0001**
|**0.99**|458|678|916
|**0.999**|4603|6904|9206
|**0.9999**|46049|69074|929099
|**0.99999**|460515|690772|921029



Tom English repeated these facts on a posting to PandasThumb

> In 1996 I showed that NFL is a symptom of conservation of information in search. Repeating a quote of Dembski above:
> 
> Dembski wrote:
> 
> > The upshot of these theorems is that evolutionary algorithms, far from being universal problem solvers, are in fact quite limited problem solvers that depend crucially on additional information not inherent in the algorithms before they are able to solve any interesting problems. This additional information needs to be carefully specified and fine-tuned, and such specification and fine-tuning is always thoroughly teleological.
> 
> Under the theorems' assumption of a uniform distribution of problems, an uninformed optimizer is optimal. To be 99.99% sure of getting a solution better than 99.999% of all candidate solutions, it suffices to draw a uniform sample of just 921,029 solutions. Optimization is a benign problem with rare instances that are hard. Dembski increases the incidence of difficult instances by stipulating "interesting problems." At that point it is no longer clear which NFL theorems he believes apply. Incidentally, an optimizer cannot tune itself to the problem instance while solving it, but its parameters can be tuned to the problem distribution from run to run. It is possible to automate adaptation of an optimizer to the problem distribution without teleology.


**Source**: Tom English  [Pandasthumb Comment](http://www.pandasthumb.org/archives/2004/06icons_of_id_no.html#comment-3883)

I cannot emphasize strongly enough how wrong Dembski is in his comments on random search as these almost trivial calculations reveal. While Dembski is correct that finding **the** optimal solution may be extremely hard, finding a solution which is arbitrarily close to the solution is actually quite straightforward.

It should not come as a surprise that the "No Free Lunch Theorems" have more unfortunate surprises in store for Intelligent Design. More on that later...

# No Free Lunch Theorems



* Dembski, [Introduction to No Free Lunch](http://www.arn.org/docs/dembski/wd_nfl_intro.htm)
* Richard Wein, [Not a Free Lunch But a Box of Chocolates A critique of William Dembski's book No Free Lunch](http://www.talkorigins.org/design/faqs/nfl/)
* Wesley Elsberry, [No Free Lunch, The Book](http://www.antievolution.org/people/dembski_wa/nflbook.html)
* English, [Optimization Is Easy and Learning Is Hard In the Typical Function (2000)](http://citeseer.ist.psu.edu/english00optimization.html), Proceedings of the 2000 Congress on Evolutionary Computation 
* [Critique of Intelligent Design](http://talkreason.org/index.cfm?category=10) Talk Reason
* [Yin-Yang: No-Free-Lunch Theorems for Search](http://www.cs.uwyo.edu/~wspears/yin-yang.html) Discussion at the 1995 International Conference on Genetic Algorithms
* [No Free Lunch Theorems](http://www.no-free-lunch.org/)
* [Wikipedia: No Free Lunch Theorem](http://en.wikipedia.org/wiki/No-free-lunch_theorem)
* [The No Free Lunch Theorems, Evolution and Evolutionary Algorithms](http://evolutionary.martinsewell.com/nfl/)
* [Index to Creationist Claims](http://www.talkorigins.org/indexcc/CF/CF011.html)
* Wolpert and MacReady, [No Free Lunch Theorems for Optimization (1996)](http://citeseer.ist.psu.edu/wolpert96no.html)
* Wolpert and MacReady [No Free Lunch Theorems for Search (1995)](http://citeseer.ist.psu.edu/wolpert95no.html)
* Wolpert [William Dembski's treatment of the
No Free Lunch theorems is written in jello](http://talkreason.org/articles/jello.cfm)
* Mark Toussaint [Homepage Publications](http://homepages.inf.ed.ac.uk/mtoussai/publications/index.html)
* Marc Toussaint, Christian Igel [Neutrality: A Necessity for Self-Adaptation (2002)  ](http://citeseer.ist.psu.edu/toussaint02neutrality.html), 2002
* Toussaint, [PhD thesis  The evolution of genetic representations and modular adaptation](http://citeseer.ist.psu.edu/sieber91phd.html) 
* Toussaint, [On the Evolution of Phenotypic Exploration Distributions (2003)](http://citeseer.ist.psu.edu/toussaint03evolution.html)
