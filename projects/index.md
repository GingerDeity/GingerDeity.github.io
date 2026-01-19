---
layout: archive
title: Projects
permalink: /projects/
---

<div class="project-grid">
  {% assign projects = site.pages | where_exp:"p","p.path contains 'projects/'" %}
  {% for project in projects %}
    <div class="project-card">
      <a href="{{ project.url }}">
        <img src="{{ project.feature_row[0].image_path }}" alt="{{ project.title }}">
        <h3>{{ project.title }}</h3>
      </a>
      <p>{{ project.excerpt }}</p>
    </div>
  {% endfor %}
</div>
