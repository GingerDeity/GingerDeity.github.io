---
layout: archive
title: Projects
permalink: /projects/
---

<div class="project-grid">
  {% for project in site.pages %}
    {% if project.path contains 'projects/' and project.path != 'projects/index.md' %}
      <div class="project-card">
        <a href="{{ project.url }}">
          <h3>{{ project.title }}</h3>
        </a>
        <p>{{ project.excerpt }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
