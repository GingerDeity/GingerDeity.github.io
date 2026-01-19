---
layout: single
title: Projects
---

{% for project in site.projects %}
  <article>
    <h3>
      <a href="{{ project.url }}">{{ project.title }}</a>
    </h3>
    <p>{{ project.excerpt }}</p>
  </article>
{% endfor %}
