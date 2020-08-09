---
layout: article
title: Improving the Accuracy of Genomic Data
date: '2015-02-19 11:00:00 -0700'
author: Emily Thompson
mt_id: 7071
blog_id: 2
post_id: 7071
basename: imagine_taking
---
Imagine that you want to analyze the 3.2 billion bases of the human genome. If you recruited every undergraduate student at ASU, all 70,000 of us, to type those data into a spreadsheet, it would still take about 13 hours. So you develop a computer program that analyzes the data for you. But then you find out that your huge data set amplified small errors in your algorithm and gave you the wrong answer. This is the issue facing evolutionary biologists using genomic data, a practice that is becoming standard to construct reliable phylogenies (see our previous posts about the new [bird](http://pandasthumb.org/archives/2015/01/phylogenomics-r.html) and [insect](http://pandasthumb.org/archives/2015/01/delving-into-th.html) phylogenies). [Our lab](http://cartwrig.ht), working under Dr. Reed Cartwright, has developed a novel method to quickly analyze genomic data and produce an accurate phylogeny that improves upon previous techniques.

<figure>
<img src="{{ site.baseurl }}/uploads/2015/Bai_yun_giant_panda.jpg" alt="" width="250" height="375" style="float:right;" />
<figcaption markdown="span">

The giant panda genome was assembled using _de novo_ techniques in 2010, but better methods of phylogeny construction are in development.
Image: Wikipedia

</figcaption>
</figure>

Historically, scientists have compensated for potential inaccuracies in genomic-size data in two ways: by using better statistical tools to analyze the data after they have been acquired or by acquiring fewer, more informative data. 

In the first method, you start with sequenced genomes in the form of short fragments (about 100 base pairs) and develop computational algorithms to compare those sequences to a reference genome for reassembly, like [Liu et al.](http://eichlerlab.gs.washington.edu/primategenome/Liu_etal.pdf) did in their 2003 analysis of primate genomes. The reference genome is one that we know with a high level of confidence; for example, the human genome is reliably known and often used as a reference. If, however, a reference is unavailable or unreliable, you could use a computer program to assemble the sequences with a process known as [_de novo_ assembly](http://en.wikipedia.org/wiki/De_novo_transcriptome_assembly), which [Li et al.](http://www.nature.com/nature/journal/v463/n7279/full/nature08696.html) used to construct the giant panda genome in 2010. These programs, called assemblers, use graphical techniques (for example, [De Brujin graphs](http://www.cs.jhu.edu/~langmea/resources/lecture_notes/assembly_dbg.pdf)) to remove errors in phylogenetic trees and resolve repeated data that are harder to determine in short sequences than longer ones.  Algorithms like this can greatly improve the accuracy of conclusions made from genomic data, but _de novo_ assembly without a reference genome requires high quality annotation of the sequences and, once the genome is reconstructed, time-consuming alignments of similar sequences to produce a phylogenetic tree. 

Alternatively, you could acquire fewer data in the first place. You would need to determine which markers in a genome are informative and necessary to draw certain conclusions and then only obtain those data. By reducing the size of the data set and eliminating unnecessary information, we improve the accuracy without having to implement sophisticated analytical techniques. [ McCormack et al.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3317156/) used this principle in 2012 to determine the tree of placental mammals from certain markers. However, the major drawback of this method is that markers appropriate for a particular project or species most likely cannot be reused for other projects. The ability to recycle genomic data reduces the cost and time of phylogenomic studies. 

Our lab is working on a program that constructs phylogenetic trees more quickly and easily than either of these methods. The program, called SISRS, combines genome assembly with identification of homologous genes to rapidly reconstruct phylogenies without the need of a reference genome or annotation. In the next post, we'll go into detail about how SISRS works and what makes it a better way to analyze genomic data.

_This series is supported by NSF Grant #DBI-1356548 to RA Cartwright._
