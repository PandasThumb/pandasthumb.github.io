---
layout: article
title: Durston's devious distortions
date: '2009-01-31 22:05:44 -0700'
author: PZ Myers
mt_id: 4124
blog_id: 2
post_id: 4124
basename: durstons_deviou
---
<p>A few people (actually, a _lot_ of people) have written to me asking me to address Kirk Durston's probability argument that supposedly makes evolution impossible. I'd love to. I actually prepared extensively to deal with it, since it's the argument he almost always trots out to debate for intelligent design, but &mdash; and this is a key point &mdash; Durston didn't discuss this stuff at all! He brought out a few of the slides very late in the debate when there was no time for me to refute them, but otherwise, he was relying entirely on vague arguments about a first cause, accusations of corruption against atheists, and very silly biblical nonsense about Jesus. So this really isn't about revisiting the debate at all &mdash; this is the stuff Durston sensibly avoided bringing up in a confrontation with somebody who'd be able to see through his smokescreen.</p>

<p>If you want to see [Durston's argument, it's on YouTube](http://www.youtube.com/watch?v=XWi9TMwPthE). I notice the clowns on Uncommon Descent are crowing that this is a triumphant victory, but note again &mdash; Durston did not give this argument at our debate. In a chance to confront a biologist with his claims, Durston tucked his tail between his legs and ran away.</p>

<p>Let's start with his formula for functional complexity. He took this from a paper by Hazen, Griffin, Carothers, and Szostack; I know Hazen and Szostak's work quite well, and one thing you have to understand right away is that both are well-known for their work on the origins of life. They are not creationists by any means, and would probably be very surprised to see this paper being touted by a creationist as evidence that evolution is nearly impossible.</p>

<p>Here's the formula that Durston cites:</p>

$$I(E_x) = -log_2 [ M(E_x) / N]$$

<p>Doesn't that look impressively sciencey? It's a very simple equation, though, used to quantify the amount of what Szostak calls "functional information",$$I(E_x)$$. It's being calculated with respect to a specific degree of a particular function, x. If we're looking at a function x like catalyzing a phosphorylation reaction, for instance, we might want to know how likely a random protein would be at that job. The rest of the equation, then, is very straightforward &mdash; we just assess how many different protein sequences, $$M(E_x)$$ meet the criterion of carrying out function x to some specified degree, and then we divide by the total number of possible protein sequences, N. N can easily be very large &mdash; if we ask how many possible protein sequences that are 10 amino acids long, with 20 different possible amino acids, the answer is 20<sup>10</sup>, or 1 x 10<sup>13</sup>, a very big number. And it gets even bigger very rapidly if you use longer protein sequences.</p>

<p>This big number can be misleading, though. We also want to know what fraction of all those sequences can carry out our function of interest, x, to some degree. This is the value of $$M(E_x)$$. In the trivial case, maybe catalyzing phosphorylation is incredibly easy, and _any_ protein has a level of activity that meets our criterion. Then we'd say that 10<sup>13</sup> out of 10<sup>13</sup> proteins can do it, the sequence doesn't matter, and any 10-amino acid protein you show me has no functional information relative to the function we're measuring. On the other hand, if there was one and only one sequence that could carry out that catalysis, the functional information of our 10 amino acid sequence is at a maximum.</p>

<p>To reduce the metric a little more, Hazen takes the negative log base 2 of this number, which simplify specifies the number of bits necessary to specify the functional configuration of the system. In our example of any protein doing the job, the answer is $$-log_2(10^{13}/10^{13})$$, or $$-log_2(1)$$, which is 0 &mdash; no information is required. If only one sequence works, the answer is $$-log_2(1/10^{13})$$, which, if you plug that into your calculators, is a bit more than 43 bits.</p>

<p>It's very easy and cheesily fun to churn out big numbers with these kinds of calculations. For instance, here's part of the first sentence of the Hazen paper:</p>

> <p>Complex emergent systems, in which interactions among numerous components or agents produce patterns or behaviors not obtainable by individual components, are ubiquitous at every scale of the physical universe</p>

<p>If you strip out the punctuation and spaces from that sentence, there are a total of 181 alphabetic characters there. How many possible arrangements of 26 letters in a sequence 181 characters long can there be? 26<sup>181</sup>, or 1.3 x 10<sup>256</sup>. It's huge! If we take the $$-log_2$$, we just produce something more manageable: you could encode that one specific sentence in 851 bits. But it still means the same thing, that this is a very large and improbable number.</p>

<p>What the Hazen equation does, though, is include that important $$M(E_x)$$ parameter. There is obviously more than one way to communicate the meaning of the sentence than just that one specific arrangement of letters. I rewrote Hazen's sentence a little less elegantly (the hard part was writing it so it came out to be exactly 181 characters long) here:</p>

> <p>Complicated stuff that is built up by many smaller components interacting with each other to make novel arrangements, arrangements that cannot be seen in the single pieces, are common everywhere in the known universe.</p>

<p>How many sentences like that are there? I don't know, but I'm sure there are a lot; it's also the case that we don't even need to be grammatical or elegant to get the basic message across. This works, too:</p>

> <p>There xxxxxx arre l0ts of xxxx big thijngs xxx xxxxxxx xx made of xxxxxxx littler x thangs xx xxxxxx stuck togther xxxxxxxxxxxxxxx xxxxxxxxxxxxxxx xxxxxxxxxxxxxxx xxxxxxxxxxxxxxx xxxxxxxxxxxxxxx xxxxxxxxxxxxx</p>

<p>Hazen is making the point that all 3 of those 181 character sentences are functionally equivalent. To measure the functional complexity of the sequence, you need to at least estimate the number of functional variants and divide by the total number of possible arrangements of letters. This measurement is also only applicable in the context of a specific function, in this case getting across the message of the ubiquity of emergent complexity. This sentence fragment, for instance, would **not** satisfy the requirements of $$M(E_x)$$, but you know, it might just carry a _different_ functional message.</p>

> <p>It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was th</p>

<p>Keep this in mind. Hazen's formula is used to calculate the information content of a _specific_ function, not all possible functions. </p>

> <p>**Functional information, which we illustrate with letter sequences, artificial life, and biopolymers, thus represents the probability that an arbitrary configuration of a system will achieve a specific function to a specified degree.**</p>

<p>Get it? I know, it's a lot of background and a lot of numbers being thrown around, but this is a computational tool they are using in artificial life simulations. Basically, they are asking, if we make a random letter sequence, what is the probability that it will say something about patterns? Or, if they make a random peptide, what is the probability that it will catalyze a particular reaction they are measuring? Or, if they create a random program in an artificial life simulator like Avida, how likely is it that they'll get something that can add two numbers together?</p>

<p>I'm not going to try to give you the details of Hazen's results, since they're largely tangential to my point here &mdash; they look at the distribution of solutions, for instance. But they do observe that in Avida, with an instruction set of 26 commands, and randomly generating 100-instruction programs, they find programs that carry out one logic or arithmetic function in about 1 in a thousand cases. There are about 3 x 10<sup>141</sup> possible arrangements of 26 instructions taken 100 at a time; any one specific sequence has a $$I(E_x)$$ of 470 bits.</p>

<p>Kirk Durston _loves_ the Hazen paper. He has cited it many times in the various debates recorded on the web. It's wonderful because it's a real scientific citation, it talks about measuring the functional complexity of things, and it's got math &mdash; simple math, but it's enough to wow an uninformed crowd. Just watch how he abuses this simple formula!</p>

<p>Start here:</p>

<img src="http://scienceblogs.com/pharyngula/upload/2009/01/durston1.jpeg" alt="durston1.jpeg" width="400" height="286" />

$$I(E_x) = -log_2 [ M(E_x) / N]$$

<p>That's it, 3 terms: $$I(E_x)$$,  $$M(E_x)$$, and $$N$$. He misuses them all. We start with N, and here's how he calculates it.</p>

<img src="http://scienceblogs.com/pharyngula/upload/2009/01/durston2.jpeg" alt="durston2.jpeg" width="400" height="290" />

<p>Hang on. N, as Hazen defines it, is the number of possible configurations of n possible elements. Durston doesn't have a way to calculate that directly, so he invents a kind of proxy: an estimate of the total number of unique individuals that have ever existed. This is wrong. Here we have a simple metric that we could use, for instance, to calculate the number of different possible poker hands that can be dealt from a deck, and instead, Durston is trying to use the number of times a hand has been dealt. Right away, he's deviated so far from the Hazen paper that his interpretations don't matter.</p>

<p>Now you might say that this is actually a change in our favor. It makes the number N much smaller than it should be, which means the probability of a specific result out of N possibilities is improved. But that's not even how Durston uses it! Suddenly, he tells us that N is a limit on an evolutionary search (again, that's not at all how Hazen is using it).</p>

