---
layout: article
title: 'Discovery Institute: So much for Academic Freedom!'
date: '2015-12-18 09:07:08 -0700'
author: Nick Matzke
mt_id: 7153
blog_id: 2
post_id: 7153
basename: discovery_insti_11
---
(**Update:** [paper preprint and bonus material available free here](http://phylo.wikidot.com/matzke-2015-science-paper-on-the-evolution-of-antievolution))

[It appears that John West and the Discovery Institute](http://www.evolutionnews.org/2015/12/did_nick_matzke101761.html) skipped past reading [the _Science_ paper](http://pandasthumb.org/archives/2015/12/the-evolution-o-9.html) and went straight to accusing the author of misconduct. So much for "Academic Freedom"!  I don't even think they read the Supplemental Material, and I'm pretty sure they wouldn't understand if if they did.  It's conceivable they aren't up on the latest in phylogenetic methods and their applications.  

In any event, though, I welcome any opportunity to explain why my research is in the public interest and how this work connects to my other work scientifically. It's very late here in Australia, so I will give the short version. 

**Short version**

Evolutionary biologists do research not just on evolutionary questions, but also research to develop and test the methods and computational tools that are used to answer evolutionary methods. One huge category of such methods is phylogenetics (something like 1% of all published research in all fields involves phylogenetics, according to David Hillis), within that there is Bayesian phylogenetics, within that there is dated Bayesian phylogenetics (where dates are estimated along with the phylogeny), and within that there is "tip-dated" Bayesian phylogenetics, where fossils from different time points are included directly in the analysis.  And, within _that_ there is tip-dated Bayesian phylogenetics with the possibility of sampling direct ancestors, a technique which has only become available in the last year or so.

Well, the _Science_ paper did a Bayesian tip-dating sampled-ancestors analysis in the phylogenetics program [Beast2](http://beast2.org/), with the Beast2 analysis (which is quite complex to get right) set up using R code that I wrote and called "BEASTmasteR" ([http://phylo.wikidot.com/beastmaster](http://phylo.wikidot.com/beastmaster)). (Yes, ha, BEASTmasteR - but it's late.) BEASTmasteR is being used for various analyses at the moment -- dinosaurs, fossil dogs, etc. I developed BEASTmasteR for Beast2 at NIMBioS, and it was built on R code I wrote for Beast1 while in grad school on a previous grant when tip-dating was in its earliest days (tip-dating is how you put fossils in a dated Bayesian phylogeny, one of the goals of the bivalves project). It is customary to gratefully cite grants that supported your work, including software (and this is the first publication I've gotten out using BEASTmasteR - although I believe papers have already been published by others using it!).

What good is tip-dating? What good are sampled ancestors analyses?  The short answer is that they allow us to include more information in phylogenetic analyses than we could before, and to estimate things that we couldn't estimate before (like probability of direct ancestry -- this is something that \*should\* be of great interest to the creationists at the Discovery Institute, except that they never learned enough about phylogenetics to understand why this is new.) I am convinced this is "the way of the future" for phylogenetics involving fossils, but a great deal of the methods' effectiveness depends on the details of the datasets (the short version is: fossil dogs=lots of characters=easy case; fossil clams=few characters=hard case. And, it turns out, antievolution bills=lots of characters=pretty easy case.)

At the very least, paleontologists and evolutionary biologists are interested in trying out the new methods and seeing what they can do, if the interest in talks and symposia on the topic is any guide (I have participated in such at the Society for Vertebrate Paleontology Annual Meetings in 2014 and 2015). 

What's the broader societal relevance?  I happen to think that better understanding the history of life is in the public interest, as is tracking antievolution legislation.  But even if you don't buy that, consider this:  phylogenetic methods for sampling lineages serially through time are also used for disease phylogenies -- tracking the evolution and spread of things like HIV and Ebola year-by-year, and even month-by-month. 

What software is used in these analyses?  Why, Beast1 and Beast2! One particularly prominent example was [this paper tracking the timing and geographic origins of the 2014 Ebola outbreak](http://www.sciencemag.org/content/345/6200/989). [This was published in _Science_](http://www.sciencemag.org/content/345/6200/989) even while the outbreak was still going on. This is deadly serious stuff, quite literally: 
note that [five of the coauthors of this Beast dating study died](http://news.sciencemag.org/health/2014/08/ebolas-heavy-toll-study-authors) after contracting Ebola in the field in West Africa.

**Short-short version**

So, here's the short-short version: Bayesian phylogenetic dating methods are important for studying the history of life, from fossils to ongoing disease outbreaks. By pushing the methods with novel datasets and applications, we learn more about the capabilities of the methods. This was part of the point of my phylogenetic study of antievolution bills. Another point: antievolution bills seem to evolve rather like pathogens - when one strategy is shut down, more stealthy strategies begin to propagate.  It's a shame that, in a world where phylogenetic methods have life-and-death relevance, the Discovery Institute continues to promote legislation with the purpose of convincing students that all this evolution stuff is just made up.
