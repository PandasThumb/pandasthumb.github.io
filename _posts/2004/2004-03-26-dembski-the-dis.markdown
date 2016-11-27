---
layout: article
title: 'Dembski: The displacement problem and the law of conservation of CSI'
date: '2004-03-26 19:00:00 -0700'
author: PvM
mt_id: 10
blog_id: 2
post_id: 10
basename: dembski_the_dis
---
Dembski invited specific questions and criticisms to his latest book. I have chosen to address his claims about "No free lunch" and the displacement hypothesis. In order to make my argument I will start with Mark Toussaint's thesis found at:

<a href="http://www.neuroinformatik.rub.de/PEOPLE/mt/work/">Toussaint's thesis</a> and other relevant papers.



<!--more-->

Some relevant definitions

<a href="http://www.iscid.org/encyclopedia/Specified_Complexity">Specified Complexity</a>

<blockquote>
Specified complexity consists of two important components, both of which are essential for making reliable design inferences. The first component is the criterion of complexity or improbability. In order for an event to meet the standards of Dembski's theoretical notion of specified complexity, the probability of its happening must be lower than the Universal Probability Bound which Dembski sets at one chance in 10^150 possibilities. 

The second component in the notion of specified complexity is the criterion of specificity. The idea behind specificity is that not only must an event be unlikely (complex), it must also conform to an independently given, detachable pattern. Specification is like drawing a target on a wall and then shooting the arrow. Without the specification criterion, we'd be shooting the arrow and then drawing the target around it after the fact. 

</blockquote>

While there is a claim of rigorous formulation of this concept, others have pointed out that the definition is neither rigorous nor empirically tested.

See <a href="http://www.talkreason.org/articles/eandsdembski.pdf">Information theory, evolutionary computation, and Dembski's "complex specified information" </a> by Wesley Elsberry and Jeffrey Shallit

<a href="http://www.talkreason.org/articles/Algorithm.cfm">The "Algorithm Room": Can the "Design Inference" Catch a Cheater? </a> by Wesley Elsberry

and

<a href="http://www.talkorigins.org/design/faqs/nfl/">Not a Free Lunch But a Box of Chocolates</a> A critique of William Dembski's book No Free Lunch
by Richard Wein

More about the displacement idea:

<a href="http://www.talkreason.org/articles/wre_id_proxy.cfm">What Does "Intelligent Agency by Proxy" Do for The Design Inference?</a>


<a href="http://www.arn.org/docs/dembski/wd_logic_credulity.htm">Evolution's Logic of Credulity: An Unfettered Response to Allen Orr</a> by William Dembski


M. Toussaint (2003): The evolution of genetic representations and modular neural adaptation. Submitted (in April) version of my PhD thesis; a revised, official version published as a booklet will follow late this year. 

How do these findings tie in with ID? Given the theoretical foundations for the evolution of genetic representations can we trace how CSI, complexity and information arises in the genome? And how it ties in with No Free Lunch and the displacement problem?

Toussaint argues

       <blockquote>Eventually, this allows an information theoretic interpretation of evolutionary dynamics: The information that is given by the selection or non-selection of solutions is implicitly accumulated by evolutionary dynamics and exploited for further search. This information is stored in the way phenotypes are represented. In that way evolution implicitly learns about the problem by adapting its genetic representations accordingly.</blockquote>p. 15 Thesis

Mark's approach captures how the genome accumulates information        <blockquote>
In terms of information theory, sigma-evolution minimizes the Kullback-Leibler divergence between the exploration distribution and the exponential (Boltzmann) fitness distribution, and minimizes the entropy of exploration. It describes the accumulation of information given by the fitness distribution into genetic representations.</blockquote>Mutations and crossovers are explorative in nature but because of this, they reduce mutual information, EDA's (estimation of distribution algorithms) however preserve or amplify structural information. According to Toussaint, the evolutionary process is a succession of increase and decrease in entropy in the population. 

Toussaint concludes

       <blockquote>
As a benefit we can formalize the relation and conceptual similarity between natural evolution, evolutionary algorithms, and the generic heuristic search scheme that we introduced as a basic information theoretic paradigm of what it means to "learn the structure of a problem and exploit it for future exploration." All three of them are based on a process of accumulating information--in a more or less explicit way. Concepts of self-adaptation or derandomized adaptation of probabilistic search strategies in evolutionary computation become comparable to the evolution of exploration strategies in natural evolution. </blockquote>Toussaint also discusses the much referenced 'No Free Lunch theorems' and concludes

       <blockquote>
