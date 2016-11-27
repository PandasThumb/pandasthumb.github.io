---
layout: article
title: Meyer and Deja Vu Revisited
date: '2004-09-26 11:56:31 -0700'
author: Wesley R. Elsberry
mt_id: 463
blog_id: 2
post_id: 463
basename: meyer_and_deja
---
The story of the antecedents of the recent paper published by Stephen C. Meyer is turning into a saga of its own. Back on September 8th, 2004, I [documented](http://www.pandasthumb.org/pt-archives/000455.html) that Stephen C. Meyer's recent paper in the _Proceedings of the Biological Society of Washington_ -- a paper which is being trumpeted far and wide by the [Discovery Institute](http://discovery.org/csc/) -- was in fact copied in substantial part from a previous "peer-reviewed" paper published in _Darwin, Design, and Public Education_. There are four variants of essentially the same paper that have been identified so far:


* Meyer 2004, published in PBSW (2004b): _Meyer, Stephen C. 2004. The origin of biological information and the higher taxonomic categories. Proceedings of the Biological Society of Washington 117(2):213-239._
* Meyer 2004, published in "Debating Design" (2004a): _Meyer, S. C. 2004. The Cambrian information explosion: evidence for intelligent design. Debating design: from Darwin to DNA. W. A. Dembski and M. Ruse. Cambridge, United Kingdom, Cambridge University Press: 371-391._
* Meyer, Ross, Nelson, and Chien 2003, published in "Darwin, Design, and Public Education" (2003): _Meyer, S. C., Ross, M., Nelson, P. and Chien, P. 2003. The Cambrian explosion: biology's big bang. Darwinism, design and public education. J. A. Campbell and S. C. Meyer. Lansing, Michigan, Michigan State University Press: 323-402._
* Meyer, Nelson, and Chien 2001, published to the World Wide Web (2001)


Here, I'm going to compare the various documents and report the proportions of text taken from earlier versions that appear in the later versions.

I am again using my Perl script to find sequences of words present in both a reference text and a possible source text. While I can set whatever length of runs of words as a minimum to regard as a hit, I've pretty much settled on using ten words in a row as a value that normally indicates copying. I'm using the text of _Moby Dick_ as a control to show the proportion of false positives due to regularities of the English language, which in these cases were nil.


<table border="1">
<tr>
<td>
</td>
<td colspan="4">
<center>Sources</center>
</td>
</tr>

<tr>
<td>
</td>
<td>2004a</td>
<td>2003</td>
<td>2001</td>
<td>Moby Dick</td>
</tr>

<tr>
<td>2004b</td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_m2004b_m2004a_10_106.html">45 %</a></td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_m2004b_mea2003_10_106.html">38 %</a></td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_m2004b_mea2001_10_106.html">13 %</a></td>
<td>0 %</td>
</tr>

<tr>
<td>2004a</td>
<td></td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_m2004a_mea2003_10_106.html">72 %</a></td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_m2004a_mea2001_10_106.html">24 %</a></td>
<td>0 %</td>
</tr>

<tr>
<td>2003</td>
<td></td>
<td></td>
<td><a href="http://antievolution.org/people/meyer_sc/meyer2004_bio_info/cmp_mea2003_mea2001_10_106.html">48 %</a></td>
<td>0 %</td>
</tr>

<tr>
<td>2001</td>
<td></td>
<td></td>
<td></td>
<td>0 %</td>
</tr>

</table>


Links go to the full report of matches in each case.

Notice that 72% of the text of Meyer 2004a is found to be due to the text of Meyer et al. 2003. 

While some have made an apologetic that it is common to recycle introductory material in papers, it is the _core_ sections of the Meyer et al. 2003 paper (some), Meyer 2004a paper (most) and Meyer 2004b
(most) papers that are copied between them.  Between Meyer 2004a and Meyer 2004b, the commonalities extend to section headings and almost entire sections.  These sections are almost completely copied:


* The Cambrian Explosion
* The Cambrian Information Explosion
* Novel Genes and Proteins
* Novel Body Plans
* Self-Organizational Models


This means that the Meyer 2004b paper published in PBSW is the third time, not just the second time, that Meyer has published essentially the same paper, and there is no acknowledgment of previous sources.

Again, I don't have any particular problem with this, because while Meyer 2004b is in a peer-reviewed venue, none of the other instances are peer-reviewed in my estimation. However, Stephen C. Meyer **should** think that there is a problem with this pattern of repeated publication of substantial parts of prior work, since Meyer 2004b, Meyer 2004a, and Meyer et al. 2003 are all _claimed_  to count as peer-reviewed publications by the Discovery Institute propaganda machine.

It is interesting to contrast Meyer's lack of notice of recycling his text in "Debating Design" with the careful and complete notice given by Francisco Ayala in the same volume that portions of his chapter were due to prior published material.

> \[Endnote #1, p. 73; The endnote number \[1\] appears just after Ayala's name, at the beginning of the essay on p. 55\]
> 
> 1. This paper incorporates most of my "Darwin's Devolution: Design without Designer" in _Evolutionary and Molecular Biology: Scientific Perspectives on Divine Action_, ed. R. J. Russell, W. R. Stoeger, and F. J. Ayala (Vatican City: Vatican Observatory and Berkeley, CA: Center for Theology and the Natural Sciences, 1998), pp. 101-16.  The text has been updated and modified, and a new section ("Unintelligent Design") has been added.  Accordingly, the original title has been changed.
> 
> Ayala, Francisco J. "Design without Designer: Darwin's Greatest Discovery." Debating Design: From Darwin to DNA.  Cambridge University Press, pp. 55-80.

Thanks to Pim van Meurs and Nick Matzke for contributions to this article.
