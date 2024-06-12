---
title: Dembski and Ewert dump functional information
date: 2024-12-19 12:00:01 -08:00
author: Joe Felsenstein
---

<div align="center"><figure><img width="600px" src="/uploads/2023/Six_Grandfathers.jpg" alt="[Six grandfathers image]">
<figcaption><div align="center">The mountain called <em>Six Grandfathers</em> by the 
Lakota people before it was <br/>renamed Mount Rushmore.  Does the Lakota name reflect 
a design inference?</div></figcaption><em>Wikimedia, public domain</em></figure></div>

<p>&nbsp;</p>

I have been reading the new 2nd edition of <em>The Design Inference: Eliminating Chance 
Through Small Probabilities</em> and wanted 
to give some reactions to it, having reached the end of the chapter on "Specified 
Complexity".  This new edition adds Winston Ewert as the second author.  Unlike the 
1998 first edition, which was published by Cambridge University Press, this "Revised 
and Expanded" 25th anniversary 2nd edition is published by Discovery Institute Press.  For 
a book of 582 pages, it is available 
rather inexpensively, in a paperback edition and in a 
Kindle edition.  (Its cover illustration shows the faces on Mount Rushmore, as an 
example of a design inference).

William Dembski's original Design Inference argument involved our seeing a 
pattern in nature, in an organism, that embodied what he called Specified 
Complexity.  Its argument became better known as a result of Dembski's 2002 
book <em>No Free Lunch: Why Specified Complexity Cannot be Purchased Without Intelligence.</em> 
This was much invoked as a major argument for Intelligent Design at the time of the 2005 Kitzmiller vs. Dover School Board trial.

The Specified Complexity argument involves genotypes arrayed 
on a scale.  A scale of what, we will be discussing.  The general strategy of the design inference 
is to find a region of the scale that is so improbable under "chance" that natural processes would be extremely unlikely to result in genotypes that good or better.  The probabilities that natural processes would produce anything that good have to be so small that such an event would be 
expected less than once in the whole history of the Universe.

Over the years since 1998, there seem to have been several definitions of the scale and the probability:

1. A quantity which is fitness or a component of fitness, with the probability being simply
   the fraction of all genotypes in the initial population having that high, or higher, a value, or,
2. The same scale, but with the probability being instead the chance that natural evolutionary processes
   would produce that good a value, or higher, or
3. A more mysterious scale involving whether the genotype (or phenotype) could be produced by a small set of instructions.

The first one is related to a concept called Functional Information.  As I will show, the second is not at all useful.  The interesting new development is that Dembski and Ewert have moved to definition 3, resulting in a specification that no longer has any connection to Functional Information.  Functional Information has been thrown under the bus.

We'll discuss the first two one at a time; the third will be considered in another post ...
<!--more-->

1. In the original 1998 edition of <em>The Design Inference</em> William Dembski did not discuss using the design inference on genotypes that were argued to have arisen by natural selection and other ordinary evolutionary processes. (In section 2.3 he gives a "case study" of the "Creation-evolution controversy" but focuses that entirely on the origin of Life, not on evolution thereafter).  Four years later, he applied his inference to biological evolution in his work <em>No Free Lunch: Why Specified Complexity Cannot be Purchased without Intelligence</em>. There he gave these examples of the specification scales that are of interest in discussions of evolution:

> The specification of organisms can be cashed out in any number of ways. Arno Wouters cashes it out globally in terms of the <em>viability</em> of whole organisms. Michael Behe cashes it out in terms of the <em>minimal function</em> of  biochemical systems. Darwinist Richard Dawkins cashes out biological specification in terms of the <em>reproduction</em> of genes.  Thus, in <em>The Blind Watchmaker</em> Dawkins writes "Complicated things have some quality, specifiable in advance, that is highly unlikely to have been acquired by random chance alone.  In the case of living systems, the quality that is specified in advance is ... the ability to propagate genes in reproduction." (Dembski, <em>No Free Lunch</em>, 2002 and 2007, p. 148).

