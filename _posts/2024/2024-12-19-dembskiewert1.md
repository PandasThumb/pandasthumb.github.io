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
book <em>No Free Lunch: Why Specified Complexity Cannot be Purchased Without Intelligence".</em> 
This was much invoked as a major argument for Intelligent Design at the time of the 2005 Kitzmiller vs. Dover School Board trial.

The Specified Complexity argument involves genotypes arrayed 
on a scale.  A scale of what, we will be discussing.  The general strategy of the design inference 
is to find a region of the scale that is so improbable under "chance" that natural processes would be extremely unlikely to result in genotypes that good or better.  The probabilities that natural processes would produce anything that good have to be so small that such an event would be 
expected less than once in the whole history of the Universe.

Over the years since 1998, there seem to have been several definitions of the scale and the probability:

1. A quantity which is fitness or a component of fitness, with the probability being simply
   the fraction of all genotypes in the initial population having that high, or higher, a value.  Or,
2. The same scale, but with the probability being instead the chance that natural evolutionary processes
   would produce that good a value, or higher, or
3. A more mysterious scale involving whether the genotype (or phenotype) could be produced by a small set of instructions.

The first one is related to a concept called Functional Information.  As I will show, the second is not at all useful.  The interesting new development is that Dembski and Ewert have moved to definition 3, resulting in a specification that no longer has any connection to Functional Information.  Functional Information has been thrown under the bus.

We'll discuss these one at a time ...
<!--more-->

1. In the original 1998 edition of <em>The Design Inference</em> William Dembski did not discuss using the design inference on genotypes that were argued to have arisen by natural selection and other ordinary evolutionary propcesses (in section 2.3 he gives a "case study" of the "Creation-evolution controversy" but focuses that entirely on the origin of Life, not on evolution thereafter).  Four years later, he applied his inference to biological evolution in his work <em>No Free Lunch: Why Specified Complexity Cannot be Purchased without Intelligence</em>. There he gave these examples of the specification scales of interest in discussions of evolution:

> The specification of organisms can be cashed out in any number of ways. Arno Wouters cashes it out globally in terms of the <em>viability</em> of whole orgamisms. Michael Behe cashes it out in terms of the <em>minimal function</em> of  biochemical systems. Darwinist Richard Dawkins cashes out biological specification in terms of the <em>reproduction</em> of genes.  Thus, in <em>The Blind Watchmaker</em> Dawkins writes "Complicated things have some quality, specifiable in advance, that is highly unlikely to have been acquired by random chance alone.  In the case of living systems, the quality that is specified in advance is ... the ability to propagate genes in reproduction." (Dembski, <em>No Free Lunch</em>, 2002 and 2007, p. 148).

Dembski's criterion for detecting Design was finding complex specified information (CSI), where "complex" did not refer to the complicatedness of the organism, but just to having a sufficiently low probability of happening under "chance".  
Having a scale which is the level of specification makes these criteria forms of Functional Information. 


## Functional Information ##

Functional Information, a form of Specified Information, was defined by Leslie Orgel in 1973.  He was trying to define a measure of information that was useful to the organism, ruling out aspects of its phenotype that might require lots of elaborate description, but the details of which did not particularly help the organism.  The concept was made more precise by Jack Szostak in a paper in _Nature_ in 2003, with a small correction by Hazen, Carothers, Griffin, and Szostak in 2007.

In all of those papers, the null distribution assigns equal probability to all possible sequences.  Thus if we have 
a region of 1000 nucleotides, it assumes that all 4^1000 possible sequences are equiprobable.  If we see a sequence which has 4^600 sequences with equal or higher fitness, then the functional information in that sequence is computed from the probability 4^600 / 4^1000 = 4^{-400}.  It is, in bits of information, minus the log to the base 2 of this probability, or -log2 (4^(-400)), which is 800 bits.

## The problem with Functional Information ##

As sensible as Functional Information seems to be, it has one deficiency from the point of view of Dembski and Ewert.  Even when there is a very small probability that a randomly chosen sequence will be this good or better, there is no argument that natural evolutionary forces cannot find a sequence this good or better.

