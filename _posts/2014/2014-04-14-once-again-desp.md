---
layout: article
title: Once again, desperately dissing Avida
date: '2014-04-14 15:01:07 -0700'
author: Richard B. Hoppe
mt_id: 6939
blog_id: 2
post_id: 6939
basename: once_again_desp
---
One of the characteristics of a pseudoscience is repeating discredited arguments as though they were new. And sure enough, once again an Intelligent Design Creationist is flailing around trying to discredit research in digital evolutionary models that shows that structures displaying IDC's central concept, irreducible complexity, are evolvable via Darwinian processes. I have previously looked at earlier attempts to discredit that research; see [here](http://www.pandasthumb.org/archives/2004/03/evolving_complex_stuff_darwinian_evolution_and_irreducible_complexity.html) and [here](/archives/2005/09/desperately-dis.html) for examples. 

Now it's happening again. This month, Winston Ewert, affiliated (according to the paper) with the Discovery Institute's Biologic Institute (though he [doesn't appear](http://www.biologicinstitute.org/people) on their published list of personnel), [published a review](http://bio-complexity.org/ojs/index.php/main/article/viewFile/BIO-C.2014.1/BIO-C.2014.1) and critique of several computer models of evolution in the DI's captive journal [Bio-Complexity](http://bio-complexity.org/ojs/index.php/main/issue/archive). Ewert was a graduate student of Robert Marks at Baylor, where he was associated with Marks' and Dembski's [Evolutionary Bioinformatics Lab](http://evoinfo.org/index/). He now has a Ph.D. from Baylor, the first in Baylor's combined electrical engineering and computer science graduate program.

In his critique Ewert looks at five programs: [Avida](http://avida.devosoft.org/), Tom Schneider's [Ev](http://schneider.ncifcrf.gov/paper/ev/), Dave Thomas's [Steiner tree GA](http://www.csicop.org/si/show/war_of_the_weasels), Suzanne Sadedin's [geometric model](http://www.csse.monash.edu.au/~suzannes/files/Sadedin2006TR.pdf), and Adrian Thompson's "[digital ears](http://link.springer.com/chapter/10.1007%2F3-540-63173-9_61#page-1)", a program realized in field programmable gate arrays. Here I will analyze Ewert's critique of Avida; I am less familiar with the other models Ewert discusses. However, given the errors I find in his discussion of Avida, I am very dubious with respect to his analysis of the other programs. If he does so badly with something I know pretty well, why should I trust his judgement in areas I don't know so well?

After repeating an introduction to Avida that I wrote some years ago, I will follow (roughly) Ewert's analysis, in which he first describes all five programs and then criticizes them. Hence, I'll look at Ewert's description of Avida, and in particular note several errors in it, and then I'll evaluate his criticisms. I find that his description is faulty and his critique ill-founded.

**Introduction to Avida**

I first provide a (lightly edited) description of Avida that I [published on the Thumb](http://www.pandasthumb.org/archives/2004/03/evolving_complex_stuff_darwinian_evolution_and_irreducible_complexity.html) 10 years ago. This is the version of Avida used in the Lenski,. et al., research reported in Nature in 2003 and that is discussed below in the context of Ewert's critique. The platform is considerably more elaborate now.

> **Brief (!) Intro to the Avida artificial life platform**
> 
> Avida is an artificial life platform in which digital organisms reproduce, mutate and diversify, and compete on reproductive success in a space-limited context and therefore evolve in a virtual world. Initially, Avida critters can only reproduce; their code contains the instructions necessary to reserve memory, copy themselves into that memory, and divide, placing the newly copied offspring in another cell of the Avida world. The genomes of the digital critters are assembly language programs that can (if the necessary instruction sequences evolve) perform logic functions, mapping inputs to outputs in a manner corresponding to the performance of logic functions like AND, OR, XOR, and so on. (Avida is available free on the Web for Linux, Windows, and Mac platforms.)
> 
> An Avida evolutionary run starts with a population of identical Ancestral digital critters that can do nothing but replicate themselves. The Ancestors may or may not have some "junk" instructions appended to their (human-written) replication code. As a run proceeds the Ancestors begin to reproduce, with an occasional mutation occurring during the process. Various kinds of mutations are possible - point mutations (alterations of a single instruction), insertions, and deletions. Replication errors induced by mutations can produce what roughly corresponds to gene duplication or deletion. It is also possible to enable a process that resembles horizontal gene transfer. Another sort of mutation can cause deletion or duplication of sections of a critter's genome instructions during copying.
> 
> The digital critters compete on reproductive fitness: better replicators have a relative advantage in the (fixed size) population. If the experimenter has chosen to not provide an extrinsic fitness function (_i.e._, the landscape is flat), the critters compete solely on reproductive efficiency, and one can watch lineages within the population compactifying their replication code, getting better and better at reproducing, and often evolving replication code that is tighter and more efficient than even the best human-written code. A more complete introduction to Avida is [Biology of Digital Organisms](http://www.researchgate.net/profile/Christoph_Adami/publication/222666076_The_biology_of_digital_organisms/file/79e4151099b4948f91.pdf) (pdf).
> 
> More interesting is the situation where an extrinsic fitness function is imposed on the Avida world so the Avida environment is selectively non-neutral. With an extrinsic fitness function, digital organisms can acquire reproductive resources - computer cycles - by performing various logic functions on 32-bit binary strings. The more (different) logic functions a critter performs, and the more complicated the functions, the more reproductive resources it acquires.
> 
> Under circumstances where digital organisms can acquire reproductive resources by performing logic operations on inputs, mapping them to appropriate outputs, one sees lineages evolving that perform first one, then two, then a number of different logic functions. After some hundreds of generations (tens of thousands of updates), some lineages of digital organisms may be performing a half dozen or more logic functions, ranging from very simple (AND) to quite complicated (XOR, EQU).
> 
> One advantage of the Avida platform is that one can dump the full evolutionary history of lineages to disk for later analysis.

So Avida is a research platform to study certain aspects of evolution. It is not an evolution 'simulator,' but is a platform in which real adaptive evolution--the variation/selection algorithm--occurs. Populations of entities (digital programs) replicate, mutate, and evolve on fitness landscapes controlled by the experimenter.

**Ewert's description of the program**

Ewert's description of the program has several problems.  The program is described in a way that skips several important aspects and, by implication at least, makes it sound considerably simpler than it actually is. For example, Ewert says

> However, for the computer model Avida, the EQU func­tion requires nineteen instructions, or separate steps. (p. 2)

Actually, that number refers to the shortest known human-written program for EQU (without self-replication code). While it can't be proved to be the shortest possible such program, no one has (so far) written a shorter. However, there is a very large number of programs longer than 19 instructions that can also perform EQU. Presented as it is in the Ewert paper, the implicit subtext is that there is but one specific program that can perform EQU, one 'target' for the digital critters. But in fact there are many many different programs that can do so, and many different programs performing EQU evolved in the research. In fact, in the Lenski, et al, research Ewert later criticizes, the 23 lineages that evolved to perform EQU in the main experimental condition did it in 23 _different_ ways, none of them the 19-step human-written procedure! That, of course, eviscerates any probability statements about evolving EQU the IDists might want to make, since to get a numerator for a probability estimate they would have to first estimate the number of different programs able to perform EQU. Ewert, in common with other ID creationists, has a hard time distinguishing between phenotype (a critter that performs EQU) and genotype (the specific sequence of instructions that enable the performance of EQU by a given critter).

Ewert wrote: 

> Avida begins with simple organisms that can evolve by insert­ing new instructions into their code. Sometimes those new instructions are able to perform a simple task. (p. 2)

That's incomplete. Avida allows (and the Lenski, et al. research used) three basic types of mutations: point mutations, insertion mutations, and deletion mutations. In addition, duplications or deletions of multiple instructions could occur as a result of a mutation affecting the division process during replication. 

And no single instruction, when added, can perform a simple task. Even the simplest logic task requires multiple instructions. A single instruction, when added to a critter's genome/instruction string, may _in combination with already existing instructions_ enable the performance of a logic task. Avida evolves programs, not individual instructions in isolation.

Ewert says that

> A visual depiction of the process of evolving the Avida program is avail­able on the Evolutionary Informatics website<sup>2</sup>.

That footnote [links](http://www.evoinfo.org/minivida/) to a program called "Minivida" which (allegedly) implements much of (some of?) the functionality of Avida itself. I find no "visual depiction" there on a cursory check. I haven't looked at Minivida very closely yet. Its documentation looks to be pretty sketchy. In any case, I see no "visual depiction" there.

**Lenski, et al., "The Evolutionary Origin of Complex Features"**

Ewert really wants to discredit [Lenski, et al. paper](http://ofria.com/pubs/2003LenskiEtAl.pdf ), the research that so itches the ID creationists. Ewert asserted that 

> A paper on Avida did claim to be exploring the "evolution­ary origin of complex features" \[14\]; however, the published research made no claims to have evolved irreducible complexity. (p. 3)

In fact, that paper did show that irreducibly complex programs evolved, without specifically using Behe's term. Using a knockout procedure, the research showed that 

> The genome of the ﬁrst EQU-performing organism had 60 instructions; eliminating any of 35 of them destroyed that function \[see Figure 4 of the Lenski, et al., paper\]. Although the mutation of only one instruction produced this innovation when it originated, the EQU function evidently depends on many interacting components. (p. 141)

Further,

> The phylogenetic depth at which EQU ﬁrst appeared \[across 23 different experimental runs\] ranged from 51 to 721 \[mutation\] steps. In principle, 16 mutations, coupled with three instructions already present in the ancestor, could have produced an EQU-performing organism. The actual paths were much longer and highly variable, indicating the circuitousness and unpredictability of evolution leading to this complex feature. (p. 142)

So a knockout analysis showed that 35 instructions were necessary--the irreducible core--to perform EQU in one lineage. Further, the 23 lineages that evolved to perform EQU were all different from one another--there was no single path to the function. Ewert's claim is false.

**Watch the goal posts move: redefining irreducible complexity**

To attempt to escape the implications of Lenski, et al., Ewert moves the goal posts, providing a revised conception of irreducible complexity.  Ewert writes

> Inspection of the models reveals that almost all of them have parts with a complexity \[=improbability\] less than even the lower limit derived above. Avida has twenty-six possible instructions. That gives a probability of at least 1/26: insufficiently complex. (p. 6)

Recall Behe's definition: 

> By _irreducibly complex_ I mean a single system composed of several well-matched, interacting parts that contribute to the basic function, wherein the removal of any one of the parts causes the system to effectively cease functioning. (Darwin's Black Box, p.39; italics in the original)

 Ewert now amends that definition to claim that the parts themselves have to be "complex." (Remember, for Ewert, "complex" = "improbable") He says 

> From what is said above, it is clear that parts themselves may be constructed of smaller parts. For example a molecular machine is made of proteins, which are made of amino acids. When we consider the complexity of a part, then, we are consid­ering the complexity of the parts that make up the irreducibly complex system, not just the constituent subcomponents of the parts. _While an amino acid by itself is too simple to be a com­ponent in an irreducibly complex system_, a protein made up of many amino acids is sufficiently complex." (p. 6; italics added)

 So now an irreducibly complex system must be composed of parts that are themselves "complex." Let me understand this: a protein is complex enough to be a component of an irreducibly complex system--a "molecular machine"--but the amino acids of which the protein is itself composed are not complex enough to be components of an irreducibly complex system. Oooookey dokie. That means proteins cannot be irreducibly complex. Ewert spends a couple of paragraphs fighting this conclusion, mainly by appealing to the "complexity" (improbability) of long strings of amino acids, each element in the string chosen from a set of 20, but in the end it's plain: proteins cannot be _irreducibly_ complex. Ewert says

> Although Behe does not argue for the _irreducible_ complex­ity of individual proteins, their complexity \[=improbability\] is clear. 

Of course, a range of other creationists claim the opposite, that proteins _are_ irreducibly complex. For example, Institute for Creation Research [geneticist Jeffrey Tompkins](http://www.icr.org/article/engineered-protein-evolution-proves/) says 

> Researchers recently announced the first systematic laboratory-induced mutation of successive amino acids in a nearly complete simple bacterial protein.1 The results demonstrated how protein chemistry and structure, in even the most simple of life's proteins, are irreducibly complex.

And Answers in Genesis [concurs](http://www.answersingenesis.org/articles/tj/v17/n2/admissions):

> And, as in all prior discussed instances, speculative outcomes do not begin to explain the origin of irreducibly complex proteins at all. 

Closer to home (for Ewert, at least), Casey Luskin writes

> The specified complexity of proteins and protein-protein bonds are other examples \[of irreducible complexity\]. (Axe, 2000; Axe, 2004; Behe & Snoke, 2004)

And still closer to home, [William Dembski wrote](http://www.designinference.com/documents/2004.01.Irred_Compl_Revisited.pdf)

> Now it's certainly true that the Darwinian mechanism is capable of tinkering with existing proteins or recruiting them wholesale for new uses. But there is no evidence that it can produce complex specified proteins from scratch (the problem of specified complexity thus arises not just at the level of irreducibly complex molecular machines but even at the level of the individual proteins that make up these machines and constitute their elemental constituents). 
> Moreover, recent work on the extreme functional sensitivity of proteins provides strong evidence that certain classes of proteins are in principle unevolvable by gradual means (and thus a fortiori by the Darwinian mechanism) because small perturbations of these proteins destroy all conceivable biological function (and not merely existing biological function). Thus, it's highly implausible that the Darwinian mechanism can generate the novel proteins (as well as the novel genes coding for them) required in the evolution of the bacterial flagellum. 

**Pity the poor mouse trap**

Given this (re-)definition of irreducible complexity, it's tough for me to see how Behe's iconic example, the mouse trap, is irreducibly complex. Ewert does some squirming around about that, too, but it is fruitless. He claims that Behe _really_ meant that the parts of a mouse trap are themselves "complex". Ewert quotes Behe as writing 

> The hammer \[of the mouse trap\] is not a simple object. Rather it con­tains several bends. The angles of the bends have to be within relatively narrow tolerances for the end of the hammer to be positioned precisely at the edge of the platform, otherwise the system doesn't work.<sup>7</sup>(pp. 5-6)

Baloney. That's ludicrous. The hammer has to be "precisely at the edge of the platform"? Nope. Hammers that extend almost anywhere over the striking platform would do the job of killing mice. Less well than the standard design, perhaps, but with some degree of efficiency. The hammer could be half the length of the platform, extending barely past the bait, in which case it would specialize in head shots. It could have a "V" shape or an "S" curve and still accomplish its role. It could even be a single arm. Imagine a population of mouse traps with varying hammer configurations. Does Ewert (and Behe) think that only the single instance with a hammer shaped in just one way, terminating "precisely at the edge of the platform," would kill mice? That's just silly. It illustrates the ID creationist fixation on ideal types and singular 'targets,' with no conception of population variability.

And I'll observe that footnote 7 cited in the quotation above is to [a page](http://www.arn.org/docs/behe/mb_mousetrapdefended.htm  ) on the Access Research Network (ARN) site that is no longer accessible.

**Conflating "complexity" and "improbability"**

Throughout his paper Ewert conflates "complex" and "improbable." He uses them interchangeably. By "complex" Ewert means _nothing more_ than improbable: the very next sentence following the redefining quotation above is "How rare or improbable does a component have to be?" The full quotation is

> How rare or improbable does a component have to be? For computer simulations, this depends on the size of the experi­ment. The more digital organisms that live in a model, the more complexity \[improbability\] can be accounted for by chance alone. For example, suppose that the individual parts in a system each have a proba­bility of one in a hundred. Given a system of three components, the minimum necessary for a system of several components, the probability of obtaining all three components by chance would be one in a million, derived by multiplying the prob­abilities of the three individual components. Given a million attempts, we would expect to find a system with a probability of one in million once on average. To demonstrate that the irreducibly complex system could not have arisen by chance, the level of complexity \[improbability, remember\] must be such that average number of guesses required to find the element is greater than the number of guesses available to the model.

So the elements of an irreducibly complex system have to be themselves improbable (rare) enough that random assembly has too small a probability to occur. For, say, the bacterial flagellum so beloved by ID creationists, the protein constituents are apparently improbable (rare) enough, since there are lots and lots of proteins, but the amino acids of which the proteins are themselves composed aren't improbable (rare) enough, there being just 20 of them. (Ewert later calls the Avida instructions, a set of 26, to be parts "of trivial complexity.") I repeat: that means that proteins are not themselves irreducibly complex. Oops. Foot, meet bullet.

But plowing right along, Ewert calculates some probabilities, or at least calculates some numbers alleged to be probabilities.

> The largest model considered here, Avida, uses approxi­mately fifty million digital organisms \[14\]. The smallest model considered, Sadedin's geometric model, uses fifty thousand digital organisms \[17\]. The individual components should be improbable enough that the average guessing time exceeds these numbers. We can determine this probability \[What probability? He just said he was estimating "average guessing time"!\] by taking one over the cube root of the number of digital organisms in the model. We are taking the cube root because we are assuming the minimal number of parts to be three. The actual system may have more parts, but we are interested in the level of complex­ity that would make it impossible to produce any system of several parts. Making this calculation gives us minimal required levels for complexity of approximately 1/368 for Avida and 1/37 for Sadedin's model.

 I'm not sure where that fifty million number comes from. It looks like it might be in the neighborhood of the product of the population size (3,600) times the average number of generations in a run (15,873), or 57,142,800. And I'm not at all sure what that 1/368 is supposed to represent beyond being the cube root of 50 million. Is it the probability of ... um ... well, what? Getting the necessary three instructions by chance? Well, in Avida there are 26 instructions, so the probability of getting some specific trio of them in three random draws with replacement from an urn is 1/26^3, or 1/17,576. Nope, that ain't it. The average number of occurrences of that specific trio in 50 million tries? Nope, that's 57 (50 million over 17,756). Is it some referent such that it marks a boundary beyong which it is too improbable that a specified string could occur by chance?

Or is it that using Ewert's model, given 50,000,000 organisms per run, each organism containing on the order of 50 or more instructions and given that at least three instructions are necessary to be an irreducibly complex structure, the probability of finding that structure of three instructions purely by chance is 1/368? I don't know what that number is actually telling us. It entails some assumptions that badly need defense (independence and uniform pdf, to begin with), and it has a mysterious provenance.

And what happened to Ewert's "average guessing time"? It disappears after that one mention; time is not mentioned again. Again, I have no idea what it is supposed to be, if anything.

And come to think of it, Lenski, et al., actually did 50 runs of a control condition in which the rewards for all less complex tasks were set to zero, with only EQU rewarded, and over those approximately 50,000,000 organisms per run times 50 runs, or 2.5 billion organisms, _not once_ did a critter capable of performing EQU appear. Ewert apparently didn't notice that Lenski, et al., ran the very control necessary to address his concern about the chance occurrence of the 'target' phenotype. If it is too likely that EQU would have occurred by chance, why didn't it appear in the control condition specifically designed to test that possibility? In fact, of course, Ewert's calculation is just hand waving.

As an example of playing with eensy teensy numbers, here's a calculation using Ewert's statistical assumptions and ignoring pleiotropy and epistasis (both of which occur in Avida critters). In one of Lenski, et al.'s lineages (one of the 23 that evolved to perform EQU), 35 instructions were determined to be essential for performing EQU; see Figure 4 in [their paper](http://ofria.com/pubs/2003LenskiEtAl.pdf). That was determined by a knockout procedure: replace an instruction with a null instruction and see whether the function goes away. Given 26 instructions ("parts") and 35 program slots in the irreducible core, the probability (again, recall, on Ewert's assumptions) of assembling just those parts in just those program slots by chance is 1/(26^35), or 2.99E-050. That's an incredibly small number, folks (count the number of zeroes to the right of the decimal place before you encounter a non-zero digit). But of course, it's all irrelevant. In Lenski, et al.'s, work, adaptive evolution could occur by incremental steps since the topography of the fitness landscape was not flat. And that brings me to ...

**But they rigged the game!**

Ewart writes

> Avida deliberately studied a function that could be gradu­ally constructed by first constructing simpler functions.

That's a common ID creationist claim. We hear them shriek _They rigged the game by using a fitness landscape that allowed the performance of EQU to evolve!!!_ 

Well, _DUH!_  To test the hypothesis at issue, should one ignore the topography and composition of the fitness landscape? Ewert goes on to quote Lenski, et al.:

> Some readers might suggest that we 'stacked the deck' by studying the evolution of a complex feature that could be built on simpler functions that were also useful. However, that is precisely what evolutionary theory requires, and indeed, our experiments showed that the complex feature never evolved when simpler functions were not rewarded. (p. 143)

That is, they used fitness landscapes that potentially allowed simpler functions to evolve, providing code that could subsequently be co-opted to form programs that could perform more complex functions. They also ran appropriate control conditions, 37 of them, in fact. 

Be they biological or digital, populations of replicators with heritable variation adaptively evolve on fitness landscapes that display gradients in relevant aspects. Given a flat fitness landscape, one would still see evolution by genetic drift but not adaptive evolution. Add non-uniform topography to the fitness landscape and by golly, there's adaptive evolution. And Lenski, et al., hypothesized that critters that could peform higher-complexity functions could evolve in populations that included critters able to perform less complex functions, those simpler critters themselves evolved from a population of ancestors that could only replicate. Their research _tested_ that proposition.

Ewert writes

> Out of all the possible features that could be studied, the developers of Avida chose features that would be evolvable. They have deliberately constructed a system where evolution proceeds easily. They justify this by stating that it is required by evolutionary theory. However, the question is whether this requirement will be met in realistic cases, and Avida has simply assumed an answer to that question. 

 Does Ewert imagine that in order to test a theory, one should _ignore_ variables that the theory identifies as relevant? Ludicrous. Is his question, 'Do realistic cases of biological evolution involve fitness landscapes that display gradients?' If so, then the answer is obvious: of course they do! The real world is full of gradients. And what exactly does Ewert mean by "Out of all the possible features ..."? What features would he prefer? Should we construct a fitness landscape composed of musical phrases and see whether logic functions will evolve? Should we construct fitness landscapes composed of arithmetic problems and see whether dance notation will evolve? Or maybe a ballerina? And I note once again that those "evolvable" features produced results that satisfy Behe's operational definition of irreducible complexity. That's the fundamental itch for Ewert.

**Summary**

In the end, Ewert concludes

> Avida fails by three criteria. The parts are of trivial complex­ity. There is no attempt to show that the parts are necessary for the working of the system. Furthermore, the system was deliberately chosen as a subject of study because it would be evolvable.

By "the parts are of trivial complexity" (Ewert's amended definition of irreducible complexity) he means that there are only 26 instructions in the instruction set and thus they are not "complex" (=improbable) enough. But he somehow manages to miss the combinatorial explosion as the length of the genome of an Avida critter increases and the number of instructions in the irrreducible core rises. Recall the excruciatingly small probability of chance accounting for the 35 instructions of the irreducible core of the case study lineage. And DNA? Fuggedaboutit. It's composed of only four bases. Now that's _real_ "trivial complexity."

As far as Ewert's "no attempt" claim is concerned, that's flatly false. Lenski, et al., did the knockout analysis necessary to establish which instructions were essential to the performance of EQU and which were not, meeting Behe's operational criterion for determining irreducible complexity.

Finally, his last complaint, that the game was rigged, displays his abject ignorance of how one tests a theory. Apparently he imagines that in order to test a theory, one should ignore the variables the theory identifies as relevant. He complains that the experiment included conditions in which performing logic functions of simple and intermediate complexity was rewarded. But co-option of simpler structures and processes is hypothesized to be an important process in the evolution of complex phenotypic features, and by golly, here we have an experiment that tests that very hypothesis in an evolutionary system and finds it to be supported. The evolution of complex features occurs when simpler features, themselves adaptive in their own right while performing different functions, are present and available for co-option. Note carefully Lenski, et al.'s sentence immediately preceding the 'deck stacking' one Ewert quotes above.

> Our experiments demonstrate the validity of the hypothesis, first articulated by Darwin and supported today by comparative and experimental evidence, that complex features generally evolve by modifying existing structures and functions. (p. 143)

Just so: adaptive evolution by natural selection is descent with modification from existing--and often simpler--structures and processes.

There are other problematic aspects of Ewert's paper. For example, his discussion of the roles of parts, as distinguished from the parts themselves, is vulnerable. But I've written enough. Ewert's critique of the Avida research is fatally flawed. He over-simplifies and misrepresents the program and misrepresents its results. I see no reason to take his critique of Avida seriously, and, by extension, I therefore see no reason to take his critiques of the other programs seriously.
