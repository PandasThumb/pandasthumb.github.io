---
title: 'Methinks it is sort-of like two weasels'
date: '2022-04-26 12:00:00 -08:00'
author: Joe Felsenstein
---

<figure>
<img src="/uploads/2022/weasel.png" alt=[Weasel run result]/>
<figcaption> Part of a run of Dawkins's Weasel simulation,
showing it approaching the target phrase </figcaption>
</figure>
<p>

Eric Holloway has written an article [here](https://mindmatters.ai/2022/03/dawkins-dubious-double-weasel-and-the-combinatorial-cataclysm/) at the Discovery Institute's
site _Mind Matters_, in which he presents a variant on Richard
Dawkins's famous Weasel simulation, one in which there is not
just one target phrase, but two .  You may recall that the
original Weasel program had a target phrase, which was "METHINKS
IT IS LIKE A WEASEL".  Counting blanks, this is 28 characters
long.  We start with a random string of 28 characters.  Each
generation the single string of 28 characters produces offspring
and they mutate, each character having a chance of changing to one
of the 26 other possibilities (the alphabet is
26 characters plus a blank).  If there are 10 offspring in each
generation, some may match the target phrase in more positions than other do.
In the original Weasel, natural selection occurs by having the
the offspring closest to the target string
replaces the previous parent string.

In Dawkins's original computer simulation, the target phrase was
found in a few hundred to a few thousand steps, depending on the
number of offspring and the mutation rate.  We can compare this
to what would occur without natural selection, by having
a random offspring string replace the parent string. 
In that case, the string just changes at random by mutation, and
one can show that the number of generations that would be needed
to come across the target phrase would be about 10<sup>40</sup>.
That's an awful lot more than a few thousand.

Holloway's article claims to show that by using not one, but two
target phrases, it can be seen that natural selection is in most
cases ineffective.  A commenter, "Roy", at Josh Swamidass's
Peaceful Science forum took issue (here) with Holloway.  His argument
there is fairly convincing, but there is more to be said.

Let me explain ...

<!--more-->

**The Weasel**

Richard Dawkins introduced his "Weasel" computer simulation
in 1976 in his book *The Blind Watchmaker*.  It was a dramatic
example of how natural selection could achieve a goal far faster
than purely undirected random change.  Many advocates of
creationism are insistent on characterizing natural evolutionary
processes as "random".  This in hopes of convincing their audience
that evolutionary process are hopelessly bad at achieving
adaptations.  Dawkin's example demonstrates why natural selection
is not making "random" change. The example is an enormously effective
teaching example.

The result has been that many creationists are obsessed with
showing that Dawkins's argument does not work. By contrast, evolutionary
biologists are only mildly interested, as they have had many
empirical and theoretical examples of natural selection
working to achieve adaptations. Theoretical population genetics
dates back over 120 years, and the mathematics of natural
selection solidified 100 years ago: they have not been
waiting to hear from Richard Dawkins.  For a discussion of
how a Weasel simulation can be made to use the standard
Wright-Fisher model of theoretical population genetics,
see [a post by me at The Skeptical Zone in 2016](http://theskepticalzone.com/wp/wright-fisher-and-the-weasel/).
But that carries us away from the present issues.

**Previous criticisms**

Here are some of the most common creationist objections:

(1) "But unlike evolution, Weasel programs have an explicit
target".  Yes, Richard Dawkins said so himself at the time.  The
purpose of his simulation was as a teaching example to show
readers how natural selection could be strongly nonrandom.

(2) "But Dawkins never provided his source code."  He described
the simulation clearly, and it is very simple.  Many people have
written Weasel programs in various computer languages, and all
have shown results very similar to his.  There is no mystery that
would be solved by inspecting the original code.

(3) "But the program is intelligently designed!"  So what?  We can
intelligently design computer simulation programs of many natural
phenomena (motion of planets, soil erosion, change of weather,
etc.) and that does not show that those natural phenomena must be
intelligently designed.

(4) "The Weasel shows 'locking' (or 'a partitioned search'), so that a position does not change
once it matches the target.  That is why it works."
Consideration of examples published by Dawkins shows that they
do not show "locking".  But when Weasels have "locking" added, they
 are only slightly better than ones without, and both show adaptation that
is far faster than random wandering.  So this is a minor issue.

It is rather remarkable how obsessed many creationists are with
the Weasel.  Consider that many of them declare that change within
species is irrelevant to their arguments, because they are only
talking about the origin of major changes of body-plan.  They 
claim to not be making a general argument that natural selection is
ineffective.   Actually, they used to make such arguments, but
they have sworn off doing that.  But the minute someone claims to have an argument that
shows that natural selection is generally ineffective, they "fall off the
wagon" and once again succumb to this obsession.

**Holloway's criticism**

[Eric Holloway's](https://mindmatters.ai/2022/03/dawkins-dubious-double-weasel-and-the-combinatorial-cataclysm/) 
modified Weasel has two target strings.  In his
trials, the second string was "IT LOOKS LIKE A WEASEL TO ME".  There
is still one parent string, which starts out being random, and it undergoes
the same mutational process as before.  But this time natural selection
acts by checking each offspring against both targets.  The score
is how many positions match at least one of the targets.  Thus if
a string has 12 positions that match only the first target, another 3
that match only the second target, and one position that matches
both targets, we count 12+3+1 = 16 matches. As before, the offspring
that has the highest score replaces the previous string in each
generation becoming the new parent.. 

The result is typically a string that matches one target or the other
in every position, but is not identical to either target.  An example
would be "IE LINKS LTKIS  IEA EL EASME".  How many outcomes have a
score of 28?  There are 26 positions in which there are two possible
matches, and two positions in which there is only one possible match,
positions 7 and 8.  The number of strings achieving a perfect score
is then 2<sup>26</sup>, which is 67,108,864.  

Aha, cries Holloway.  The strings he calls targets are two strings out of this large number,
and we reach all these possible perfect-scoring strings with equal
probability, so the chance that natural selection and mutation succeed in 
finding one of the two target strings in this case is very small.
All he has done, he says, is add
an additional target, but natural selection does not know to go
to one or the other targets, but instead mistakenly "splits the
difference":

> It is like natural selection is driving the evolution bus down the road and encounters a fork with either a left or right turn. Unable to choose either alternative, natural selection decides to split the difference and plow straight ahead, leaving evolution a smoking wreck.

**"Roy" replies to Holloway**

At Josh Swamidass's "Peaceful Science" forum, a frequent commenter
whose handle is "Roy" presented a rebuttal of Holloway which started
a discussion thread on ["Misunderstanding weasel programming"](https://discourse.peacefulscience.org/t/misunderstanding-weasel-programming/14968).
Roy demonstrates some misunderstandings on Holloway's part.  His main
criticism is 

> ... natural selection does not only select one character at a time. It selects the combination of characters in an individual
> organism. If a mouse is born with two mutations that give it respectively larger ears and darker eyes, it’s not possible for
> natural selection to retain one but not the other - that would require only half the mouse to have a litter of pinkies.

...

> What happened is that @EricMH implemented the wrong selection criterion. He’s scoring single characters, when he should actually be
> scoring the entire string.

Roy is correct, as far as Roy's argument goes.  I want to discuss the matter a little more generally.

**Holloway and different cases**

In natural examples, natural selection could work either like Eric's program or like
Roy's program.  These are two legitimate possibilities (and there are others, too).
But what about the target strings?  In natural evolutionary processes there are no
targets.  Different genotypes simply have different fitnesses, and that is the
result of how the genotype affects the phenotype, and how that phenotype
interacts with the environment.   The closest thing to a target is the set
of genotypes of high fitness.

So if you use Holloway's program, the targets that it is seeking are not the two
sentences.  They are the set of all 2<sup>26</sup>6 strings that achieve the highest
fitness.   On the other hand if you use Roy's program, the strings that
achieve highest fitness are only the two strings that Holloway describes.

Yes, there is a behavior of "splitting the difference", but it is Holloway, not
a simulated evolutionary process, that is doing the splitting.  Holloway is 
running a program that would have 2<sup>26</sup> targets, but declaring that there are
only two target strings.  Holloway would be right about that if he were
running, not his own program, but Roy's.  But he isn't, he's splitting the
difference and instead running his program, which has far more than two
strings of high fitness.

Both case are possible, but you shouldn't go around arbitrarily declaring
strings as being the targets, when evolution is acting as if there are
far more or far fewer strings of high fitness.  Your argument might be left
"a smoking wreck".
