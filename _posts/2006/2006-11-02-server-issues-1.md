---
layout: article
title: Server Issues
date: '2006-11-02 11:33:23 -0700'
author: Reed A. Cartwright
mt_id: 2582
blog_id: 2
post_id: 2582
basename: server_issues_1
---
When we switched to our new server software, it appears to have screwed up how some browsers manage their cache.  This means that some browsers are stuck on outdated pages.

To fix this issue, you need to clean out your cache (or temporary internet files).

If you are using Internet Explorer please make sure all the patches have been applied.  Microsoft has fixed some bugs relating to compressed content.

I also recommend that you upgrade to a modern browser like [Firefox](http://www.mozilla.com/en-US/firefox/) if possible.

**Update:**

I've added some directives to the html header that tell browsers to only cache PT html pages for a maximum of one hour.  Hopefully, that will limit the scope of the problem.

**Update:**

Another fix for Internet Explorer is to do a full refresh, "CTRL-F5".  Pressing the refresh button is not enough.

I spend many hours last night trying to figure out the problem.  For MSIE the problem has to do with some odd interaction between our web server software and MSIE when MSIE has cached a compressed page.  I can't replicate the problem on my personal server, so it may depend on some subtle configuration issue or the version of FreeBSD the PT server runs.  When I get a chance, I'll try to debug the server software to see if I can find anything.

For now, I've disabled page compression, and after a single cache clear everything should work fine.  However, it's going to hurt our bandwidth.