<p>Here's the game he's playing. Durston shows up with a deck of cards for a game of poker; he knows, and you know, that the odds of getting a specific sequence of cards in a 5-hand deal are really low (about 1 in 3 x 10<sup>8</sup>). Then he tells you he only has time to deal out 100 hands to you, and wants to know if you want to just give him the money he'd win right now, since with only 10<sup>2</sup> trials to test over 10<sup>8</sup> possibilities, you are going to fall far short of exhausting the search space, and are highly unlikely to find the one specific hand he has in mind&hellip;which is true. Of course, none of that has any bearing on how poker is played.</p>

<p>So, he's basically abandoned the Hazen paper altogether &mdash; it was a veneer of scientific respectablity that he initially holds up in front of us, and then he ignores it to plug numbers he wants into the equation. Then he lowballs his irrelevant version of the number N, and redefines it to be a limit on the number of trials. Sneaky.</p>

<p>What about the next parameter? $$M(E_x)$$ is a rather important value in Hazen's paper, defined as "the number of different configurations that achieves or exceeds the specified degree of function x". One of the points in that work is that there are many different ways to accomplish function x, so this can be a fairly significant number. To continue our poker analogy, the goal of a hand is to beat the other hands &mdash; that's our function x, to have a combination of cards that has a greater rarity than every other player's hand. $$M(E_x)$$ is actually rather large, since the average poker hand will beat half of all other poker hands (and need I add, every round of poker will have one hand that wins!). How does Durston handle $$M(E_x)$$?</p>

