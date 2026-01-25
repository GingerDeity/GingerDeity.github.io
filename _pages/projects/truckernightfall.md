---
title: Trucker Night Fall
permalink: /projects/truckernightfall/
layout: splash
excerpt: It's late at night, and you've still got so long to go...
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/trucker-night-fall-title.png
feature_row:
  - image_path: /assets/images/truck.png
    excerpt: "Truck Model"
  - image_path: /assets/images/dash.png
    excerpt: "Dashboard and Truck Models"
  - image_path: /assets/images/girl.png
    excerpt: "Mirage Girl Model"
  - image_path: /assets/images/tree1.png
    excerpt: "Pine Model"
  - image_path: /assets/images/tree2.png
    excerpt: "Tree Model"
  - image_path: /assets/images/deer.png
    excerpt: "Deer Model"
tags:
  - godot
  - game
  - blender
---

# Description
This game resulted from a school game jam that lasted 48 hours in the Spring semester of 2024, where the theme was "Nightfall". I was working in a team of two other people, but what was interesting about this experience was that I was responsible for almost **none** of the programming. It was the first time I wasn't in charge of programming for a game and was instead given the task of doing all the 3D modeling. The only problem? I had never used Blender (their software of choice) before. This game jam, I fixed that.

The gameplay itself is very simple, and more story-driven. We wanted to tell the tale of an insomniac truck driver, whose demanding schedule is pushing himself further away from the family he is trying so desperately to provide for. All you're trying to do is stay on the road as the controls get slippier and more obstacles such as other trucks and potholes emerge. What the game truly excels in is the atmosphere, aiming for a low-poly PS1/N64 era art style that, when combined with the CRT effect, creates an environment dripping with personality. Unfortunately, my video software was having difficulty recording gameplay, so I've attached a screenshot below:

![Alt text](/assets/images/trucker-night-fall-title.png)

Upon replaying this game, one aspect I was proud of was not only my modeling but the density of the story and the voice acting of my fellow developers. I found myself able to relate to the character's struggle of balancing his work with his family, and the internal journey he went through was similar to one I had been through before.

# Development
Development revolved all around me learning Blender and getting models out as quickly as possible. One very smart play I did was to aim for that early PS1 aesthetics I mentioned earlier, as that style would help disguise my amateur models. Here are some of the models I created:

{% include feature_row %}

While all are fairly simple, they exude personality and atmosphere, and I learned a great deal about modeling because of this! Unfortunately, many of the original game files became corrupted, so I cannot offer any way to play this game. These images and descriptions are the only thing I can give to soothe the mysteries of this game...


<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