Can a sequence with 800 bits of FI arise in a population by gradually fixing favorable alleles at 400 sites?  Unless a design advocate can present a sound argument that it is impossible (or extremely improbable) for this to happen, then observing 880 bits of FI is not evidence for Design Intervention.

In Dembski's 2002 book <em>No Free Lunch</em>, the probability of a sequence this good or better is described as the probability that it will arise by "chance" as opposed to "necessity".  From that it was unclear whether "chance" included  processes such as natural selection.  Or was that included in "necessity"?
When I wrote a  refutation of Dembski's 2002 argument, I showed that natural selection could increase Functional Information (the article is in <em>Reports of the National Center for Science Education</em> in 2007, [here](https://ncse.ngo/has-natural-selection-been-refuted-arguments-william-dembski)).

Functional Information, as used by Szostak and Hazen, was never intended to measure the evidence for Design.  They never assumed that high levels of FI could not be achieved by natural evolutionary processes.  But FI has been used in that way by ID advocates such as Kirk Durston.


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

Durston's calculation involves doing an alignment of all protein sequences that carry out a particular function, showing that

> Applying that method to a multiple sequence alignment consisting of 30,176 sequences for the second PDZ domain (5) reveals that this protein domain requires at least 140 bits of functional information. To understand how significant that is, the probability that natural processes could generate that level of functional information is 1 chance in 10 with 41 zeros after it.

