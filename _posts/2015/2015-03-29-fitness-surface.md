---
layout: article
title: 'Fitness surfaces and searches: Dembski, Ewert, and Marks''s search for design'
date: '2015-03-29 08:02:27 -0700'
author: Joe Felsenstein
mt_id: 7086
blog_id: 2
post_id: 7086
basename: fitness_surface
---
**This post is by Joe Felsenstein and Tom English**

Back in October, one of us (JF) [commented](http://pandasthumb.org/archives/2014/10/dembskis-argume.html)
at Panda's Thumb on William Dembski's seminar presentation at the
University of Chicago, [ Conservation
of Information in Evolutionary Search](http://www.youtube.com/watch?v=MN74Vn-R5fg). In his [reply](http://www.evolutionnews.org/2014/10/responding_to_m090271.html)
at the Discovery Institute's _Evolution News and Views_ blog,
Dembski pointed out that he had referred to three of his own papers, and that
Joe had mentioned only two. He generously characterized Joe's post as
an "argument by misdirection", the sort of thing magicians
do when they are deliberately trying to fool you. (Thanks, how kind).

Dembski is right that Joe did not cite his most recent paper, and
that he should have. The paper, "[A
General Theory of Information Cost Incurred by Successful Search](http://www.worldscientific.com/doi/pdf/10.1142/9789814508728_0002)",
by Dembski, Winston Ewert, and Robert J. Marks II (henceforth DEM),
defines search differently than do the other papers. However, it does
not jibe with the "Seven Components of Search" slide of the
presentation (details 
[here](http://dieben.blogspot.com/2014/09/conservation-of-information-in_26.html)).
One of us (TE) asked Dembski for technical clarification. He
responded only that he simplified for the talk, and stands by the
approach of DEM.

Whatever our skills at prestidigitation, we will not try to untangle the
differences between the talk and the DEM paper.
Rather than guess how Dembski simplified, we will regard the DEM paper as
his authoritative source. Studying that paper, we found
that:


1. They address "search" in
a space of points. To make this less abstract, and to have an example
for discussing evolution, we assume a space of possible genotypes. For example,
we may have a stretch of 1000 bases of DNA in a haploid organism, so
that the points in the space are all 4<sup>1000</sup> possible
sequences.
1. A "search" generates a
sequence of genotypes, and then chooses one of them as the final
result. The process is random to some degree, so each genotype has a
probability of being the outcome. DEM ultimately describe the search
in terms of its results, as a probability distribution on the space of genotypes.
1. A set of genotypes is designated
the "target". A "search" is said to succeed when
its outcome is in the target. Because the outcome is random, the
search has some probability of success.
1. DEM assume that there is a
baseline "search" that does not favor any particular
"target". For our space of genotypes, the baseline search
generates all outcomes with equal probability. DEM in fact note
that on average over all possible searches, the probability of success
is the same as if we simply drew randomly (uniformly) from the space of genotypes.
1. They calculate the "active
information" of a "search" by taking the ratio of its
probability of success to that of the baseline search, and then
taking the logarithm of the ratio. The logarithm is not essential to
their argument.
1. Contrary to what Joe said in his
previous post, DEM do not explicitly consider all possible fitness
surfaces. He was certainly wrong about that. But as we will show,
the situation is even worse than he thought. There are "searches"
that go downhill on the fitness surface, ones that go sideways, and ones
that pay no attention at all to fitnesses.
1. If we make a simplified model of a
"greedy" uphill-climbing algorithm that looks at
the neighboring genotypes in the space, and which prefers to move to a
nearby genotype if that genotype has higher fitness than the current
one, its search will do a lot better than the baseline search, and thus
a lot better than the average over all possible searches. Such processes will
be in an extremely small fraction of all of DEM's possible searches,
the small fraction that does a lot better than picking a genotype at
random.
1. So just by having genotypes that
have different fitnesses, evolutionary processes will do considerably
better than
random choice, and will be considered by DEM to use substantial
values of Active Information. That is simply a result of having
fitnesses, and does not require that a Designer choose the fitness
surface. This shows that even a search which is evolution on
a white-noise fitness surface is very
special by DEM's standards.
1. Searches that are like real
evolutionary processes do have fitness surfaces. Furthermore, these
fitness surfaces are smoother than white-noise surfaces "because
physics". That too increases the probability of success, and by
a large amount.
1. Arguing whether a Designer has
acted by setting up the laws of physics themselves is an argument
one should have with cosmologists, not with biologists. Evolutionary
biologists are concerned with how an evolving system will behave in
our present universe, with the laws of physics that we have now.
These predispose to fitness surfaces substantially smoother than
white-noise surfaces.
1. Although moving uphill on a fitness surface is helpful to the
organism, evolution is not actually a search for a particular small
set of target genotypes; it is not only successful when it finds the
absolutely most-fit genotypes in the space. We almost certainly do
not reach optimal genotypes or phenotypes, and that's OK. Evolution
may not have made us optimal, but it has at least made us fit enough
to survive and flourish, and smart
enough to be capable of evaluating DEM's arguments, and seeing that
they do not make a case that evolution is a search actively chosen
by a Designer.


<p>This is the essence of our argument. It is a lot to consider, so
let's explain this in more detail below:
</p>

_As usual I will pa-troll the comments, and send off-topic stuff by our usual trolls **and replies to their off-topic stuff** to the Bathroom Wall_

**The target** 

<p>DEM have a "target" for which the search is searching.
Except that they don't actually require that the "search"
actually search for something that makes sense. The target can be any
set of points. If each point is a genotype and each of them has a
fitness, the target can be genotypes with unusually high fitnesses,
with unusually low fitnesses, mediocre fitnesses, or any mixture of
them. They do not have to be points that are "specified" by
fitness or by any other criterion. DEM do not require that the
"search" even consider the fitnesses. They calculate the
  fraction of all <em>M</em> points that are in the target. If |<em>T</em>|
is the size of the target, for this fraction If we divide that by the
  number of points in the space, <em>N</em>, we get <em>p</em> = |<em>T</em>|/|<em>N</em>|.
This of course is also the probability that a random point drawn
uniformly from the space hits the target. 
</p>


**Searches as distributions on the space of points**

<p>DEM consider the probability distribution of all outcomes of a
search. Different instances of the search can find different results,
either because they choose different starting points, or because of
random processes later during the search. They assume very little
about the machinery of the search -- they simply identify the search
with the distribution of results that it gets. Suppose that two
searches lead to the same distribution of outcomes, say a probability
0.6 of coming up with point <em>x<sub>1</sub></em>, probability 0.4
of being coming up with <em>x<sub>12</sub></em>,
and probability 0 of everything else. They consider these two
processes to be the same identical search. They don't consider what
intermediate steps the searches go through. Correspondingly, two
searches that lead to different probability distributions of outcomes
are considered to be different searches. All distributions that you
can make can apparently be found by one or another of DEM's search
processes. From this point on they talk about the set of possible
distributions, which to them represent the set of possible searches. 
</p>


<p>Note that this means that they are including "searches"
that might either fail to be influenced by the fitnesses of the
genotypes, and even ones that deliberately move away from highly fit
genotypes, and seek out worse ones. Anything that gets results is a
"search", no matter how badly it performs. 
</p>


**Are "searches" search algorithms?** 



<p>Mathematicians and computer scientists working on optimization are
accustomed to investigating the properties of algorithms that try to
maximize a function. Once an algorithm is given, its behavior on
different functions can be studied mathematically or numerically. DEM
do not make this separation between the algorithm and the function.
Their definition of a "search" includes both the algorithm
and the function it encounters. As an evolutionary algorithm may have
different results on different fitness surfaces, in their argument
the same evolutionary model can be two different "searches"
if it encounters two different fitness surfaces. As we have noted,
even "searches" that do not try to maximize the fitness are
included in their space. 
</p>


**DEM's "Search For a Search"**


<p>A probability distribution on a set of <em>N</em>
points simply assigns probabilities to each of them. These
probabilities can be positive or zero, but not negative, and they
  must add up to 1. So DEM consider the <em>N</em> probabilities <em>a<sub>1</sub></em>,
  <em>a<sub>2</sub></em>,
  ..., <em>a<sub>N</sub></em>. The conditions that they be
nonnegative and add up to 1 forces them to lie in a region of
  <em>N</em>-dimensional space called a simplex. For example, if <em>N</em>
is 3, the numbers must lie in an equilateral triangle in a
  3-dimensional space of points <em>(x,y,z)</em>, where
<em>x+y+z = 1</em>, with its corners on the points
(1,0,0), (0,1,0), and (0,0,1). For that small case, each probability
distribution would have three probabilities, and be a point in the
triangle such as (0.2344, 0.6815, 0.0841). 
</p>


<p>Now DEM discuss the distribution of searches -- that is, the
distribution of probability distributions. Since each probability
distribution is a point in the simplex, the distribution of searches
is a distribution on that simplex. This is the probability
distribution from which the search is said to be chosen. They go to a
fair amount of effort, in this paper and in earlier papers by Dembski
and Marks and by Dembski, to argue that a uniform distribution of
searches on the simplex is a natural starting point from which the
searches can be regarded as chosen. They also consider, in the DEM
paper, initial distributions that are nonuniform. That does not make
much difference for the argument made here. We're not going to argue
with the details of their mathematics, but instead concentrate on
what in evolutionary biology corresponds to such a choice of a
search. 
</p>


**Their theorem**



<p>When one draws a probability distribution, which is one of the
points in the simplex, one might get one that assigns a higher
probability to the target, or one that assigns a lower probability of
the target. On average, they argue, one gets one that has the
  probability <em>p</em> of hitting the target. DEM show that, in the
  original uniform distribution of searches, at most a fraction <em>p/q</em>
of them will have a probability of finding the target as large as, or
  larger than <em>q</em>. 
</p>


<p>They then calculate a quantity that they call "active
information" by taking the negative logarithm of this ratio and
conclude that this is the amount of information that is built in by
the choice of that search. In their argument it is implied that the
improved success is due to some Designer having made choices that
built that information in. 
</p>


**Mostly not using the fitness**. 



<p>In Joe's earlier post, he argued that Dembski and Marks were
examining the choice of a fitness surfaces from among all possible
  fitness surfaces. <em>He was wrong.</em> In fact, most of the
searches in their distribution of searches cannot involve going
uphill on any fitness surface. One is already in a very small portion
of their distribution of searches as soon as the process is doing
that. In that case one has an evolutionary search, and that is drawn
from a very small fraction of all of their searches. Here is how we
can see that. 
</p>


**A simple "greedy" search algorithm**


<p>Evolutionary processes occur in populations of organisms that have
genotypes and fitnesses. Will a situation like that do as badly as a
randomly-chosen search, where the probability of hitting the target
is the same as it would be for random draws from the space? We can
make a simple model, which easily shows that it is not the same. 
</p>


<p>Consider a space of DNA sequences, say all possible sequences of a
stretch of 1000 nucleotides. The organism has one of these DNA
sequences. In each generation it looks at all of its neighbor DNA
sequences that have just one of these 1000 bases changed from the
present sequence. There are 3000 of these, since each of the 1000
bases has one of the four bases A, C, G, and T and this means that
there are 3 others possible at that site. Each DNA sequence has a
fitness. Let's assume that the organism has just one DNA sequence, so
it is located at one point in the genotype space. If the most fit of
these 3000 neighbors has a higher fitness than the present DNA
sequence, let's assume that the organism changes its DNA sequence to 
that DNA sequence. Otherwise it stays the same. It goes through <em>m-1</em>
generations of this. 
</p>


<p>This of course is a very simpleminded model of an evolving
population, one that looks only at the neighbors of one genotype, but
which also responds perfectly to any fitness differences. The
question is not whether this is fully realistic, but whether this
simple biasing by natural selection has a major effect on the
probability of hitting the target. Let's call this beast a Greedy
Uphill Climber "bug". We introduce it because it is easy to
see what it will do. 
</p>


**Searching for a small target**



<p>To make the case even simpler, let's assume that all the genotypes
have different fitness values -- there are no ties. There is then
only one genotype that has the highest fitness. For our test case,
  let's define that one as the target <em>T</em>. In DEM's argument, the
target can be defined in any way you want. It could even be a set of
genotypes of unusually low fitness. But as the issue for evolution is
whether natural selection can find highly-fit adaptations, it does
not make sense to have a target that has unusually low fitness,
especially since natural selection will actively move away from it. 
</p>


<p>Let's also simplify things by choosing the starting genotype at
  random from among all possibilities. Our GUC Bug then makes <em>m</em>
steps, each time to the most fit of the 3001 sequences that consist
of its own genotype, plus the genotypes of its 3000 current
neighbors. 
</p>


**Probability of the GUC Bug finding the target** 



<p>Remember that if we drew at random from a distribution (a
"search") which itself was randomly chosen from the simplex
of all probability distributions, we would have only a probability <em>p</em>
of hitting the target. That is the same as if we just drew the
outcome randomly from the set of possible DNA sequences. In the case
of our GUC Bug, we start out with a randomly sampled genotype, and if
that were all we did, we would have that small probability of hitting
the target. 
</p>


<p>But if we let the bug do just one more step, so <em>m = 2</em>,
it will move to the fittest of the 3001 immediate neighbors. This
mimics the effect of natural selection, and that makes us much more
likely to hit the target. The GUC Bug will find the target if it
starts with the genotype which is the target, or if it starts with
any genotype that is an immediate neighbor of the target. As there
are 3000 neighbors of each of these DNA sequences, the probability of
hitting the target will be about 3001 times greater than <em>p</em>.</p>


<p>If we take more steps, it is not clear how much larger is the set
of starting points that will allow us to arrive at the target. It
depends on how smooth the fitness surface is. At its smoothest, the
fitness surface has no local peaks. For each genotype outside the
target, there is a best neighbor of higher fitness, so the GUC Bug
  will move to that neighbor. If <em>m = 50</em>,
there will be a great many neighbor genotypes that are less than 50
steps away from the target. In fact, there will be 1.211x10<sup>107</sup>
of those neighbors in all. That's a lot. All of those genotypes are
  starting points that will lead to <em>T</em> in 49 steps or less. So
  the probability of a GUC Bug reaching the target is not just <em>p</em>, in the most favorable case it is vastly
larger than that. 
</p>


**Behavior on a "white noise" fitness surface**



<p>One of us (TE) has carried out computer simulations of this case.
He considered 1000-base nucleotide sequences and a GUC Bug started at
a random sequence. Running the bug until it reached a local peak of
the fitness surface, where no immediate neighbor is more fit, he
found that these peaks were typically higher than 99.98% of all
points. So even on one of the worst possible fitness surfaces, a GUC
Bug does far better than choosing a DNA sequence at random. 
</p>


**Can DEM's "searches" all be carried out by a greedy
search bug?**


<p>This immediately establishes that most of the searches in DEM's
  space of searches are much worse at finding the target <em>T</em> than
any search that has a GUC Bug and a fitness surface. In our case the
  average chance of success of one of their searches is only <em>p</em>,
which is more than 3000 times lower than the average for a GUC Bug
that looks at neighbors on a fitness surface once. So a GUC Bug
moving on a fitness surface must be far more successful than a random
one of DEM's searches. This is true no matter what the fitness
surface is. Simply by having a process that moves to more fit
neighbors, we immediately narrow down DEM's searches to a tiny
fraction of all possible searches.</p>


**But what about more realistic models of evolution?**



<p>These have the same property. In the GUC Bug model, we had only
one DNA sequence in the species. If instead there is a population of
sequences, then the genotypes of the species have multiple DNA
sequences, and by multiple mutations and recombination parts of the
space further afield can be reached. On the other hand the GUC Bug is
more efficient in moving uphill to more fit genotypes than actual
evolutionary processes are. So more realistic models of evolution
might be either better or worse at climbing the fitness surface. But
all of them move to the target from some reasonably large set of
points in the neighborhood of the target. All such models will end up
at the target far more often that a blind search will, and that
immediately signals that these processes are far different from most
of the searches in DEM's space of searches. 
</p>


**What causes smooth fitness surfaces?**



<p>We can see that evolutionary processes are not typical members of
DEM's space of searches, because all of them, no matter what the
shape of their fitness surface, do much better than blind search.
Within the class of evolutionary processes those that have smoother
fitness surfaces do better yet -- enormously better. DEM acknowledge
this but do not discuss what makes fitness surfaces smooth. As one of us (JF) argued in his previous posts ([here](https://pandasthumb.org/archives/2009/08/a-peer-reviewed.html),
[here](https://pandasthumb.org/archives/2009/08/a-peer-reviewed-1.html),
[here](https://pandasthumb.org/archives/2013/04/does-csi-enable.html),
and [here](https://pandasthumb.org/archives/2014/10/dembskis-argume.html)),
the ordinary laws of physics, with their weakness of long-range
interactions, lead to fitness surfaces much smoother than white-noise
fitness surfaces. 
</p>


<p>In the white-noise surfaces, changing one base in the DNA brings
us to a fitness that is in effect randomly chosen from all possible
fitnesses. In fact, it brings us to a fitness that is just as bad as
if all bases in the DNA were changed simultaneously. That is not like
actual biology. Furthermore in a white-noise fitness surface
interactions among changes in different sites in the DNA are
ubiquitous and incredibly strong. Changing one base leads to a
randomly-different fitness. So does changing another. Changing both
of those leads to a fitness that is also randomly-chosen, without
regard to what the effects of the two earlier changes were. Combining
two deleterious changes will then make no prediction that the result
will be even more deleterious. Similarly, combining two advantageous
changes will make no prediction that the result will be
even more advantageous. But with real physics, those predictions can
often be made. 
</p>


<p>Thus we can see that simply having genotypes with different
fitnesses leads to results much better than most of the searches in
DEM's space. Considering that "because physics" the fitness
surfaces will be nonrandomly smooth brings us to an even tinier
fraction of all possible searches, ones that are even more
successful. Dembski and Marks would consider these smooth fitness
surfaces to have large amounts of "active information",
because they lead to much greater success at reaching any target
which includes the genotypes of highest fitness. So these two effects
do not require any intervention of a Designer, just the presence of
genotypes that have fitnesses, and the action of ordinary laws of
physics. Some, quite possibly all, of Dembski and Marks's "active
information" is present as soon as we have genotypes that have
different fitnesses, and genotypes whose phenotypes are determined
using the ordinary laws of physics. 
</p>


**Is evolution a search?**



<p>The modeling of evolutionary processes as searches is of limited
help. It is generally not best to regard evolutionary processes as
carrying out a search for a target which is an optimal organism. 
</p>


<p>Evolution does not withhold its approval until it sees whether the
single most-fit possible phenotype is found. Whether a species goes
extinct depends on its fitnesses along the way, and a species can be
quite successful without ever finding the most-fit genotypes. It is
almost certain that we are not as fit as the best organism possible
anywhere in in our space of genotypes. Requiring that evolution find
that optimum result is unreasonable; we may always be stuck in some
isolated region of genome space, and all of our wonderful adaptations
may be the ones found there. But that is good enough for us to have
developed remarkable abilities, including being capable of analyzing
arguments about the evolutionary process, and seeing whether they
imply the existence of the intervention of a Designer in the
evolutionary process. Or whether they do not. 
</p>