The theorem was formalized and generalized in many ways. Schuhmacher, Vose, & Whitley (2001) generalized it to be valid for any subsets of problems that are closed under permutation. Igel & Toussaint (2003c, 2003b) derived sufficient and necessary conditions for No Free Lunch when the probability of permutations is not equally but arbitrarily distributed. In that paper we <b>also argued that generally the necessary conditions for No Free Lunch are hardly ever fulfilled.</b>
</blockquote>The latter one is quite relevant. Toussaint states 'Only when making this assumption, evolutionary search has a chance to learn about and exploit this structure of the distribution of good solutions and efficiently explore the space of solutions."

The question now becomes how evolution makes these assumptions?

Toussaint again

       <blockquote>
However, in natural evolution mutation operators are not designed by some intelligence. A central question arises: What does it mean to "learn" about the problem structure and exploit it? How in principle can evolution realize this? The answer we will give is that the implicit process of the evolution of genetic representations allows for the self-adaptation of the "search strategy" (i.e., the phenotypic variability induced by mutation and recombination). To some degree, this process has been overlooked in the context of evolutionary algorithms because complex, non-trivial (to be rigorously defined later) genetic representations (genotype phenotype mappings) have been neglected by theoreticians. This chapter tries to fill this gap and propose a theoretical framework for evolution in the case of complex genotype-phenotype mappings focusing at the evolution of phenotypic variability. The next section lays the first cornerstone by clarifying what it means to learn about a problem structure.
</blockquote>This seems quite relevant to Dembski's objections 

      <blockquote>
What's more, the evolutionary algorithms employing these fitness functions were "no prior knowledge" algorithms. "No prior knowledge" simply means that the algorithm has no additional information for finding a solution other than what it gets from the fitness function. In general, arbitrary, unconstrained, maximal classes of fitness functions each seem to have a No Free Lunch theorem for which evolutionary algorithms cannot, on average, outperform blind search.
</blockquote>[<a href="http://www.designinference.com/documents/2002.12.Unfettered_Resp_to_Orr.htm">Evolution's Logic of Credulity:  An Unfettered Response to Allen Orr</a>

Dembski then continues

      <blockquote> To be sure, fitness in biology varies with time. As organisms evolve and the environment changes, what the environment deems fit changes as well. But what exactly constrains the transition from one fitness landscape or function to the next? If there is no constraint, then we are in the position of Wolpert and Macready's Theorem 2, with evolutionary algorithms proceeding independently of their progress to solution and thus unable to outperform blind search (which means that even with 3.5 billion years of evolution, it's going to be vastly improbable that the evolutionary algorithm approaches a solution). Conveniently, Orr doesn't tell us what constrains the transitions. Presumably nature, unprogrammed and unguided, spontaneously gives rise to the right and needed transitions between successive fitness landscapes, thereby ensuring a form of complexity increasing evolution. But that is precisely what needs to be explained. Yet for Orr there is no problem, only boundless optimism. 
</blockquote>Toussaint may provide the answers to Dembski's questions here. Boundless optimism may have been justified here.

This also brings me to the logical question about Dembski's displacement argument, IF evolutionary algorithms can increase CSI in the genome through displacement of said CSI from its environment how is this different from CSI displaced by intelligent design when using artificial selection? Using the <a href="http://www.talkreason.org/articles/Algorithm.cfm">Wesley Algorithm room</a>, I would argue that it is impossible to differentiate between the two cases.

In other words I am arguing that either neither intelligent design nor algorithms can creates CSI but they merely displace CSI or that both can create CSI. There is no privileged position for intelligent design in the creation/displacement of CSI. Note that Dembski has at most argued that in closed systems CSI can only decrease but for open systems the situation is far less compelling and in fact there seem to be no foundation for the claim that ID is somehow able to circumvent Dembski's law of conservation of information.

Let me take this a step further and tie in Toussaint's thesis with empirical data. Toussaint has found that neutrality is essential for evolvability. And what do we find? DNA, protein networks, regulatory networks appear to the scale free with neutral pathways running throughout sequence space. This means that evolution can explore sequence space in a neutral fashion maintaining robustness and providing for evolvability at the same time. Combine this with the findings that simple evolutionary models can explain the statistical distributions and we come to realize how evolution managed to be so 'succesful'.

Now it's time to address Toussaint's paper on Neutrality and self-adaptation 

 <blockquote>
<b>Abstract</b>. Neutral genotype-phenotype mappings can be observed in natural evolution
and are often used in evolutionary computation. In this article, important aspects of such encodings are analyzed. First, it is shown that in the absence of external control neutrality allows a variation of the search distribution independent of phenotypic changes. In particular,
<b>neutrality is necessary for self-adaptation</b>, which is used in a variety of algorithms
from all main paradigms of evolutionary computation to increase efficiency. Second, the average number of fitness evaluations needed to find a desirable (e.g., optimally adapted) genotype depending on the number of desirable genotypes and the cardinality of the genotype space is derived. It turns out that this number
increases only marginally when neutrality is added to an encoding presuming that the fraction of desirable genotypes stays constant and that the number of these genotypes is not too small.
</blockquote>And Toussaint's 2003 paper On the evolution of phenotypic exploration distributions

 <blockquote>
