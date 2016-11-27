---
layout: article
title: Information content of DNA
date: '2008-10-22 19:53:37 -0700'
author: PvM
mt_id: 4008
blog_id: 2
post_id: 4008
basename: information_con
---
The information content of DNA is much harder to determine than merely looking at the number of base pairs and multiplying it by 2 to get the size in bits (remember that each site can have up to 4 different nucleotides, or 2 bits). However, this approach can provide us with a zeroth order estimate of the maximum possible information that can be stored in said sequence which for the human genome with 3 billion base pairs would amount to 6 billion bits or 750 Mbytes. 

However, information theory shows that random sequences have the lowest information content and that well preserved sequences contain the maximum information content. In other words, the actual information content ranges from zero for totally random sequences to 2 bits for conserved sequences. 

Another way to look at this is to compress the DNA sequence using a regular archive utility. If the sequence is random, the compression will be minimal, if the sequence is fully regular, the compression will be much higher. 

So how does one obtain a better estimate of the information content of DNA? By estimating the entropy per triplet (3 base pairs) which has a maximum entropy of 6 and for coding regions a value of 5.6 and for non-coding regions 5.82. This means that the information content for coding regions is 0.4 bit per triplet and for non-coding regions .18 bit per triplet. For 3 billion base pairs, or 1 billion triplets, this gives us an actual information content of 0.4 billion bits or 50 Mbytes  assuming the best case scenario that all DNA is coding or about 24 Mbytes if all the DNA is non-coding.

Now how does this compare with evolutionary theory? In a 1960 paper "Natural selection as the process of accumulating genetic information in adaptive evolution", Kimura calculated that the amount of information added per generation was around 0.29 bits or since the Cambrian explosion some 500 million years ago, on the order of 10<sup>8</sup> bits or 12.5 Mbytes assuming that the geometric mean of the duration of one generation is about 1 year.

As a side note, Kimura reasoned that about 10<sup>7</sup> or 10<sup>8</sup> bits bits of information would be necessary to specify human anatomy.(Source: Adaptation and Natural Selection  By George Christopher Williams)

So is this a reliable way to determine the information content of DNA? Perhaps not, and a better way is to take a large sample DNA from different people and determine for each base pair, how variable it is. A preserved site will have the maximum of 2 bits of information while a totally random site will have zero bits of information. 

The problem is to understand how much information is contained by these 'bits'. For instance, the total number of electrons is about 10<sup>79</sup> **and finding one 'preferred' one' amongst these** ~~which~~ translates to about 250 bits. This means that in 1000 generations, natural selection can achieve something far more improbable than this. 

*********


<br />

**Update Oct 26**: I have to take responsibility for not clarifying that my usage of information is based on Shannon's theory of information according to which 



I(y)=H<sub>max</sub> - H(Y)



where I(Y) is the amount of information, H(Y) is the entropy of the received sequence and H<sub>Max</sub> is the maximum entropy (basically the entropy of uniform distributed sequence). 

See [Shannon entropy applied](http://www.pandasthumb.org/archives/2004/05/shannon-entropy.html) where I described how Shannon entropy is applied in biology with references to the work by Chris Adami and Tom Schneider.
