---
layout: article
title: Phylogenomics Produces New and Improved Tree of Birds
date: '2015-01-15 11:00:00 -0700'
author: Emily Thompson
mt_id: 7051
blog_id: 2
post_id: 7051
basename: phylogenomics_r
---
What do flamingoes and pigeons have in common? You might say very little---after all, flamingoes are long--legged, vibrantly--colored water--dwellers and the pigeons we often see inhabiting our cities appear to be completely the opposite. But according to a [study](http://www.sciencemag.org/content/346/6215/1320.full) published last month in _Science_ magazine, flamingoes and pigeons are more closely related than previously thought.

The groundbreaking new study used phylogenomics to compare the genes of 48 bird species. It is the first study of its kind to use whole genomes to construct the tree of birds, thousands of genes altogether. Prior studies attempting to resolve some of the more controversial bird relationships only examined 10--20 genes, meaning that the researchers in the new study had much more data to analyze and could be more confident in their results.

<figure>
<img src="/uploads/2014/flamingo%20and%20pigeon.jpg" alt="" width="600" height="250" style="" />
<figcaption markdown="span">
Flamingoes and pigeons are more closely related than you might think, according to a new study.     Images: Wikipedia

</figcaption>
</figure>

Scientists have been revising our understanding of the tree of birds using phylogenetics over the past decade. In 2006, when the cost to sequence a single genome was $10 million, [Ericson et. al.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1834003/) published one of the earliest phylogenetic bird papers, using 5 genes from 87 species for their analysis.  [Hackett et. al.](http://www.ncbi.nlm.nih.gov/pubmed/18583609) conducted another phylogenetic study of birds in 2008, when sequencing a genome had fallen to $1 million, this time using 19 genes from 169 species for comparison.  While these studies were able to divide modern birds into their larger classifications, some of the deeper relationships remained unresolved and the researchers were still unable to establish with certainty the timing of the bird "big bang"---the rapid and successive divergence of birds into many species. Scientists agree that this divergence occurred around the time of the mass extinction of non-avian dinosaurs about 65 million years ago, but they debate whether birds diversified before or after the mass extinction.

Jarvis et. al. (2014) found that the bird big bang happened immediately after the extinction, taking a relatively short 10--15 million years. Using thousands of genes, they could draw this and other conclusions with more certainty. But with so much data, the researchers could not use standard phylogenetic analysis tools; they needed to develop new ones. 

First of all, the team developed a custom algorithm for filtering out gene sequences that were unaligned or incorrectly aligned. Once the data from the aligned genes were gathered, the researchers used a new and more efficient [program](http://sco.h-its.org/exelixis/web/software/examl/index.html) (implementing a [maximum likelihood](http://en.wikipedia.org/wiki/Maximum_likelihood) model) to construct the phylogenetic relationships from the raw data. Finally, the researchers used a method called [data binning](http://en.wikipedia.org/wiki/Data_binning) to reduce errors that arise from the mathematical assumption that species divergence occurred instantaneously (when it more likely occurred gradually). Using these new methods and the added information from so many genes, the researchers were able to confirm and reject with more conviction some of the branches proposed by the previous studies, like the flamingo-pigeon relationship.

<figure>
<img src="/uploads/2015/Red-billed_Tropicbird_JCB.jpg" alt="" width="300" height="200" style="float:right;" />
<figcaption markdown="span">
The red-billed tropicbird is a member of the Tropicbird family, which is excluded from Pelecaniformes in the new phylogenetic tree of birds.    Image: Wikipedia

</figcaption>
</figure>

Along with this relationship and resolving the timing of the bird divergence, the researchers discovered several other important findings about birds. From some of the traits of the bird tree, they could conclude that the common ancestor of land birds was an apex predator, or a predator at the top of the food chain with no predators of its own. Also, the new tree of birds contradicts previous trees by excluding eagles and New World vultures from Falconiformes, the group containing falcons, kestrels, and other birds of prey. Similarly, the group Pelecaniformes excluded tropicbirds, a family of seabirds. Finally, the study revealed some characteristics about the way songbirds gained their vocal abilities with a gene that is similar to the one giving humans the ability to learn speech. This finding has gained a lot of recognition because of its potential application to the study of human speech.

As we've talked about in previous [posts](http://pandasthumb.org/archives/2014/11/-this-is-the-th.html), using a complete set of genomic data can give us a more accurate phylogenetic tree and more confidence in results like the ones we just mentioned, as long as the analytical methods are appropriate for big data sets. Because the researchers in this new study improved their methods to reduce the error and noise that can be found in big data sets, their tree is probably the most accurate tree of birds produced so far. But all mathematical models of natural phenomena are at least somewhat incorrect, so it is likely that researchers will make further improvements to the methods and the tree. 

Regardless, the field of phylogenetics is changing to realize the full potential of genome sequencing. As the tools to analyze these data improve, we'll continue to gain new insights into species relationships and evolution with greater confidence than ever before. Who knows what other surprising relationships we'll discover?

See the complete tree of birds [here](http://www.sciencemag.org/content/346/6215/1320/F1.large.jpg).

_This series is supported by NSF Grant #DBI-1356548 to RA Cartwright._
