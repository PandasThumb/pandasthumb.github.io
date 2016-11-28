---
layout: article
title: Correction to Liu & Ochman paper
date: '2007-06-22 13:21:09 -0700'
author: Nick Matzke
mt_id: 3099
blog_id: 2
post_id: 3099
basename: correction_to_l
---
A correction to the paper by Liu & Ochman, "[Stepwise formation of the bacterial flagellar system](http://www.pnas.org/cgi/content/full/104/17/7116)," was [just published](http://www.pnas.org/cgi/content/abstract/0705172104v1) in _PNAS_.  PT readers will recall that I and others had many problems with the methods and conclusions of this paper (see PT posts [1](/archives/2007/04/flagellum-evolu-1.html), [2](/archives/2007/04/update-on-pnas.html), [3](/archives/2007/04/flagellum-evolu-3.html) for commentary and [4](/archives/2007/05/flagellum-evo-f.html) for comprehensive links).  The correction and brief comments are below.

> **Correction**
> 
> **EVOLUTION.** For the article "Stepwise formation of the bacterial flagellar system," by Renyi Liu and Howard Ochman, which appeared in issue 17, April 24, 2007, of _Proc Natl Acad Sci USA_ (104:7116--7121; first published April 16, 2007; [10.1073/pnas.0700266104](http://dx.doi.org/10.1073/pnas.0700266104)), the authors note that on page 7121, right column, line 4, the phrase "by using the Bl2seq program (with default options)" should instead read: "by using the Bl2seq program (with the '-F F' option)." Additionally, in the Fig. 3 legend, line 3, the cutoff value 10<sup>-4</sup> should instead appear as 9 x 10<sup>-4</sup>. Applying this cutoff yields a total of 70, not 24, hits of flagellar core proteins to nonflagellar proteins in the entire _E. coli_ K-12 genome. These errors do not affect the conclusions of the article.
> 
> [www.pnas.org/cgi/doi/10.1073/pnas.0705172104](http://www.pnas.org/cgi/doi/10.1073/pnas.0705172104)

Unfortunately the correction leaves out the well-known fact that removing the default filters (the "-F F" option on bl2seq) means that many homology hits with moderate e-values (like the paper's original e=10<sup>-4</sup> cutoff, and the even weaker revised cutoff of basically 10<sup>-3</sup>) will be spurious hits and not truly indicative of homology.  How one can then say that this doesn't effect the conclusions, when the main conclusion was that all of the core flagellar proteins are homologous (which was [what the paper said](/archives/2007/04/update-on-pnas.html), going beyond the long-known and well-established fact that many of the axial proteins are homologous), is beyond me.  

Additionally, if the number of nonflagellar homologs to core flagellar proteins in the _E. coli_ genome is now 70 instead of 24, due to the slightly revised cutoff, (1) this just goes to show how unstable the proffered homology identification technique is (and the correction didn't deal with the [database size issue](/archives/2007/04/flagellum-evolu-3.html) at all), and (2) it is even more obscure than before to say, as the original paper did, that "the similarities among core proteins to one another are more common and, on average, stronger than to nonflagellar proteins" -- which seems to have been the main reason in the first place for the contention that all 24 core flagellar proteins were related by duplication from a single ancestral gene.  I guess the paper was arguing that 24 flagellar homologs out of 24 core flagellar proteins is a higher percentage than 24 (now 70) nonflagellar homologs out of 4,000 nonflagellar proteins, but how this is supposed to show that "core flagellar proteins all came from one gene" is a better idea than "core flagellar proteins were coopted from diverse sources" remains baffling.

Over the course of the original discussion of the Liu & Ochman paper the limitations of the blog format for critiquing published scientific papers have become more apparent to me. Although I still think blog critiques are important for public education and for rapidly spreading information within a community activists who already know a blogger, they are far less useful within the general scientific arena, where in the end one party has their conclusions published in _PNAS_ and the other is just some random guy on the 'net.  So mostly I will wait for further publications in the scientific literature to sort this all out.
