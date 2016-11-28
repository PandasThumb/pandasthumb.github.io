---
layout: article
title: Database Resources for Genomics Researchers
date: '2005-04-18 08:22:01 -0700'
excerpt: An introduction to the wonderful world of on-line genomics.
author: Matt Brauer
mt_id: 900
blog_id: 2
post_id: 900
basename: database_resour
---
<img src="/uploads/2005/SGD-to-thumb.gif" alt="" style="float:left;" />
<img src="/uploads/2005/SGD-thumb.gif" alt="" />
Everyone with a serious interest in biology is aware of PubMed and Genbank, the major literature and sequence databases at NIH. But there are a large number of more specialized and professionally curated databases that allow the researcher unparalleled glimpses into an organism's genetics, molecular biology, physiology and evolution. Over the next few articles, I'd like to highlight some of these databases, showing how they are used and how critical they are for an understanding of the organism. These databases often have deep and highly technical content, but they also have much that is accessible to the non-specialist. And in genomics there are always more questions being asked than there are people to supply answers. As with planetary image analysis and observational astronomy, there may be some areas of opportunity for talented amateurs (especially those with a computational background) who wish to make a contribution to the field.

The first database I'll be highlighting is the one I use most -- several times a day, at least. In fact, I use it so much that the [Saccharomyces Genome Database](www.yeastgenome.org) is my browser homepage.

_Saccharomyces cerevisiae_ is the common baker's or brewer's yeast. It is a budding yeast, which means that it reproduces by extruding "daughter cells" rather than by undergoing fission and forming two equivalent offspring cells. Yeast are eukaryotic microbes: although they are free living single-celled organisms, they have all of the machinery, and most of the genes, that other eukaryotes -- including humans -- have. _S. cerevisiae_ is one out of the approximately 1.5 million extant species of fungi. It is a highly derived fungus, though, having lost its ability to form hyphae (the long filaments in which many fungi grow). It is a _prototroph_ meaning that, like other fungi, it needs to consume existing organic material, rather than photosynthesizing it. 

Baker's yeast is a valuable model organism for several reasons. Although highly derived, it is nevertheless the prototypical eukaryote, unencumbered by the requirements of multicellularity. Its genetics are lovely and elegant: one mode of reproduction is via an _ascus_, or membrane bound sac that contains the four spores that result from meiosis. This means that all of the products of a single meiosis are kept together, and the researcher can keep track of crossover events with extreme ease. Most genetic traits can be mapped to arbitrary levels of precision, by examining larger numbers of spores.

Yeast have roughly 6500 genes (about 5-fold fewer than do humans), many of which have clearly identifiable homologs in multicellular plants and animals. The genome has been completely sequenced, and functions have been verified for about 65% of these (see [Genome Snapshot](http://www.yeastgenome.org/cache/genomeSnapshot.html)). There are well-developed microarray platforms for analyzing the gene expression, chromosome organization and complement of chromosome binding proteins in _Saccharomyces_ cultures (see the [Stanford](http://smd.stanford.edu) or [Princeton](http://puma.princeton.edu) microarray databases.) Every gene (more or less) in _Saccharomyces_ has been systematically deleted to result in libraries of knock-out mutants. Other strain collections that take advantage of the tractability of yeast are constantly in development.

If you are interested in cellular physiology, molecular biology or microbial population biology, it's hard to see how there can be a better model system.

[SGD](http://www.yeastgenome.org) is the central clearinghouse for all of this information. With the database you can explore the genetic and chromosomal locations and properties of a gene, the conditions under which it is expressed, the properties, interactions and cellular location of its product, and the relevant recent literature from which our knowledge of the gene is derived.

As an example, look at the gene known as [Leu3](http://db.yeastgenome.org/cgi-bin/locus.pl?locus=leu3). Its systematic name is YLR451W, meaning it's on the right ("R") arm of chromosome 12 ("L"), the 451st gene from the centromere, transcribed in the plus direction (from the "Watson" strand, "W"). Leu3 is a regulator of the branched chain amino acid synthesis pathway. It's a transcription factor, localized primarily to the nucleus. Systematically deleting this gene results in a viable strain, although it is sensitive to certain conditions and is somewhat auxotrophic for leucine. From this page, you can learn what domains the Leu3 protein has, what other proteins it interacts with, and what other genes it regulates. If you follow the link to "Expression Connection Summary" under "Functional Analysis" you can see what other genes are co-expressed with Leu3 (not many, in this case) in the expression studies done to date.

In short, there is several hours worth of exploration possible for this single gene, without even entering the primary literature.

SGD is a valuable tool for the evolutionary biologist as well. The front page includes links to alignment tools for comparing _Saccharomyces_ gene and protein sequences with those of other sequenced fungi. There is also a "synteny  viewer" that displays gene organization and orientation among a group of diverged yeast species. It is from this data, in part, that the conclusion has been made that the _S.cerevisiae_ genome is the product of a genome-wide duplication, followed by divergence and specialization of individual paralogs (about which I may have more to say in a later post).

The depth of knowledge about this beautiful and useful organism is profound, yet I am daily made aware of how much more there is still to learn. Tools like SGD allow us to get beyond vague abstractions about biology, and to delve into the _details_ of the cell's processes. It is the appreciation and understanding of this detail that leads to real progress in science.

---

In future posts I plan to look in more detail at the microarray databases, some of the metabolic pathway databases, and at the "Tree of Life" web. I also hope to go into more detail about the genome duplication story and the role genome rearrangement plays in evolution. I welcome suggestions for other topics as well.