Dembski's criterion for detecting Design was finding complex specified information (CSI), where "complex" did not refer to the complicatedness of the organism, but just to having a sufficiently low probability of of the specified information happening under "chance".  
So the scale is the level of specification, and the probability is the fraction of the initial population that is at or beyond that level, makes the scale be Functional  Information. 


## Functional Information ##

Functional Information, a form of Specified Information, was discussed by Leslie Orgel in 1973.  He was trying to define a measure of the information that was useful to the organism, ruling out aspects of its phenotype that might require lots of elaborate description, but where the details did not particularly help the organism.  The concept was made more precise by Jack Szostak in a paper in _Nature_ in 2003 (<a href="https://www.nature.com/articles/423689a">here</a>), with a small correction by Hazen, Carothers, Griffin, and Szostak in _Proceedings of the National Academy of Sciences, USA_ in 2007 (<a href="https://www.pnas.org/doi/full/10.1073/pnas.0701744104">here</a>).

In all of those papers, the null distribution assigns equal probability to all possible sequences.  Thus if we have 
a region of 1000 nucleotides, it assumes that all 4<sup>1000</sup> possible sequences are equiprobable.  If we see a sequence which has 4^600 sequences with equal or higher fitness, then the functional information in that sequence is computed from the probability 4^600 / 4^1000 = 4^{-400}.  It is, in bits of information, minus the log to the base 2 of this probability, or -log2 (4^(-400)), which is 800 bits.

Functional Information is computed for any sequence, by setting the level to its position on the scale.  The amount of FI that we get by choosing that sequence is -log2(P), where P is the fraction of the initial population that is at or above that level on the scale.  So if we have chosen a sequence that is up at the 90th percentile, then P = 0.10 and Functional Information is  -log2(0.10) which is 3.322 bits.   A sequence that is only at the 10th percentile has -log2(0.90) = 0.152 bits.  There is no requirement that the calculation be done at some special point on the scale, such as where a function is detectable.  Each possible sequence has some amount of Functional Information.


## The problem with Functional Information ##

As sensible as Functional Information seems to be, it has one deficiency from the point of view of Dembski and Ewert.  Even when there is a very small probability that a randomly chosen sequence will be this good or better, there is no argument that natural evolutionary processes cannot find a sequence this good or better.  These evolutionary processes are not limited to making a single random choice.  They include natural selection, which can build up adaptations gradually.

Can a sequence with 800 bits of FI arise in a population by gradually fixing favorable alleles at 400 sites?  Unless a design advocate can present a sound argument that it is impossible (or extremely improbable) for this to happen, then observing 880 bits of FI is not evidence for Design Intervention.

In Dembski's 2002 book <em>No Free Lunch</em>, the probability of a sequence this good or better is described as the probability that it will arise by "chance" as opposed to "necessity".  From that it was unclear whether "chance" included  processes such as natural selection.  Or was that included in "necessity"?
When I wrote a  refutation of Dembski's 2002 argument, I showed an example where natural selection could increase Functional Information (the article is in <em>Reports of the National Center for Science Education</em> in 2007, [here](https://ncse.ngo/has-natural-selection-been-refuted-arguments-william-dembski)).

Functional Information, as used by Szostak and Hazen, was never intended to measure the evidence for Design.  They never assumed that high levels of FI could not be achieved by natural evolutionary processes.  But FI has been used in that way by ID advocates such as, for example, Kirk Durston.


## Durston's argument ##