If the ancestors of this protein domain in the common ancestors of these species could carry out the function of this protein without containing this much Functional Information, we cannot rule out that natural selection could have gradually improved the efficiency of function until, in the latest common ancestor, the PDZ domain contained 140 bits of functional information. (For more on 
the PDZ domain see [its Wikipedia page]((https://en.wikipedia.org/wiki/PDZ_domain).

Durston's argument seems to be that a "significant" amount of Functional Information is one which cannot have accumulated step-by-step by natural selection.  In William Dembski's 2002 book, he sketchess a "Law of Conservation of Complex Specified Information" which is supposed to somehow show that one must already have previously achieved CSI in previous generayions in order to have it now. Exactly how this LCCSI is to be applied is unclear in the 2002 argument.

## Dembski's CSI argument clarified, or perhaps changed ##

In a 2005-2006 

It follows that –log2[10^120·ϕS(T)·__P__(T|__H__)] > 1  if and only if #P#(T|#H#) < (1/2) 10^(-140), where #H#, as we noted in section 6, is an evolutionary chance hypothesis that takes into account Darwinian and other material mechanisms and T, conceived not as a pattern but as an event, is the evolutionary pathway that brings about the flagellar structure (for definiteness, let’s say the flagellar structure in E. coli). Is P(T|#H#) in fact less than  10^(-140), thus making T a specification? 

----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------



Functional Information
   Orgel "specified information"
   Szostak 2003 Nature
   Hazen, Carothers, Griffin, and Szostak 2007 PNAS
   Kirk Durston too 2008 or so
   Kirk Durston in his blog, 2019:
(quote from Kirk Durston, in his blog "Quest. Thoughts about God, Truth, and Beauty"  at
(https://www.kirkdurston.com/blog/idscience)

Design detection is firmly entrenched in science, including forensic science, defence research, SETI, archeology, and biology. In each area, a variety of methods are used, but the core aspect of all of them can be quantified in terms of functional information (defined in the literature by Szostak (1), Hazen et al., (2), and Durston et al. (3)). In layperson’s terms, functional information is the information required to produce a desired effect. A testable, verifiable, and falsifiable hypothesis that is highly useful to design detection can be stated as follows:

Hypothesis: A unique property of intelligent minds is the ability to produce statistically significant levels of functional information as defined in the literature.

A key word here is “unique”; intelligence is the only thing with enough intellectual horsepower to produce significant levels of functional information. The above hypothesis is certainly testable and falsifiable. To falsify it, all we need is to verify a natural, mindless process that will produce statistically significant levels of functional information. 
... the only option science has on the table that is observable, testable, and verified is intelligence
Almost anything, including dumping alphabet characters out of a box on to the floor, can produce functional information at trivial or non-significant levels. However, if one wishes to produce significant levels of functional information one needs something else in addition. Right now, the only option science has on the table that is observable, testable, and verified is intelligence. Although there are other creative scenarios as to how large quantities of functional information can be formed naturally, our failure to verify them suggests that they should be more properly classified as science fiction. (4)

A scientific method for Design Detection

The hypothesis stated above provides the basis for a scientific method to test any effect to see if it required intelligence to produce.

Step One: Evaluate the level of functional information required to produce the effect

Step Two: Determine if the level of functional information is statistically significant

Step Three: If it is statistically significant, then we can infer that intelligence was required to produce the effect

Is this a “god-of-the-gaps” argument?

Oddly, I have people confidently assert that I have presented a “god-of-the-gaps” argument, which clearly it is not. A “god-of-the-gaps” argument always contains the following premise, either explicit or assumed …

“god-of-the-gaps” premise: If we don’t know what produced “X”, then God did it.

The scientific method I presented above is obviously devoid of such a premise. We actually know what can produce functional information—intelligence. It is an observable fact. We do it all the time whenever we send a text, write an essay, or build something. It is the only empirically verified option that science has today; other scenarios still remain in the category of unverified science fiction. Functional information is a positive indicator or ‘fingerprint’ of an intelligent mind.

What happens when we test biological life?
View fullsize
2nd PDZ Domain by Kirk Durston using MacPyMol
2nd PDZ Domain by Kirk Durston using MacPyMol

My first step was to develop and publish a method to estimate the level of functional information required to code for protein families—an essential requirement for life. (3) Applying that method to a multiple sequence alignment consisting of 30,176 sequences for the second PDZ domain (5) reveals that this protein domain requires at least 140 bits of functional information. To understand how significant that is, the probability that natural processes could generate that level of functional information is 1 chance in 10 with 41 zeros after it. Recent work by other scientists on the PDZ domain indicates that my method is quite conservative, but a conservative estimate is more preferable than an overestimate, since I wish to avoid false positives (having the digital information for a protein test positive for intelligent design when it might not be the case).  

Implications

The above example was for a protein domain only one third the length of an average protein. Using that result as a ballpark estimate, an average protein-coding gene will require very roughly 420 bits of functional information and even the simplest bacteria require hundreds of different genes.

Conclusion: 

The positive markers (fingerprints) of an intelligent mind are all over the genomes of life. Life tests positive for intelligent design utilizing the scientific method outlined above. We can conclude, therefore, that the fingerprints of intelligence are all over the DNA of life.

Additional Reading:

For a fascinating summary of how well science is doing in attempting to answer the origin of life question, I recommend this brief article by James Tour, internationally distinguished synthetic organic chemist, ‘Time Out’.

For an excellent book relating to this subject, read Stephen C. Meyer’s, Darwin’s Doubt.

Darwin Devolves, by Michael J. Behe.

References:

1.   Jack W. Szostak, ‘Molecular messages’, Nature, 423, (2003).

2.    Hazen et al., ‘Functional information and the emergence of biocomplexity’, PNAS, 104, Suppl 1, (2007).

3.    Durston et al., ‘Measuring the functional sequence complexity of proteins’, Theor Biol Med Model, 4:47, (2007).

4.    Durston, ‘Faith and Science: Part III—Fantasy in modern science’, 2019.

5.    PDB: 1GM1.
"  
END OF DURSTON MATERIAL


Sketch of the 2002 argument
   What were given as examples in the 1996 book, in the 2002 book
   Clarificiation (or change) of the argument in 2005-2006

   (Answers: Elsberry and Shallit 2003ff.  Elsberry and Wilkins 2002
    Me in 2007)




The new argument (ASC)
   ASC = CSI =  length - program length
   "chance" defined as everything else beside design
   no notion of "goodness = degree of adaptation"
   An example of CSI by natural causes: phyllotaxis (auxins)

How is Dembski going to use this to refute the improvement of 
adaptation by natural evolutionary processes?

Thanks to Shallit, English, Matzke, Young (all their fault!)

