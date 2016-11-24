---
layout: article
title: Scale Free Networks
date: '2004-07-29 22:50:04 -0700'
author: PvM
mt_id: 274
blog_id: 2
post_id: 274
basename: scale_free_netw_1
---
RNA networks, protein networks all seem to exhibit a _[scale-free](http://en.wikipedia.org/wiki/Scale-free_network)_ structure. I intend to show that this _scale free_ structure and other aspects of these networks not only can be expected from simple evolutionary principles but also how this scale free structure helps explain such issues as _modularity_, _robustness_, and _evolvability_. 

Characteristics of _scale-free_ networks

As is well known DNA sequences map to RNA or protein structures. 


* There are far more sequences than structures
* Contains few highly-connected motifs and many less connected nodes
* Motifs have a neutral network which extends throughout sequence space

For these frequent structures, their networks expand through sequence space, this means that gor any given fold, one can traverse through sequence space (that is change every nucleotide position) without changing the structure of the fold. In addition these structures are close in the sense that any such structure is within a small distance from any random sequence.

These findings have significant implications for our understanding of evolution.

> The existence of extended and connected neutral networks in RNA sequence space was proven by an elegant experiment recently published by Erik Schultes and David Bartel \[60\]. They designed an RNA sequence which forms two known structures (of chain length (l = 88) with different catalytic activities, an RNA ligase evolved in the laboratory \[61\] and a natural cleavage ribozyme isolated from hepatitis delta virus RNA \[62\]. The two structures have no base pair in common. Folding the synthesized chimeric sequence into structures yielded indeed both activities, although they were substantially weaker than those of the reference ribozymes, the ligase and the cleavage ribozyme, respectively. Only two or three selected point mutations or base pair exchanges are required, however, to reach full catalytic efficiency. Still, the two optimzed RNA molecules have a Hamming distance around forty from their reference sequences. Then, Schultes and Bartel \[60\] explored further the mutational neighborhoods and found neutral paths of Hamming distance about 40, by preparing and analyzing series of RNA sequences, in which neighboring sequences differ in a single base or base pair only. Without interruption these neutral paths lead from the RNA with both catalytic activities to the two reference ribozymes.

[A Testable Genotype-Phenotype Map: Modeling Evolution of RNA Molecules](http://www.tbi.univie.ac.at/~pks/PUBL/02-pks-004.pdf)

60: E. A. Schultes and D. P. Bartel. One sequence, two ribozymes: Implications or the emergence of new ribozyme folds. Science, 289:448{452, 2000.

> We describe a single RNA sequence that can assume either of two ribozyme folds and catalyze the two respective reactions. The two ribozyme folds share no evolutionary history and are completely different, with no base pairs (and probably no hydrogen bonds) in common. Minor variants of this sequence are highly active for one or the other reaction, and can be accessed from prototype ribozymes through a series of neutral mutations. Thus, in the course of evolution, new RNA folds could arise from preexisting folds, without the need to carry inactive intermediate sequences. This raises the possibility that biological RNAs having no structural or functional similarity might share a common ancestry. Furthermore, functional and structural divergence might, in some cases, precede rather than follow gene duplication.

[<img src="http://www.sciencemag.org/content/vol289/issue5478/images/medium/se2708688003.gif" alt="" />](http://www.sciencemag.org/content/vol289/issue5478/images/large/se2708688003.jpeg)

> Figure 3. A close apposition of two ribozyme neutral networks. (A) Alignment of sequences spanning the distance between the two prototype ribozymes (25). Each sequence differs from its neighbors at no more than two residues. Each variant is named on the basis of whether it catalyzes ligation (LIG) or self-cleavage (HDV) and the number of residues that differ from the intersection sequence (boxed residues). The prototype ligase (LIG P) and HDV (HDV P) sequences are at the top and bottom of the alignment, respectively, with their secondary structures annotated as in Fig. 1. Positions are numbered with respect to the intersection sequence (INT), as in Fig. 2A. (B) Activities of the ribozyme sequences aligned in (A). Self-ligation activity is plotted in blue; self-cleavage activity is plotted in red. The horizontal axis represents the number of residues that differ from the intersection sequence. The vertical axis indicates the reaction rate of each ribozyme, normalized to that of the respective prototype ribozymes (37). The relative rate for uncatalyzed cleavage with formation of a cyclic phosphate (17) is indicated by the long-dashed line. The relative rates for nonenzymatic, template-directed oligonucleotide ligation (17) are indicated by the short-dashed line (ligation with formation of a 2',5'-linkage) and the dotted line (ligation with formation of a 3',5'-linkage). Both ligation and cleavage rates are plotted for the intersection sequence, demonstrating an intersection of the two ribozyme networks.

Bartels' findings were confirmed in

HUANG, Z., SZOSTAK, J. W. (2003). [Evolution of aptamers with a new specificity and new secondary structures from an ATP aptamer](http://www.rnajournal.org/cgi/content/abstract/9/12/1456). RNA 9: 1456-1463 

> It has been recently demonstrated that two completely unrelated ribozymes with different folds and catalytic functions can be evolved from a single RNA via a series of neutral mutations (Schultes and Bartel 2000). Our experimental observations provide another example to suggest that RNA structures may tend to evolve through the accumulation of mutations followed by jumps to distinct structures with novel functions.

The discovery of the scale-free character of the protein domain universe is striking and represents the main result of this paper. It has immediate evolutionary implications by pointing to a possible origin of all proteins from a single or a few precursor folds--a scenario akin to that of the origin of the universe from the Big Bang. An alternative scenario, whereby protein folds evolved de novo and independently, would have resulted in random PDUG (similar to the one shown in Fig. 3b) rather than that observed in the scale-free one. 

[Expanding protein universe and its origin from the biological Big Bang ](http://www.pnas.org/cgi/content/full/99/22/14132)  by Dokholyan  et al, PNAS, October 29, 2002, vol. 99, no. 22, 14132-14136

<img src="http://www.pnas.org/content/vol99/issue22/images/medium/pq2024979003.gif" alt="" />

Fig 3a,b 

The authors then proceeded to use a simple model of random duplication but in addition the authors mention that _Importantly, our evolutionary time step is large enough to allow many mutations as well as more dramatic changes in sequences such as insertions/deletions or shuffling of structural elements to occur in the offspring protein such that sequence similarity with the parent protein is lost (4). Such mutations may or may not lead to significant structural divergence of the offspring from its parent protein because the landscape in sequence space is complex (4)._

[<img src="http://www.pnas.org/content/vol99/issue22/images/medium/pq2024979004.gif" alt="" />](http://www.pnas.org/content/vol99/issue22/images/large/pq2024979004.jpeg)

> Fig 4. Proposed model of domain evolution. (a) Gene duplication (A  A + B): the structural similarity between A and B is defined by some function w = (A,B) (e.g., RMSD or DRMSD). (b) If structural similarity _w_ = (A,B) is greater than some critical value wmax, then we add a link connecting A and B. If structural similarity is above _w<sub>max</sub>_, a new fold family is born. (c) The second generation progeny C (A -&gt;B -&gt; C) can connect to its grandparent A, if there is structural similarity between A and C: _w<sub>AC</sub>_ le _w<sub>max</sub>_. (d) With each time step, mutations diverge protein structures from each other; i.e., structural similarity changes by some value D: _w_  _w'_ = _w_+ D(D = 10<sup>-4</sup>). If _w'_ &gt; _w<sub>max</sub>_, we remove the edge between corresponding proteins. (e) The dependence of the size of the largest cluster in the graphs generated by our model on _w<sub>max</sub>_, averaged over 20 realizations. (f) The probability of the node connectivity in our model, averaged over 102 realizations. Apart from the finite-size effects at large k, it exhibits power law distribution with exponent   alpha ~ 1.6.

# Discussion

The nature of the protein/RNA networks indicates that homology may have to involve not just sequence similarity but also structure similarity. In other words, due to the nature of the neutrality of these networks, sequences can 'diffuse' while still maintaining structural similarity. Thus, instances in which convergent evolution was based upon sequence dissimilarities may need to be revisited.
Given the (recent) findings that there are many proteins with undetectable sequence similarities which however share a similar folding structure, this issue may be quite important in understanding the full details of evolution.

# Relevant links

The scientific literature on _scale free_ networks is very extensive. I will focus on just a few of the relevant papers.
Relevant authors include: [Peter Schuster](http://www.tbi.univie.ac.at/~pks/), [Andreas Wagner](http://samba.unm.edu/~wagnera/), [Walter Fontana](http://www.santafe.edu/~walter/), and [Barabasi](http://www.nd.edu/~alb/)

Preferential attachment in the protein network evolution. Eisenberg E, Levanon EY.Phys Rev Lett. 2003 Sep 26;91(13):138701.  Related Articles, Links  

> The Saccharomyces cerevisiae protein-protein interaction map, as well as many natural and man-made networks, shares the scale-free topology. The preferential attachment model was suggested as a generic network evolution model that yields this universal topology. However, it is not clear that the model assumptions hold for the protein interaction network. Using a cross-genome comparison, we show that (a) the older a protein, the better connected it is, and (b) the number of interactions a protein gains during its evolution is proportional to its connectivity. Therefore, preferential attachment governs the protein network evolution. Evolutionary mechanisms leading to such preference and some implications are discussed.

[Evolutionary dynamics of protein networks](http://citebase.eprints.org/cgi-bin/citations?id=oai:arXiv.org:cond-mat/0207711), Berg, Johannes; Lässig, Michael; Wagner, Andreas

[Scale-Free / Power Law Networks](http://www.sfu.ca/~insna/INSNA/Hot/scale_free.htm)

[Self organized networks at Notre Dame](http://www.nd.edu/~networks/)
