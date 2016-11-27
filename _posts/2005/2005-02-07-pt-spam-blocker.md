---
layout: article
title: PT Spam Blocker
date: '2005-02-07 20:55:24 -0700'
author: Reed A. Cartwright
mt_id: 737
blog_id: 2
post_id: 737
basename: pt_spam_blocker
---
Salvador is making [some noise on ARN](http://www.arn.org/cgi-bin/ubb/ultimatebb.cgi?ubb=get_topic;f=12;t=001847;p=1#000000) about  a comment of his being rejected by our spam filter.   This post is to clarify things.

Spammers target blogs with comments.  These attacks can be harsh.  At times spammers will go through every single post in the blog and post three comments containing scores of links advertising every thing from child rape to internet bingo.

To counter such horrid spam, we employ a blacklist plugin that searches every comment for certain patterns and rejects any that fit.  Unfortunately sometimes non-spam also gets blocked.  Users are sent a message informing them of the bad content so they can change the post.  (Robotic spammers ignore such messages.)

Our typical cycle of spam control went like this:



* Spam gets through the filter.
* We recognize the spam.
* Add the urls from the spam to the blacklist.
* Delete the messages that got through.


Of course, the time between 1 and 4 can be hours or days, which can lead to a lot of naughty messages sitting around the blog for a while.

I finally got fed up with this reactionary technique a few months ago, and decided if there was a better option.  I tried the explanatory filter but it was unable to detect links designed by spammers.  So I had to fall back to old methodology and took links from our blacklist, which I already knew had been designed by spammers, and tried to deduce some megarules from them.  I ended up deciding to block urls that contained multiple hyphens, since about 75% of the spammers' urls went something like "hot-chicks-want-to-hottub-with-you.ruky.net."  (I also blocked all .info addresses since we were only getting spam from them.)

The multi-hyphen megarule has worked very well.  However, it is still **experimental** and has been modified more than once.  If you have a problem with getting a url past the spam blocker, you can simply use [tinyurl.com](http://tinyurl.com/) to create a replacement url.  That is what Wesley did in [this comment](http://www.pandasthumb.org/pt-archives/000654.html#c15269) to link to ISCID.  (Contrary to [some claims](http://www.arn.org/ubb/ultimatebb.php/ubb/get_topic/f/12/t/001847/p/1.html#000009) we did not change the blacklist for Wesley.)

We do make our blacklist publicly available, [blacklist.txt](http://www.pandasthumb.org/blacklist.txt), so anyone can check if we are banning sites critical towards us.  Sorry, would-be martyrs, we do not censor your favorite sites from comments, unless you're into mature mamas or something.  Besides if we wanted to censor you, we'd ban your IP, not add you to our spam blocker.
