---
layout: single
author_profile: true
title: Home
---

Hello, as you may have guessed, my name is Atreyu McLewin, and this is my website! I am currently a senior at Virginia Tech majoring in Computer Science and minoring in Mathematics. I am currently in the process of applying for an MFA in Creative Technologies at Virginia Tech and am using this site as my portfolio! My passion is video games, so you'll be seeing many entries that pertain to skills in that industry. You'll find a collection of game works, art, music, and other niches like creative writing and graphic designs

## Recent Posts

{% assign recent_posts = site.posts | slice: 0, 3 %}

{% for post in recent_posts %}
{% include archive-single.html %}
{% endfor %}

[View all posts →](/blog/)
