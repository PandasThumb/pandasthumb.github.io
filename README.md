# PandasThumb
This repository holds the source code for the Panda's Thumb website.

## Writing a Blog Post

Blog Posts are found in the `\_posts/` directory.  Instructions on how to write them can be found at https://jekyllrb.com/docs/posts/.  Post are written using kramdown (markdown) syntax as described at http://kramdown.gettalong.org/syntax.html.

*NOTE (August 2020):  Until further notice, do not upload the post file yourself.  Instead
email it to Joe Felsenstein, whose email address can be found by searching 
for his lab website page and looking in his Curriculum Vitae (CV) there*

### Example Blog Post
Create a file called `_posts/2016-11-01-hello-world.md` with the following content:

```
---
title: 'Hello World'
date: '2016-11-01 12:01:00 -07:00'
author: Reed A. Cartwright
---

Hello World
```

### Below the fold
To separate your post into an initial section that appears on the main page and "the rest" insert `<!--more-->` at the point where you want the break to occur.

```
---
title: 'Hello World'
date: '2016-11-01 12:01:00 -07:00'
author: Reed A. Cartwright
---

Hello World

<!--more-->

Just kidding.
```

### Future Posting

If you want your post to run in the future, then put its date into the future. The server runs a cron job every hour that checks to see if anything needs to be published.

### Uploading Images

Upload all images and other content into the `/uploads/[YEAR]/` directory, in markdown you can insert images into your post like so:


*NOTE (August 2020):  Until further notice, do not upload the image file yourself.  Instead
email it to Joe Felsenstein, whose email address can be found by searching 
for his lab website page and looking in his Curriculum Vitae (CV) there*


```markdown
![Skadoosh](/uploads/2016/slide-kung-fu-panda-3.jpg)
```

![Skadoosh](/uploads/2016/slide-kung-fu-panda-3.jpg)

However, we are still working on the best way to use naked images on the new PT layout, so you should prefer figures for now.

### Figures

Ideally, you should prefer to use figures instead of images; however, figures are not directly supported in Markdown syntax.  However, you can use the following `html` syntax to insert one.

```html
<figure>
<img src="/uploads/2016/slide-kung-fu-panda-3.jpg" alt="Skadoosh"/>
<figcaption>
Skadoosh
</figcaption>
</figure>
```

If you want to use markdown syntax inside the `figure` tag, the Kramdown documentation describes how to do it.  Note that GitHub does not support the `figure` tag, so what you see when you preview your post online will not be the same as the final rendering.

### Sidebar Figures

If you want to specify a `figure`/`img` that floats to the right or left you can use `class="on-the-left-side"` or `class="on-the-right-side"` attributes in the image tag. This will make the figures consume 33% of the content width with fully sized and scale nicely on mobiles.

## Running PT Locally on Windows

The PT website is built using [Jekyll](https://jekyllrb.com/). To work with PT locally on Windows, follow the instructions at [Jekyll on Windows](https://jekyllrb.com/docs/installation/windows/).  Once Jekyll is installed and you have cloned a copy of the PT repo locally, run 'Start Command Prompt with Ruby' and use the following commands.

```bat
cd PandasThumb   # or where ever you placed your clone
bundler install  # install the Ruby files needed to build the website
_bin\server.bat  # run a local server
```

It can take a while before the server is ready to serve pages because it has to build a lot of files. Enabling incremental builds will make this process go faster on subsequent runs. The output of Jekyll should look something like this.

```
Configuration file: C:/Users/cartw/Documents/PandasThumb/_config.yml
            Source: C:/Users/cartw/Documents/PandasThumb
       Destination: C:/Users/cartw/Documents/PandasThumb/_site
 Incremental build: enabled
      Generating... 
       Jekyll Feed: Generating feed for posts
                    done in 233.09 seconds.
 Auto-regeneration: enabled for 'C:/Users/cartw/Documents/PandasThumb'
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
```

Once the server is running you will be able to look at it by visiting `http://127.0.0.1:4000/`.

Now whenever you add a file or make a change to the source directory, Jekyll will rebuild the site (incrementally) and you will be able to preview the results locally.

Make sure when you are finished to check your changes into your local git repo and push them to your remote repo.
