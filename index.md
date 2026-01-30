---
layout: single
classes: wide
author_profile: true
title: Home
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/highlights_header.png
---

Hello, as you may have guessed, my name is Atreyu McLewin, and this is my website! I am currently a senior at Virginia Tech majoring in Computer Science and minoring in Mathematics. I am currently in the process of applying for an MFA in Creative Technologies at Virginia Tech and am using this site as my portfolio! My passion is video games, so you'll be seeing many entries that pertain to skills in that industry. You'll find a collection of game works, art, music, and other niches like creative writing and graphic designs

## Portfolio Highlights
{% assign highlighted = site.pages | where: "highlight", true %}
{% assign highlighted_projects = highlighted | sort: "weight" %}

<div class="highlights-grid">
  {% for project in highlighted_projects limit:3 %}
    {% if project.path contains 'projects/' %}
      <blockquote class="project-blockquote">
        <a href="{{ project.url }}">
          <h3>
           {{ project.title }} - {{ project.date | date: "%B %d, %Y" }}
          </h3>
        </a>
        <p>{{ project.excerpt }}</p>
        <p class="page__taxonomy">
          <strong><i class="fas fa-tags"></i> Tags:</strong>
          {% for tag in project.tags %}
            <span class="page__taxonomy-item">{{ tag }}</span>
          {% endfor %}
        </p>
      </blockquote>
    {% endif %}
  {% endfor %}
</div>

[See all highlights →](/highlights/)

## Recent Posts
{% for post in site.posts limit:3 %}
### [{{ post.title }}]({{ post.url }}) - *{{ post.date | date: "%B %d, %Y" }}*
{{ post.excerpt }}
{% endfor %}

[View all posts →](/blog/)
