---
layout: single
classes: wide
author_profile: true
title: Home
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/highlights_back.png
---

Hello, as you may have guessed, my name is Atreyu McLewin, and this is my website! I am currently a senior at Virginia Tech majoring in Computer Science and minoring in Mathematics. I am currently in the process of applying for an MFA in Creative Technologies at Virginia Tech and am using this site as my portfolio! My passion is video games, so you'll be seeing many entries that pertain to skills in that industry. You'll find a collection of game works, art, music, and other niches like creative writing and graphic designs

## Portfolio Highlights
{% assign highlights = site.pages | where_exp: "p", "p.path contains 'projects/' and p.highlight == true" %}
<div class="highlights-grid">
  {% for project in highlights limit:3 %}  {# show only top 3 on home page #}
    <blockquote class="project-blockquote">
      <a href="{{ project.url }}">
        <img src="{{ project.feature_row[0].image_path }}" alt="{{ project.title }}">
        <h3>{{ project.title }}</h3>
      </a>
      <p>{{ project.excerpt }}</p>
    </blockquote>
  {% endfor %}
</div>

[See all highlights →](/highlights/)

## Recent Posts
{% for post in site.posts limit:3 %}
### [{{ post.title }}]({{ post.url }}) - *{{ post.date | date: "%B %d, %Y" }}*
{{ post.excerpt }}
{% endfor %}

[View all posts →](/blog/)
