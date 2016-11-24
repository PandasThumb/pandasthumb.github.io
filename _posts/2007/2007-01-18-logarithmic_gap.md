---
layout: article
title: Logarithmic Gap Costs Decrease Alignment Accuracy
date: '2007-01-18 01:56:53 -0700'
author: Reed A. Cartwright
mt_id: 2745
blog_id: 2
post_id: 2745
basename: logarithmic_gap
---
The second chapter of my dissertation has now been published.  It is freely available from the [BMC Bioinformatics](http://www.biomedcentral.com/1471-2105/7/527) website.  In this post I hope to provide you will a short overview of the research. The reference is

> Cartwright RA (2006) Logarithmic gap costs decrease alignment accuracy. _BMC Bioinformatics_ **7**:527.

Our genomes evolve not only via point mutations (where one base changes into another base) but also via insertions and deletions.  That is the addition or removal of bases.  Collectively insertions and deletions are known as "indels".  Now several studies over the last fifteen years have found that the size of insertions and deletions follows a power law, i.e. a log-log plot of size versus frequency is linear.  However, this observation has had little impact on bioinformatics for various reasons.  Now why is this observation important?  For starters, several scientists have proposed that sequences should be aligned using logarithmic gap costs (w<sub>k</sub>=a + b k + c ln k) instead of the standard affine gap costs (w<sub>k</sub>=a + b k).

Because in my first chapter I created a sequence simulation program, [Dawg](http://scit.us/projects/dawg/), that could simulate evolution using a power law of indel sizes, I felt that it was important to test this suggestion out.  Specifically, whether the slowness of algorithms using logarithmic gap costs are offset by their improved accuracy.  So that is exactly what I did for my second chapter, and the results were surprising.

[Finish reading on De Rerum Natura &raquo;](http://dererumnatura.us/archives/2007/01/logarithmic_gap_1.html)  (Comments may be left there.)
