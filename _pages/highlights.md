---
layout: archive
title: Highlights
permalink: /highlights/
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/highlights_header.png
---

<div class="highlights-grid">
  {% for project in site.pages %}
    {% if project.path contains 'projects/' and project.highlight %}
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
