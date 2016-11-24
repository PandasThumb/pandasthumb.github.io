---
layout: article
title: 'Phylogenomics: Deciphering a Billion-Piece Puzzle '
date: '2014-11-06 11:40:49 -0700'
author: Emily Thompson
mt_id: 7034
blog_id: 2
post_id: 7034
basename: phylogenomics_d
---
_This is the second in a series of articles for the general public focused on understanding how species are related and how genomic data is used in research. Today, we talk about phylogenomics, the application of whole genome sequencing to understand evolutionary relationships among species._

<figure>
<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/DNA_chemical_structure.svg/411px-DNA_chemical_structure.svg.png" alt="" width="411" height="480" style="float:right;" />
<figcaption markdown="span">
DNA Chemical Structure.  Source: [Madeleine Price Ball](http://commons.wikimedia.org/wiki/File:DNA_chemical_structure.svg)

</figcaption>
</figure>

The haploid human genome is 3.2 billion [DNA](http://en.wikipedia.org/wiki/DNA) bases long, and each base can be one of four nucleotides: A, T, C, and G.  Uncoiled, the DNA in a single human cell would be 2 meters long, and the DNA in a human body would [stretch from the sun to Pluto multiple times](http://skeptics.stackexchange.com/a/10612).  With 3.2 billion bases, each person's genome is unique, and this plays an essential role in shaping our physical and mental individuality.  However, despite being unique, each human genome is very very similar, due to our shared ancestral heritage.  Similarly, species that share a recent ancestral heritage also have similar genomes.  Species that are distantly related are likely to demonstrate significant differences in their genomes.  This is why, [as we discussed last week](http://pandasthumb.org/archives/2014/10/the-family-tree.html), evolutionary biologists compare traits and genes to determine the relationships of different species.

Unfortunately, some genes give us the wrong answer about how species are related. A section of a gene can be identical for two species due to independent mutations. After all, any given base can only mutate into one of three other bases. Chances are the same mutation could happen twice, or multiple mutations can produce the same sequence. Consider two species that are distantly related; one contains an <code class="kw-code">AGA</code> fragment, while the corresponding fragment in the other species is <code class="kw-code">TGT</code>, i.e. they differ in 2 out of 3 positions.  As these species evolve, by chance the first species may experience a change in the first position such that <code class="kw-code">AGA</code>&#8594;<code class="kw-code">TGA</code>, and the second species may experience a change in the third position such that <code class="kw-code">TGT</code>&#8594;<code class="kw-code">TGA</code>.  Now, these two sequences look the same so you might think the species share a recent common ancestor; however, it is only an accident of biology that they appear closely related. Because some fragments may be identical due to independent mutations and not shared ancestry, estimating species relationships with using whole genomes is better than just a few genes. The more information we have, the more likely we are to figure out species' relationships correctly.

The cost to sequence whole genomes has fallen from $100 million to $1000 in just the past twelve years. It now takes days to sequence a genome compared to the 13 years it took for the first human genome. The challenge now is not to obtain the data but to compare all the billions of base pairs in one genome to those in another. Current sequencing methods, while fast, can only read the genome by dividing it into millions of short fragments, which must be reassembled like an enormous puzzle. Researchers then have to figure out which genes correspond to one another in different species' genomes. These comparisons are challenging because genes in one genome might be in a different order, on different chromosomes, or missing completely in another species' genome.

Biologists are beginning to use genomic information to understand how species are related and measure how fast or slowly different genes evolve. Then in turn allows us to understand how evolution happens. For example, using genomic information we can figure out how genes mutate, characterize and diagnose genetic diseases, and track harmful pathogens. But before that can happen, we need to address the difficulties of analyzing these large genomic datasets. You might think that more data is always better, but having a lot of data can lead us to have very high confidence in the wrong answer. In a pool of thousands of genes, we need to find the ones that tell us the right answer.

_Next week, we'll discuss statistical challenges associated with big data analysis, especially as it relates to phylogenomics. This series is supported by NSF Grant #DBI-1356548 to RA Cartwright._