Abstract. In nature, phenotypic variability is highly structured with respect to correlations between different phenotypic traits. In this paper we argue that this structuredness can be understood as the outcome of an adaptive process of phenotypic exploration distributions, similar to the adaptation of the search distribution in heuristic search schemes or Estimation-of-Distribution Algorithms. The key ingredient of this process is a non-trivial genotype-phenotype mapping: We rigorously define non-triviality, in which case neutral traits (as a generalization of strategy parameters) influence phenotype evolution by determining exploration distributions. Our main result is the description of the evolution of exploration distributions themselves in terms of an ordinary evolution equation. Accordingly, the fitness of an exploration distribution is proportional to its similarity (in the sense of the Kullback-Leibler divergence) to the fitness distribution over phenotype space. Hence, exploration distributions evolve such that dependencies and correlations between phenotypic variables in selection are naturally adopted by the way evolution explores phenotype space.

</blockquote>

Followup:

It was pointed out to me that the reason why intelligent designers are not held by these laws of conservation is because they are by definition excluded. This is due to Dembski's somewhat unusual definition of information which is nothing more than the probability of a particular event occuring by natural processes. 

In this light LCI seems to be somewhat irrelevant, not to mention that it is not even a conservation law...

Dembski's use of the term information seems to be totally at odds with common definitions. In fact it seems that Dembski's information is nothing more than the good old 'probability argument' in a new jacket.


I will see what Dembski is saying in his latest book. It seems unlikely that such a discussion will take place on these boards :-)

Too risky...

Since regularity and chance (natural processes) can not generate CSI, this means that intelligent designers cannot use such processes to generate CSI either, suggesting to me that CSI must be supernatural. Is that the argument Dembski needs to explain? 


Dembski also needs to explain that in light of his admissions that natural processes can displace CSI, how we differentiate objects with displaced CSI from intelligently designed objects? Wesley Elsberry's challenge with the algorithm room remains unaddressed so far by ID proponents.


...
I read his chapter on the LCI, nothing much new really. And this book is supposed to answer the toughest questions?


Mark Perakh in his hard hitting "Unintelligent Design" exposes many of the flaws and short comings of these arguments. 

    <blockquote>
There seem to be several points Dembski left without clarification.  Dembski does not provide any definition of  "closed system of natural causes."  In particular, does Dembski include intelligent human agents into a "closed system of natural causes?"  Human minds are usually viewed as  "natural" but can very well generate "complex specified information,"  including meaningful texts. Hence, if human intelligent agents are to be included in the "closed system of natural causes,"  Dembski's proposed law seems to be wrong.  If,  though, Dembski's suggested law implies that the human mind is not natural, it would seem to be contrary to the common interpretation of the word "natural."
</blockquote><a href="http://www.nctimes.net/~mark/bibl_science/dembski.htm#6b)%20Information%20as%20a%20tool%20in%20Dembskis%20theory;%20Dembskis%20Law%20of%20Conservation%20of%20Information.">Perakh</a>


Fred Heeren in "the lynching of Bill Dembski" asks

   <blockquote>
If the creation of new information is such a problem, you ask, then why isn't this common knowledge in our institutions of higher learning? And if intelligent design is such an obvious answer, why haven't we heard more about this before? For one thing, no one's ever gotten far enough along to test it before. But William Dembski is getting close.
</blockquote>Is Dembski getting close or has Dembski redefined the concept of information to something irrelevant? Is Dembski getting close? Scientifically speaking I have all reason to doubt this. Is intelligent design such an obvious answer? Is information a problem for evolutionary science? As Dembski himself admits, evolutionary processes can displace CSI thus CSI in an organism is no problem for evolution. Dembski may argue that the origin of CSI is a problem but that is irrelevant here.


Heeren ends with the following

  <blockquote>
 

Reply: Lewis Barker should read Dembski's monograph, in which he lays out rigorous, mathematical tests to identify complex specified information and to show how CSI always implies intelligent design.
</blockquote>My challenge to ID proponents is to show that Dembski indeed has done this 'rigorous mathematical tests', 'CSI always inplies intelligent design'. So far the lack of any supporting application of these 'rigorous tests' seem to be somewhat problematic for this claim.

Or as Dembski himself stated it so well

  <blockquote>
This, of course, is precisely what Dembski has been preparing to do with his research center. He is laying the groundwork to hire molecular biologists to do research on protein structure and protein folding to test ID. "What has to happen," says Dembski, "is that ID has to generate research that's more fruitful for biology than neo-Darwinism."
</blockquote>


So far that seems to yet to happen. And this is quite significant since the lack of scientific success would severely undermine the legal strategy of ID.
