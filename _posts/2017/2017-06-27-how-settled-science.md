---
title: 'How settled science remained settled'
date: '2017-06-27 17:20:00 -06:00'
author: Matt Young
---

An Australian mammal known pseudonymously as Quokka has alerted us to an article, <a href="http://principia-scientific.org/how-a-settled-science-experiment-backfired-to-discredit-global-warming-theory/">How a 'settled science' experiment backfired to discredit global warming theory</a> in the journal Principia Scientific. Mr. Quokka  assured us that

<blockquote>This site is for the most extreme deniers, who don't even accept the greenhouse effect. Gloriously bonkers.</blockquote>

With that introduction, how could I resist? As it happens, the article merely refers us to another article, <a href="http://principia-scientific.org/publications/PROM/PROM-ROSS-Experiment.pdf">Is a back radiation greenhouse effect of 33 kelvin[s] possible?</a> by Ross MacLeod, who evidently uses the pseudonym Rosco in the comments to the Principia Scientific article. Mr. MacLeod's article is frankly one of the worst presentations I have ever seen in a supposedly technical journal. I scanned through the paper and, though I have some expertise in radiometry and have written a <a href="https://www.amazon.com/Optics-Lasers-Including-Waveguides-Advanced/dp/354065741X">book</a> chapter on that topic, I simply could not figure out much of what Mr. MacLeod has done nor what he is trying to do. The experiment itself is amateurish at best, and the report certainly would not pass muster as an undergraduate laboratory report in my department.

What I understood was that the author shined two flood lamps (PAR lamps, with a paraboloidal reflector behind a tungsten filament) onto a piece of tape attached to some kind of thermometer. More specifically, he shined one lamp at a time, then both lamps. The presentation was hard to follow, but I think that his conclusion was given in the equation

P<sub>(2)</sub> + P<sub>(3)</sub> - P<sub>(1)</sub>) = P<sub>(4)</sub> ! 

which I have corrected and rewritten as

[P<sub>(2)</sub> - P<sub>(1)</sub>] + [P<sub>(3)</sub> - P<sub>(1)</sub>] = [P<sub>(4)</sub> - P<sub>(1)</sub>]

Here, the P's are power radiated from the heated tape, (1) at ambient temperature, (2) and (3) from the two bulbs separately, and (4) from both bulbs together. Mr. MacLeod has succeeded in showing that if you shine both lamps on a piece of tape, you will get the same net thermal radiation off the tape as you got from the two lamps separately. I have not the vaguest idea why he finds that result surprising enough to append an exclamation point to his equation. It seems to me that the result is no more than a statement of conservation of energy.

<!--more-->

It is remarkable that he got anything close to equality. He does not account for convection, but merely claims that it ought to be the same at different temperatures. That claim is not obvious, and he ought to look up how much heat loss due to convection from a vertical surface varies with the temperature of the surface. After all, you could claim that blackbody radiation ought to be much the same at different temperatures, but you would be wrong. Why then should we believe that convection loss is much the same at different temperatures? I have performed heat-loss calculations, but I do not remember in detail how much convection loss depends on temperature. Suffice it to say that convection loss is tricky and even depends on the angular orientation of the surface. If I were Mr. MacLeod I would try very hard to defend my unsupported claim that convection loss ought to be irrelevant.

Apparently some people told him that the experiment should be performed in a cavity. Yes, in principle the best way to make a blackbody is with a cavity. For this experiment a black surface would suffice, but the back and sides of the thermometer should have been well insulated, and it would have been better to use a thermocouple or something like that with fine wires, so that conduction loss would be minimized. If the black surface is not isolated as well as possible, you have no idea what is going on.

Mr. MacLeod remarks that the emissivity of the surface does not matter because it is constant as a function of wavelength. He may be right, but probably for the wrong reasons. The illumination comes from a lamp with a color temperature of around 3000 K, so a peak wavelength of around 1 µm. The thermal radiation from the tape, at a temperature of around 300 K, peaks closer to 10 µm. The emissivity of the tape at 10 µm is apt to be fairly high, though not necessarily. But if the tape uses, say, some organic compound to make it black in the visible, it may well have a low emissivity (and hence absorptivity) at 1 µm. That the emissivity is constant as a function of frequency from 1 µm to 10 µm is another unfounded assumption. It is all the more remarkable that Mr. MacLeod obtained the result that he got. Perhaps we have a case involving the principle of cancellation of errors.

Mr. MacLeod seems to think that all of the power drawn by the filament is radiated into a 15° (half-angle) cone out the front window. That is not so. The filament loses heat to conduction and probably convection (because I think such lamps are gas-filled and not evacuated). Somewhere, he says that the temperature of the envelope is 200 °C. I did a quick calculation approximating his lamp as a cone at a constant temperature. I assumed that the emissivity of the glass in the appropriate wavelength region was 0.9. I estimate that 100 W is radiated from the glass and is not directed toward the target. Such a calculation gives only an order of magnitude, to be sure, but it suggests that radiation loss from the glass may be a measurable fraction of the total power drawn by the filament.

Speaking of filaments, we do not know what the 15° cone angle represents, so it may have been wiser to locate the apparent point of origin of the light by calculating the image of the filament in the paraboloidal reflector. 

The heat radiation from the front surface of the envelope is not directed into the cone from the paraboloidal reflector. Rather, it should be treated as a small Lambertian source 40 cm or so from the target. You may use the Stefan-Boltzmann law to estimate the radiance of the surface.

Finally, I simply could not understand the discussion of the Planck curves, particularly where he appears to be adding curves at different temperatures. Or something. I think he claimed in the comments that he had not done so, but I do not have the patience of Mr. Quokka, and my head was spinning by the time I got that far.

OK, now let us get to the point. Mr. MacLeod criticizes a <a href="http://www.atmos.washington.edu/2002Q4/211/notes_greenhouse.html">lecture</a> from the University of Washington. The lecture is completely correct. If you think it is wrong, then you are denying the existence of the greenhouse effect – not anthropogenic global warming, but the greenhouse effect as such. Mr. MacLeod evidently thinks that his crude experiment has demonstrated that the greenhouse effect, which warms our planet by several tens of kelvins, does not exist.

Two comments: First, if his target is the greenhouse effect, then he has performed the wrong experiment. The correct experiment would have been to cover the tape with a piece of glass or plastic which transmits the radiation from the lamp and absorbs the thermal radiation from the tape. That experiment would be somewhat difficult, in that you would have to account for reduced convection loss due to the cover, but in principle it is the right experiment. (Incidentally, the main effect in a real greenhouse is reduced convection, but radiation trapping still plays a part.)

More importantly, though, the greenhouse effect is settled science. If I had done a crude experiment in a field in which I am not trained, and if that experiment yielded a result that disputed something that everyone else knows, I hope that I would be smart enough to recognize that something was wrong with my experiment or my reasoning, and not with the science.

<br/>
<strong>Acknowledgment.</strong> Many thanks to Mr. Quokka for iterating with me a couple of times before this article went to press.
