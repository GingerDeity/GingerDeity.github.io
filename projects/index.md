---
layout: archive
title: Projects
permalink: /projects/
---

<div class="project-grid">
  {% assign projects = site.pages | where_exp:"p","p.path contains 'projects/' and p.path != 'projects/index.md'" %}
  {% for project in projects %}
    <div class="project-card">
      <a href="{{ project.url }}">
        <h3>{{ project.title }}</h3>
      </a>
      <p>{{ project.excerpt }}</p>
    </div>
  {% endfor %}
</div>
