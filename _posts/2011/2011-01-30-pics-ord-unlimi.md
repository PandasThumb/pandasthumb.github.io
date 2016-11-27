---
layout: article
title: 'PICS-Ord or: How to Stop Worrying and Use Ambiguous Regions in Phylogenetic
  Analysis'
date: '2011-01-30 13:02:43 -0700'
author: Reed A. Cartwright
mt_id: 4865
blog_id: 2
post_id: 4865
basename: pics-ord_unlimi
---
I've had the good fortune of having some papers published recently, and my intention is to eventually summarize all of them for our readers.  The first paper that I'm going to discuss is a methodology paper concerning a way of extracting phylogenetic information from regions of multiple sequence alignments that are full of indels (insertions and deletions) and difficult to align:


<div markdown="block" style="margin-left: 4em;">
**PICS-Ord: unlimited coding of ambiguous regions by pairwise identity and cost scores ordination.** ([link](http://www.biomedcentral.com/1471-2105/12/10))<br />
Robert Lücking, Brendan P Hodkinson, Alexandros Stamatakis and Reed A Cartwright<br />
BMC Bioinformatics 2011, 12:10 doi:10.1186/1471-2105-12-10
</div>



<div markdown="block" class="toggle-show" title="Abstract">
<div markdown="block" style="margin: 0.5em;">
**Background** We present a novel method to encode ambiguously aligned regions in fixed multiple sequence alignments by 'Pairwise Identity and Cost Scores Ordination' (PICS-Ord). The method works via ordination of sequence identity or cost scores matrices by means of Principal Coordinates Analysis (PCoA). After identification of ambiguous regions, the method computes pairwise distances as sequence identities or cost scores, ordinates the resulting distance matrix by means of PCoA, and encodes the principal coordinates as ordered integers. Three biological and 100 simulated datasets were used to assess the performance of the new method.

**Results** Including ambiguous regions coded by means of PICS-Ord increased topological accuracy, resolution, and bootstrap support in real biological and simulated datasets compared to the alternative of excluding such regions from the analysis a priori. In terms of accuracy, PICS-Ord performs equal to or better than previously available methods of ambiguous region coding (e.g., INAASE), with the advantage of a practically unlimited alignment size and increased analytical speed and the possibility of PICS-Ord scores to be analyzed together with DNA data in a partitioned maximum likelihood model.

**Conclusions** Advantages of PICS-Ord over step matrix-based ambiguous region coding with INAASE include a practically unlimited number of OTUs and seamless integration of PICS-Ord codes into phylogenetic datasets, as well as the increased speed of phylogenetic analysis. Contrary to word- and frequency-based methods, PICS-Ord maintains the advantage of pairwise sequence alignment to derive distances, and the method is flexible with respect to the calculation of distance scores. In addition to distance and maximum parsimony, PICS-Ord codes can be analyzed in a Bayesian or maximum likelihood framework. RAxML (version 7.2.6 or higher that was developed for this study) allows up to 32-state ordered or unordered characters. A GTR, MK, or ORDERED model can be applied to analyse the PICS-Ord codes partition, with GTR performing slightly better than MK and ORDERED.

**Availability** An implementation of the PICS-Ord algorithm is available from http://scit.us/projects/ngila/wiki/PICS-Ord. It requires both the statistical software, R http://www.r-project.org and the alignment software Ngila http://scit.us/projects/ngila.
</div>
</div>


My co-author, Brendan Hodkinson, has already [covered it on his blog](http://squamules.blogspot.com/2011/01/pics-ord.html), and the software can be [downloaded from my website](http://scit.us/projects/ngila/wiki/PICS-Ord).

In phylogenetic analysis, regions of sequences that contain a lot of overlapping indels are difficult to align, and whatever alignment that is produced is considered to have a low signal-to-noise ratio. Typically these regions are removed from any phylogenetic analysis, but we propose a method to convert the information they contain into mutli-state characters.

In molecular biology, an alignment is a partial reconstruction of the evolutionary history of a group of sequences.  In an alignment, all residues found in the same column are considered to be descended from a single residue in the ancestral sequence.  (Of course, insertions violate this description, but I won't get into that.)  Alignments are not direct observations.  They are actually inferences based on the patterns of sequences found in the dataset.  Often times there are particular areas in which the alignment is difficult to resolve.  Take this example:

<figure>
<img src="http://dererumnatura.us/archives/2011/01/25/problemalign.png" alt="problemalign.png" width="558" height="557" />
<figcaption markdown="span">
A typical problem in multiple sequence alignments where a section is full of gaps and contains a complicated phylogenetic signal.  Dark red: high certainty that alignment is accurate; Dark blue: low certainty that alignment is accurate..

</figcaption>
</figure>

It was constructed via the [GUIDANCE](http://guidance.tau.ac.il/) webserver.  (A great resource that everyone should use.)  In this example, we have a region defined by a lot of sequence variation created by many insertions and deletions.  The alignment is not well defined here, and in most applications it will just be removed, and the data "thrown away".

But is this the only solution?  In our paper we develop a methodology, dubbed PICS-Ord ([download](http://scit.us/projects/ngila/wiki/PICS-Ord)), that provides an easy solution for extracting phylogenetic information from problematic regions chosen by its user.  PICS-Ord works through a three-step process:


1. Realign the segments in pairs using [Ngila](http://scit.us/projects/ngila/), and calculate the likelihood of the alignment from an evolutionary model. This produces a distance matrix of the segments.
1. Ordinate the distance matrix using [principal coordinate analysis (PCoA)](http://en.wikipedia.org/wiki/Multidimensional_scaling).  This assigns each segment to a point in n-1-dimensional space.
1. Quantize each dimension into a set of characters


This might seem a bit odd at first.  "Why not just use the distance matrix directly?"  That would be great if we could, but there aren't any phylogenetic programs that we know off that allow the mixing of distance matrices and sequence data.  With our method, we get discrete, ordered characters that can be used in popular programs like, RAxML.

There are three example files in the PICS-Ord distribution, and I'll illustrate its usage with `example1.fas`.  The alignment of these sequence fragments is messy:


<div markdown="block" class="toggle-show" title="Example Alignment">
```
 100 114
sequence_001 ----------------------------------------------------------------------------tatactatcta---------------------------
sequence_002 -------------------------------------------------------------------aattgtatttatactatata---------------------------
sequence_003 -------------------------------------------------------------------tttaagatttattctatatt---------------------------
sequence_004 tttaggattaattttata--------------------------------------------------------taatactaatata---------------------------
sequence_005 -------------gatgg--------------------------------------------------------ttttacctatata---------------------------
sequence_006 ---------------------------------------------------------------------------tatcattatgca---------------------------
sequence_007 ---------------------------------------------------------------------------tatcattatgca---------------------------
sequence_008 -------------------------------------------------------------------------atatgtttaagata---------------------------
sequence_009 -------------------------------------------------------------------------atatgtttaagata---------------------------
sequence_010 -------------------------------------------------------------------------atatgtttaagata---------------------------
sequence_011 -------------gtac----------------------------------------------------------aattataatata---------------------------
sequence_012 -------------gtac----------------------------------------------------------aattataatata---------------------------
sequence_013 -------------gtac----------------------------------------------------------taatttaatata---------------------------
sequence_014 -------------ctac-----------------------------------------------------------aatataatata---------------------------
sequence_015 -------------ctac-----------------------------------------------------------aatataatata---------------------------
sequence_016 -------------ctac-----------------------------------------------------------attaaaatata---------------------------
sequence_017 -------------ctac-----------------------------------------------------------attaaaatata---------------------------
sequence_018 -------------gtat-----------------------------------------------------------aatttaatcta---------------------------
sequence_019 -------------gtat-----------------------------------------------------------attttaatcta---------------------------
sequence_020 -------------------------------------------------------------------------------ataagata---------------------------
sequence_021 -------------------------------------------------------------------------------ataagata---------------------------
sequence_022 --------------------------------------------------------------------------attataattaata---------------------------
sequence_023 --------------------------------------------------------------------------attataattaata---------------------------
sequence_024 -------------------------------------------------------------------------------ataagata---------------------------
sequence_025 -------------------------------------------------------------------------------ataagata---------------------------
sequence_026 ----------------------------------------------------------------------------aaaaaaaaata---------------------------
sequence_027 -----------------------------------------------------------------------------aaaaaaaata---------------------------
sequence_028 -------------------------------------------------------------------------------acaaaata---------------------------
sequence_029 -------------------------------------------------------------------------------acaagata---------------------------
sequence_030 --------------------------------------------------------------------------------acaaata---------------------------
sequence_031 -------------------------------------------------------------------------------acaaaata---------------------------
sequence_032 -------------gaat-----------------------------------------------------------aatattaaata---------------------------
sequence_033 -------------gaat-----------------------------------------------------------aatattaaata---------------------------
sequence_034 -------------gaaa-----------------------------------------------------------aatattaaata---------------------------
sequence_035 -------------gtat-----------------------------------------------------------tctttaatata---------------------------
sequence_036 -------------gtat-----------------------------------------------------------tatttaatcta---------------------------
sequence_037 -------------gtat-----------------------------------------------------------tatttaatata---------------------------
sequence_038 -------------gtat-----------------------------------------------------------tatttaatcta---------------------------
sequence_039 -----------------------------------------------------------------------------gttttatata---------------------------
sequence_040 -----------------------------------------------------------------------------gtttaatata---------------------------
sequence_041 -------------------------------------------------------------------------atcagtttaatacg------------------ctgagtgat
sequence_042 -------------------------------------------------------------------------accagtttaattta------------------ctgggtgat
sequence_043 ----------------------------------------------------------------------------------------------ctcagtttctgctgagtggt
sequence_044 ----------------------------------------------------------------------------agtttaatatg------------------ctgattgat
sequence_045 --------------------------------------------------------------------------------atatgta---------------------------
sequence_046 --------------------------------------------------------------------------------atatgta---------------------------
sequence_047 --------------------------------------------------------------------------------ataagta---------------------------
sequence_048 --------------------------------------------------------------------------------ataagta---------------------------
sequence_049 --------------------------------------------------------------------------------ataagta---------------------------
sequence_050 --------------------------------------------------------------------------------atatgta---------------------------
sequence_051 -----------------------------------------------------------------------------gttttctaat---------------------------
sequence_052 -----------------------------------------------------------------------------gtttactaaa---------------------------
sequence_053 -----------------------------------------------------------------------------gtttactaat---------------------------
sequence_054 -----------------------------------------------------------------------------gtttactaat---------------------------
sequence_055 -------------------------------------------------------------------------------gcta-aaa---------------------------
sequence_056 -------------------------------------------------------------------------------gcta-aaa---------------------------
sequence_057 -------------------------------------------------------------------------------gcta-aaa---------------------------
sequence_058 -----------------------------------------------------------------------------gtttactgaa---------------------------
sequence_059 -----------------------------------------------------------------------------gtttactgaa---------------------------
sequence_060 -----------------------------------------------------------------------------gtttactgaa---------------------------
sequence_061 -----------------------------------------------------------------------------gttagctgaa---------------------------
sequence_062 -----------------------------------------------------------------------------gttagctgaa---------------------------
sequence_063 -----------------------------------------------------------------------------gttagctgaa---------------------------
sequence_064 -------------------------------------------------------------------------------gttt-aaa---------------------------
sequence_065 -------------------------------------------------------------------------------gttt-aaa---------------------------
sequence_066 -------------------------------------------------------------------------------gttt-aaa---------------------------
sequence_067 -------------------------------------------------------------------------------gcta-aaa---------------------------
sequence_068 -------------------------------------------------------------------------------gcta-aaa---------------------------
sequence_069 -----------------------------------------------------------------------------atttacttaa---------------------------
sequence_070 -----------------------------------------------------------------------------atttacttaa---------------------------
sequence_071 -----------------------------------------------------------------------------atttacttaa---------------------------
sequence_072 ---------------------------------------------------------------------------------gttaaa---------------------------
sequence_073 ---------------------------------------------------------------------------------gttaaa---------------------------
sequence_074 aattttattaattactttagtaattaataaggttattttaagtaacagcaaaatattagttaaaagcgttgct-tgcaattagtaaagt--------------agca-ttatta
sequence_075 aattatattaattactttagtaattaaatttgttatttttagtaacagcaaaatattagttacaagcgttgct-tgtaattagtaaagt--------------agca-ttatta
sequence_076 ---------------------------------------------------------------------------------ttttta---------------------------
sequence_077 ---------------------------------------------------------------------------------ttttta---------------------------
sequence_078 ---------------------------------------------------------------------------------ttttta---------------------------
sequence_079 ---------------------------------------------------------------------------------ttttta---------------------------
sequence_080 -------------gaag-----------------------------------------------------------attaataacta---------------------------
sequence_081 -----------------------------------------------------------------------------atttatatta---------------------------
sequence_082 -----------------------------------------------------------------------------atttatatta---------------------------
sequence_083 actcctact------ttaaacatttagtagtgtcgaacctactgatagcatctggttttctattgg--------tacttataacataaccactaaatatttagagtattaatta
sequence_084 actcctact------ttaaacatttagtagtgtcgaacctactgatagcatctggttttctattgg--------tacttataacataaccactaaatatttagagtattaatta
sequence_085 -------------gaaa----------------------------------------------------------taacagtaacta---------------------------
sequence_086 -------------aaag-----------------------------------------------------------attagtaacta---------------------------
sequence_087 aattttaca------tttagtttttaatctttatgtttaaaa----acatgtatgctatttatatg--------tatatataatatagt--------------agaacttacaa
sequence_088 aattttact-------------------ttgggt-tttaaaa----actagtatgctatgtttatatattaatttatatatcatatagt--------------agaacttacaa
sequence_089 aattttact------ctt--tttttaagttttat-atttaaa----atctgtatgctatgtttatatattaatttatatataatatagt--------------agaacttacaa
sequence_090 aattttact------ctt--tttttaagttttat-atttaaa----atctgtatgctatgtttatatattaatttatatataatatagt--------------agaacttacaa
sequence_091 -------------gtac-----------------------------------------------------------ataataatata---------------------------
sequence_092 -------------gtaca--------------------------------------------------------taataataatata---------------------------
sequence_093 -------------gtaca--------------------------------------------------------taataataatata---------------------------
sequence_094 -------------gtac-----------------------------------------------------------ataataatata---------------------------
sequence_095 ---------------------------------------------------------------ttttttataccaataaataatata---------------------------
sequence_096 ---------------------------------------------------------------ttttttataccaataaataatata---------------------------
sequence_097 ---------------------------------------------------------------ctatttata-taataaataatata---------------------------
sequence_098 -------------ctat-----------------------------------------------------------ataaaaatata---------------------------
sequence_099 -------------ctat-----------------------------------------------------------ataaaaatata---------------------------
sequence_100 -------------ctat-----------------------------------------------------------ataaaaatata---------------------------
```
</div>


But instead of throwing it away, you can process it with PICS-Ord and get a clean set of ordered characters that contain approximately the same phylogenetic information as the sequences above.  The command `./picsord example1.fas` produces the following output.


<div markdown="block" class="toggle-show" title="PICS-Ord Output">
```
    100    20
sequence_001 53221002101000000010
sequence_002 44121113101010000000
sequence_003 53211103102011000100
sequence_004 53321103111000010100
sequence_005 53211003101000001000
sequence_006 53221002001000000000
sequence_007 53221002001000000000
sequence_008 43220112011000000000
sequence_009 43220112011000000000
sequence_010 43220112011000000000
sequence_011 53221012011000000000
sequence_012 53221012011000000000
sequence_013 53221012011000100000
sequence_014 53321012001010100000
sequence_015 53321012001010100000
sequence_016 53221013001000000000
sequence_017 53221013001000000000
sequence_018 53221012001000100000
sequence_019 53221012001000001000
sequence_020 53220102011000000000
sequence_021 53220102011000000000
sequence_022 53121012011010000000
sequence_023 53121012011010000000
sequence_024 53220102011000000000
sequence_025 53220102011000000000
sequence_026 53220002001000000000
sequence_027 53220002001000000000
sequence_028 53120102011000000000
sequence_029 53220102011000000000
sequence_030 53120002011000000000
sequence_031 53120102011000000000
sequence_032 53220002111100000000
sequence_033 53220002111100000000
sequence_034 53220002111000000000
sequence_035 53221012011000001000
sequence_036 53221012001000000000
sequence_037 53221012011000000000
sequence_038 53221012001000000000
sequence_039 53221102111000000000
sequence_040 53211002011000000000
sequence_041 53300112011000000000
sequence_042 53200112011010001010
sequence_043 53300103001100001001
sequence_044 53200112001110000000
sequence_045 53120112001000000000
sequence_046 53120112001000000000
sequence_047 53120102001000000000
sequence_048 53120102001000000000
sequence_049 53120102001000000000
sequence_050 53120112001000000000
sequence_051 53211002011000000000
sequence_052 53111002011000000000
sequence_053 53211002011000000000
sequence_054 53211002011000000000
sequence_055 53110002001010000000
sequence_056 53110002001010000000
sequence_057 53110002001010000000
sequence_058 43111002011000000000
sequence_059 43111002011000000000
sequence_060 43111002011000000000
sequence_061 53201002011000000000
sequence_062 53201002011000000000
sequence_063 53201002011000000000
sequence_064 43111002011000000000
sequence_065 43111002011000000000
sequence_066 43111002011000000000
sequence_067 53110002001010000000
sequence_068 53110002001010000000
sequence_069 43111002011000000000
sequence_070 43111002011000000000
sequence_071 43111002011000000000
sequence_072 53111002001000000000
sequence_073 53111002001000000000
sequence_074 59021102011001100000
sequence_075 59020012001110001000
sequence_076 53121102001100000000
sequence_077 53121102001100000000
sequence_078 53121102001100000000
sequence_079 53121102001100000000
sequence_080 53220002001100000000
sequence_081 53121102001000000000
sequence_082 53121102001000000000
sequence_083 90021002001000000000
sequence_084 90021002001000000000
sequence_085 53220002000100000000
sequence_086 53120002000101000000
sequence_087 02121100001000000000
sequence_088 02020003000010100000
sequence_089 02021013011100000000
sequence_090 02021013011100000000
sequence_091 53321002001000000000
sequence_092 53321002011000000000
sequence_093 53321002011000000000
sequence_094 53321002001000000000
sequence_095 53321202010100001000
sequence_096 53321202010100001000
sequence_097 43321102011000001000
sequence_098 53321003001000000000
sequence_099 53321003001000000000
sequence_100 53321003001000000000
```
</div>


This dataset can now be analyzed along side the rest of your data using my co-author's Alexis Stamatakis's, [RAxML phylogenetic software](http://wwwkramer.in.tum.de/exelixis/software.html).  Let's assume that you have a set of four sequences, and you want to find their phylogeny.  However, there are two regions of the alignment that are difficult to align and you have generated PICS-Ord codes for them.

Once this is done, you need to create a Phylip formatted file containing all the data (`data.phy`):

```
4 14
Seq1 0123ACGTTT2345
Seq2 1022ACGGTT2234
Seq3 0031AGTTTT1201
Seq4 1010ACGTTT2101
```

And a partition file (`part.txt`) that will describe to RAxML the different sections:

```
MULTI, p1 = 1-4
DNA, p2 = 5-10
MULTI, p3=11-14
```

Next you can estimate phylogenetic trees from your data using RAxML can now generate your trees: `./raxmlHPC -q part.txt -s data.phy -K GTR -m GTRGAMMA -n T1`.  The `-K` parameter defines the model to use for multi-state characters (PICS-Ord) codes.

We feel that PICS-Ord opens up a new way of handling alignment issues for phylogenetic analysis.  In our paper we find that it tends to improve phylogenetic analysis.  On several datasets used in lichen systematics, we found that it tended to increase the accuracy of the trees.  The confidence of accurately resolved clades tended to increase, while the confidence of incorrectly resolved clades tended to decrease.  In other words, both true positives and false positives were identified more strongly when using PICS-Ord encoded data.

We've talked about a couple related methods while working on this project.  If we develop any enhancements, I hope to be able to share them with you.
