---
layout: archive
title: Highlights
permalink: /highlights/
---
<h1>Highlights</h1>

<div class="highlights-grid">
  {% for project in site.pages %}
    {% if project.path contains 'projects/' and project.highlight %}
      <blockquote class="project-blockquote">
        <a href="{{ project.url }}">
          <h3>{{ project.title }}</h3>
        </a>
        <p>{{ project.excerpt }}</p>
      </blockquote>
    {% endif %}
  {% endfor %}
</div>