In a post on his blog "Quest: Thoughts about God, Truth, and Beauty" in 2018, Durston, a clergyman who is a former engineer, argued in [a post on July 22, 2018](https://www.kirkdurston.com/blog/idscience) on "Why this scientist believes intelligent design was required for biological life" that:

> Design detection is firmly entrenched in science, including forensic science, defence research, SETI, archeology, and biology. In each area, a variety of methods are used, but the core aspect of all of them can be quantified in terms of functional information (defined in the literature by Szostak (1), Hazen et al., (2), and Durston et al. (3)). In layperson’s terms, functional information is the information required to produce a desired effect. A testable, verifiable, and falsifiable hypothesis that is highly useful to design detection can be stated as follows:
>
> Hypothesis: A unique property of intelligent minds is the ability to produce statistically significant levels of functional information as defined in the literature.
>
> A key word here is “unique”; intelligence is the only thing with enough intellectual horsepower to produce significant levels of functional information. The above hypothesis is certainly testable and falsifiable. To falsify it, all we need is to verify a natural, mindless process that will produce statistically significant levels of functional information. 
> ... the only option science has on the table that is observable, testable, and verified is intelligence. Almost anything, including dumping alphabet characters out of a box on to the floor, can produce functional information at trivial or non-significant levels. However, if one wishes to produce significant levels of functional information one needs something else in addition. Right now, the only option science has on the table that is observable, testable, and verified is intelligence. Although there are other creative scenarios as to how large quantities of functional information can be formed naturally, our failure to verify them suggests that they should be more properly classified as science fiction. (4)
>

An hour-long video presentation of his argument will be found [here](https://foclonline.org/talk/how-confident-can-we-be-genetic-information-required-intelligent-programmer).

Durston's calculation for Ubiquitin  alignments is described in his paper, which will be found <a href="https://tbiomed.biomedcentral.com/articles/10.1186/1742-4682-4-47">here</a>. It involves doing an alignment of all protein sequences that carry out a particular function, showing that

> Applying that method to a multiple sequence alignment consisting of 30,176 sequences for the second PDZ domain (5) reveals that this protein domain requires at least 140 bits of functional information. To understand how significant that is, the probability that natural processes could generate that level of functional information is 1 chance in 10 with 41 zeros after it.

This assumes that the lowest level of efficiency that we see now is the lowest that could be functional.  That does not follow: lower levels of function might help the organism, particular in early biochemistry where everything is goping more slowly.  In studies of random sequences of amino acids, and of random single-stranded RNA molecules, low but noticeable levels of catalytic activity are commonly found.

If the ancestors of this protein domain in the common ancestors of these species could carry out the function of this protein without containing this much Functional Information, we cannot rule out that natural selection could have gradually improved the efficiency of function until, in the latest common ancestor, the PDZ domain contained 140 bits of functional information. (For more on 
the PDZ domain see [its Wikipedia page](https://en.wikipedia.org/wiki/PDZ_domain)).

Durston's argument seems to be that a "significant" amount of Functional Information is one which cannot have accumulated step-by-step by natural selection.  In William Dembski's 2002 book, he sketches a "Law of Conservation of Complex Specified Information" which is supposed to somehow show that one must already have achieved CSI in previous generations in order to have it now. This would seem to be an argument that one cannot achieve a high degree of adaptation if you start from less adaptation. 
Exactly how this LCCSI is to be applied is unclear in Dembski's 2002 argument, and is not discussed in Durston's papers or his blog post, either.

During the years after Dembski's 2002 argument, many advocates of Intelligent Design frequently 
assumed that Dembski had somehow proven that a level of Functional Information great 
enough to constitute CSI could not be achieved by incremental natural selection. He hadn't.  But 
then the argument changed, or perhaps was clarified.


## Dembski's CSI argument clarified, or perhaps changed ##

In a 2005-2006 manuscript, which was published in 2005 in volume 7, number 2 of _Philosophia Christi_, William Dembski either clarified or changed the CSI argument.  The manuscript version may be found [here](https://billdembski.com/documents/2005.06.Specification.pdf). In Section 7 he makes it clear that "chance" includes processes such as natural selection:

> It follows that –log<sub>2</sub>[10<sup>120</sup>·ϕ<sub>S</sub>(T)·__P__(T|__H__)] > 1  if and only if __P__(T|__H__) < <sup>1</sup>/<sub>2</sub> 10<sup>-140</sup>, where __H__, as we noted in section 6, is an evolutionary chance hypothesis that takes into account Darwinian and other material mechanisms and T, conceived not as a pattern but as an event, is the evolutionary pathway that brings about the flagellar structure (for definiteness, let’s say the flagellar structure in E. coli). Is __P__(T|__H__) in fact less than  10<sup>-140</sup>, thus making T a specification?

The logic is now impeccable: once an adaptation is a "specification" in this sense, then by definition the probability of its occurrence by natural evolutionary processes is so low that such an event will occur fewer than one time in the entire history of the universe. Finding that the adaptation is a "specification" now guarantees us that it is so improbable that ordinary evolutionary mechanisms are in effect ruled out.

## ... to become useless ##

The problem is, neither Dembski nor Durston shows how to calculate the probability that natural evolutionary forces would achieve a result this improbable.  As far as I can see, the objective of the whole inference is:

1. to find an actual event 
that is so improbably good that from natural evolutionary processes we would expect one that good less than once in the history of the universe.
2. If we can find an event that has Complex Specified Information, by definition it will be one that has this low a probability with natural evolutionary processes.
3. So how do we find an event that has Complex Specified Information?
4. Why, by finding one that, with natural evolutionary processes, is this improbable!   (Then we can show that it has CSI, and that guarantees that it is this improbable).

But we have already shown that, when we did step 1.  Steps 2, 3 and 4, the CSI part are then completely unnecessary!  In the 2005 argument, no particular method was outlined to calculate the probability of the event with natural evolutionary processes.

So Functional Information has been discarded because it could possibly 
evolve.  It has been replaced by Specification 
which is defined as only present when it cannot be increased by natural 
evolutionary processes.  Specification can be used to establish 
that it is very improbable that the adaptation could arise by 
natural evolutionary processes.  But we can only establish that 
Specification is present by somehow already knowing that.

Thus the part about calculating whether we have CSI is irrelevant to the Design Inference.  After you have (somehow) established improbability, it is just a bit of relabeling.
This has been pointed out since about 2007 by many critics of 
Dembski's design inference.  For links, see [my 2013 article at The Skeptical Zone](http://theskepticalzone.com/wp/circularity-of-using-csi-to-conclude-design/), 
which cites arguments by "Keith S.", Elizabeth Liddle, and me at The Skeptical Zone, at PT, and at Uncommon Descent.

William Dembski's colleague and frequent co-author Winston Ewert 
conceded the point [in a post at Uncommon Descent](https://uncommondescent.com/intelligent-design/the-circularity-of-the-design-inference/) in 2014:

> CSI and Specified complexity do not help in any way to establish that the evolution of the bacterial flagellum is improbable. Rather, the only way to establish that the bacterial flagellum exhibits CSI is to first show that it was improbable. Any attempt to use CSI to establish the improbability of evolution is deeply fallacious.

## The new criterion ##

In Dembski and Ewert's new edition of _The Design Inference_, neither "functional information" nor "information, functional" appear in the Index. The works by Szostak and by Hazen, Carothers, Griffin and Szostak do not appear in the Bibliography.  Nor, even, does Kirk Durston.  All the previous ways in which Specified Complexity could be "cashed out" are gone too.  They have been thrown under the bus, gone because it turned out that they could not accomplish a Design Inference.

Only one remains, the calculation in terms of Algorithmic Specified Complexity (ASC), which is now the foundation of their criticism of evolutionary biology. This criterion involves Algorithmic Specified Complexity (ASC).  It measures the difference between the length of the algorithm that describes the adaptation and the algorithm that produces it.  If a short algorithm can produce a complex result, this indicates design.  There is apparently a conservation theorem that helps with this logic.

The ASC criterion has previously been discussed by Eric Hollowway, in discussions at Uncommon Descent and at The Skeptical Zone.  I have expressed my failure to follow those arguments at some length in [a 2019 post at Panda's Thumb](https://pandasthumb.org/archives/2019/12/Is-Algorithmic-Specified-Complexity-Useless-for-Analyzing-Evolution.html).  But now, with Dembski and Ewert's new book, presumably all these misunderstandings will be cleared up.

This post is the first part of my examination of Dembski and Ewert's book and its argument.  In the second part of this review, I will see whether my doubts have been cleared up.  So let me resume reading.


Thanks to Shallit, English, Matzke, Young (all their fault!)

