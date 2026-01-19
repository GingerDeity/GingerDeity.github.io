---
layout: archive
title: Projects
permalink: /projects/
---

<div class="project-grid">
  {% for project in site.pages %}
    {% if project.path contains 'projects/' and project.path != 'projects/index.md' %}
      <blockquote class="project-blockquote">
        <a href="{{ project.url }}">
          <img src="{{ project.feature_row[0].image_path }}" alt="{{ project.title }}">
          <h3>{{ project.title }}</h3>
        </a>
        <p>{{ project.excerpt }}</p>
      </blockquote>
    {% endif %}
  {% endfor %}
</div>
