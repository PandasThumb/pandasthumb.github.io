---
layout: article
title: 'Red Lynx: A Population Genetics Simulator'
date: '2009-03-07 21:02:10 -0700'
author: Reed A. Cartwright
mt_id: 4190
blog_id: 2
post_id: 4190
basename: population_gene
---
I've been building this simulator off and on for a few months.  It is called Red Lynx and is written completely in client-side javascript using [jQuery](http://jquery.com/), [jQuery UI](http://ui.jquery.com/), and [jQuery SVG plugin](http://keith-wood.name/svg.html).

My goal is to host several of these javascript toys and teaching tools on PT and allow our readers to experiment with them.  I'll be back later to explain the model, but I want to give y'all the chance to play with it and try to deduce the model beforehand.  (Of course, you can look at the code, but that's cheating.)

This simulation is inspired by a few [Java applets](http://darwin.eeb.uconn.edu/simulations/simulations.html) written by Kent Holsinger at the University of Connecticut.  [Dan Earle](http://pandasthumb.org/archives/2009/01/coding-help.html) came through big time by porting the binomial random number generator from GSL to javascript.

Internet Explorer does not have native support for SVG graphics.  You can install  [Adobe SVG viewer](http://www.adobe.com/svg/viewer/install/main.html) or the
[Renesis Player](http://www.examotion.com/index.php?id=product_player) to use the simulator.


<style type="text/css">
@import "scripts/jquery.svg.min.css";
*.ui-redlynx {
width: 600px;
margin-left: auto;
margin-right: auto;	
}
*.ui-redlynx div.canvus {
height: 400px;
border: 1px solid black;
}
*.ui-redlynx div.control {
margin-top: 1.5em;
font-size: 95%;
}
*.ui-redlynx input[type="text"] {
text-align: right;
border-width: 0px;
margin-right: 0.75em;
float: right;
color: #444;
}
*.ui-redlynx label {
float: left;
}
*.ui-redlynx div.ui-slider {
width: 325px;
float: right;
}
*.ui-redlynx div.control p {
margin: 0em 0em;
margin-bottom: 0.5em;
}

*.ui-redlynx div.control p.ui-redlynx-buttons,
#red-lynx-den p.ui-widget {
margin-top 1.5em;
text-align: center;
margin-bottom: 1.5em;
}

*.ui-redlynx a.ui-redlynx-run,
*.ui-redlynx a.ui-redlynx-clear,
#red-lynx-den a.ui-redlynx-on {
padding: .4em 1em .4em 20px;
text-decoration: none;
position: relative;
margin-left: 0.5em;
margin-right: 0.5em;
}

*.ui-redlynx a.ui-redlynx-run span.ui-icon,
*.ui-redlynx a.ui-redlynx-clear span.ui-icon,
#red-lynx-den a.ui-redlynx-on span.ui-icon {
margin: 0 5px 0 0;
position: absolute;
left: .2em;
top: 50%;
margin-top: -8px;
zoom: 1;
}
*.ui-redlynx div.ui-state-error {
padding: 0 .7em;
margin-top: 1em;
}
*.ui-redlynx div.ui-state-error span.ui-icon {
float: left;
margin: 4px;
}

</style> 
<script type="text/javascript" src="/scripts/jquery.svg.min.js"></script>
<script type="text/javascript" src="/scripts/jquery.svggraph.min.js"></script>
<script type="text/javascript" src="/scripts/ui.redlynx.min.js"></script>

<div id="red-lynx-den">
<p class="ui-widget"><a href="#" class="ui-redlynx-on ui-state-default ui-corner-all">
<span class="ui-icon ui-icon-power"></span>Start Red Lynx Simulator
</a></p>
</div>
<script type="text/javascript">
$(function(){
$('#red-lynx-den a.ui-redlynx-on').click( function(event,ui) {
event.preventDefault();
$('#red-lynx-den').html('').redlynx({initPath: '/scripts/'});
}).hover(
function(event, ui){ $(this).addClass('ui-state-hover'); }, 
function(event, ui){ $(this).removeClass('ui-state-hover'); }
).mousedown(
function(event, ui){ $(this).addClass('ui-state-active'); }
).mouseup(
function(event, ui){ $(this).removeClass('ui-state-active'); }		
);
});
</script>


**Update:**  I've made some changes based on feed back that I've received and some new ideas I had.
