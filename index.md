---
layout: single
classes: wide
author_profile: true
title: Home
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/HomePageBanner.png
---

Hello, as you may have guessed, my name is Atreyu McLewin, and this is my website! I am a graduate of Virginia Tech who majored in Computer Science and minored in Mathematics. My passion is all things game development, software development, and interactive media! Please enjoy the website and projects, and also consider checking out my [LinkedIn](https://www.linkedin.com/in/atreyu-mclewin-a48b5528a/) and [GitHub](https://github.com/GingerDeity)!

## Portfolio Highlights
{% assign highlighted = site.pages | where: "highlight", true %}
{% assign highlighted_projects = highlighted | sort: "weight" %}

<div class="highlights-grid">
  {% for project in highlighted_projects limit:3 %}
    {% if project.path contains 'projects/' %}
      <blockquote class="project-blockquote">
        <a href="{{ project.url }}">
          <h3>{{ project.title }}</h3>
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
