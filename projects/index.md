---
layout: archive
title: Projects
permalink: /projects/
paginate: true
---

<div class="project-grid">
  {% for project in site.pages %}
    {% if project.path contains 'projects/' and project.path != 'projects/index.md' %}
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
