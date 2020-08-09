---
layout: article
title: Fun with hominin brain size as a percentage of body mass
date: '2006-10-09 19:24:19 -0700'
author: Nick Matzke
mt_id: 2536
blog_id: 2
post_id: 2536
basename: fun_with_homini_2
---
Several people have suggested that I factor out body size to produce a chart just showing the relative increase in brain size over time.  This is not as simple to do as it sounds, because most of the fossil skulls are not found with bodies, and vice versa \[1\].  So even if I had the paper with the body size data (De Miguel and Henneberg (1999). "Variation in hominid body size estimates: Do we know how big our ancestors were?" [_Perspectives in Human Biology_](http://www.worldcatlibraries.org/oclc/31416665&amp;referer=brief_results), 4(1), pp. 65-80), one could not just do a regression. So we have to improvise.

I started with the regression lines of log (cranial capacity) and log (body mass) vs. time in [Figure 1 of Henneberg and Miguel 2004](/uploads/2006/Henneberg_de_Miguel_2004_Homo_hominins_single_lineage_fig1.png).  Using a highly scientific method (drawing straight horizontal and vertical lines on the chart in Powerpoint), I measured four points along each line and reconstructed the slope and intercept of each regression.  One can then figure out the relationship between the two lines and how to estimate a body size figure based on brain size.

Then I just calculated a body size for each cranial capacity measurement, and re-did the chart as a chart of brain mass as a percentage of (extrapolated) body mass: \[2\]

<img src="{{ site.baseurl }}/uploads/2006/fossil_hominin_brain_percent_lg.png" alt="Hominin brain mass as a percentage of body mass" width="597" height="621" style="" />

The slope is of course somewhat flatter in this chart, which shows the effect of controlling for the increase in body size.  Absolute brain mass approximately _tripled_ in human evolution, but brain mass as a _percentage_ of body mass appears to have _doubled_ in human evolution.  This should be about what everyone expected anyway, but it is nice to see it on the chart.

Yes, I am aware there are various issues with this quick-and-dirty body size extrapolation, but this is just an attempt to give people an approximate idea of what the data look like with body size approximately factored out, which is what many requested.  For real analysis, of course, go to the paleoanthropology literature.  (Suggestions for improvement, data sources, etc. are of course welcome.)

**Notes:** 

1. Specifically, Henneberg and de Miguel (2004) say on p. 25: "In the entire literature there are only 45 specimens of individual hominins for whom both CC and body weight estimates are available (Henneberg 1998). Amongst those are only four pertaining to hominins dated before 1.5 ma."

2. According to various references, cranial capacity = brain mass \* 1.14.