<p>He ignores it. He simply sets it to 1.</p>

<p>He slides right over this rather significant fact. The next thing we see is that he announces that 140 bits (which is the log base 2 of 10<sup>42</sup>) is the upper bound of information that can be generated by an evolutionary search, and suggests that anything above this magic number number is unreachable by evolution, and anything below it could be reached by random processes.</p>

<p>What that means is that he only accepts one possible solution in an evolutionary lineage. He is estimating the probability that an organism will have precisely the genetic sequence it has, as derived from a purely random sequence, within a limited amount of trials. No incremental approach is allowed, and worse, it is the one and only sequence that is functionally relevant. The only way he imagines a sequence can be reached is by randomization, and all he considers is the conclusion. It really is a gussied-up version of the '747 in a junkyard' argument that the old school creationists still use.</p>

<p>To summarize, what we're dealing with is a guy who drones on about basic mathematics and pretends that his conclusions have all the authority of fundamental math and physics behind them. He waves a paper or two around to claim the credibility of the scientific literature, and then ignores the content of that paper to willfully distort the parameters to reach his desired conclusion, in contradiction to the actual positions of the authors. And then he further ignores the actual explanations of evolutionary biology to use a hopelessly naive and fallacious model of his own invention to claim that evolution is false. He's a pseudoscientific fraud.</p>

<p>I understand he's actually in a doctoral program in Canada. I hope that, before his thesis defense, a few competent people look over his thesis and check his interpretations of his sources. I just looked over the Hazen paper and compared it to what he's claiming about it, and his version is completely bogus.</p>

*********


<p>Hazen RM, Griffin PL, Carothers JM, Szostak JW (2007) [Functional information and the emergence of biocomplexity](http://genetics.mgh.harvard.edu/szostakweb/publications/Szostak_pdfs/Hazen_etal_PNAS_2007.pdf). Proc Natl Acad Sci U S A 104 Suppl 1:8574-81.</p>
