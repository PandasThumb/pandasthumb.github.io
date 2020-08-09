---
layout: article
title: 'SISRS: A new way to analyze genomic data'
date: '2015-03-12 11:06:00 -0700'
author: Emily Thompson
mt_id: 7080
blog_id: 2
post_id: 7080
basename: if_you_follow_n
---
Remember the two studies published at the end of last year that produced groundbreaking evolutionary trees of [birds](http://pandasthumb.org/archives/2015/01/phylogenomics-r.html) and [insects](http://pandasthumb.org/archives/2015/01/delving-into-th.html)? The researchers in these studies used data from whole sequenced genomes to construct these more reliable trees. This is a practice that is somewhat novel but gaining importance in phylogenomics. But we've talked about how large data sets, like genomes, can lead to incorrect conclusions if analyzed improperly. How did the researchers avoid this problem?

In the last [post](http://pandasthumb.org/archives/2015/02/imagine-taking.html), we discussed the two major methods of improving genomic analysis. First, scientists can determine the informative subset of a genome and only obtain and analyze that set. Alternatively, they can develop algorithms to compare whole genomes to a well-established reference genome. But these methods have their drawbacks; subsets of genomes often are not reusable in other experiments and reference genomes, if unavailable, can take a lot of time and work to develop.

<figure>
<img src="{{ site.baseurl }}/uploads/2015/dna.jpg" alt="" width="425" height="282" style="float:left;" />
<figcaption markdown="span">

Genomes can consist of several billions of nucleotides, so we need different methods of analyzing such a large dataset. 

Image source: [Boise State University](http://edtech2.boisestate.edu/chadkuhlman/502/humangenome.html)

</figcaption>
</figure>

That's why our lab is developing SISRS (pronounced "scissors," Site Identification from Short Read Sequences), a new software program that can analyze genomic data in a matter of days. This NSF- and ASU-funded software eliminates the need for a reference genome and does not require genetic markers, which can take months to determine. Thus, SISRS greatly reduces the time, effort, and cost required to construct a phylogenetic tree from genomic data.

So how does SISRS achieve all of this? From data sequenced via next-generation sequencing, SISRS randomly constructs a subset of data using [reservoir sampling](http://en.wikipedia.org/wiki/Reservoir_sampling). The software then uses [ _de novo_ assemblers](http://en.wikipedia.org/wiki/De_novo_transcriptome_assembly) (for example, a program called [Velvet](http://en.wikipedia.org/wiki/Velvet_assembler)) to construct a composite genome from this subset to act as a reference. Because sequences shared among species occur frequently in the collected data, they are more likely to be chosen during the random sampling process than sequences unique to one species. Thus, the composite genome contains genetic information from each species and is a suitable reference genome. 

Once the composite reference genome is assembled, SISRS aligns the raw data to the reference. Some species may be missing data in sites, which could be due to several reasons: a gene may not be present in all genomes, there could be variable regions of the genome to which the reference does not align well, or there could have been error in the genome sequencing process. SISRS removes these sites that are missing too much information and filters out other sites that may produce errors (like sites with paralogous, or duplicate, genes). Finally, SISRS outputs the phylogenetically informative sites for phylogeny construction.

To verify SISRS' effectiveness, our team tested it with the genomic data of primates, whose phylogenetic tree is well-established. SISRS reconstructed the tree with 100% accuracy. Along with genomes, SISRS worked with transcriptomes (the complete set of RNA), estimated the mammal phylogeny very well, and showed promising preliminary results of estimating species divergence times. 

SISRS is still under development, and future improvements will enable the program to analyze larger data sets more rapidly. SISRS makes it possible to analyze genomic data quickly, efficiently, and accurately with minimal work. As we continue to improve the software, we welcome feedback from anyone working in the field of phylogenetics; SISRS is available open-source [here](https://github.com/rachelss/SISRS/tree/develop). We expect this software will have a major impact on phylogenetic analysis.

For more detail about SISRS, click [here](http://arxiv.org/abs/1305.3665). 

_This series is supported by NSF Grant #DBI-1356548 to RA Cartwright._
