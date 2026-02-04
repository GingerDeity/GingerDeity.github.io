---
title: Blender 101
layout: splash
classes: wide
excerpt: My reintroduction to Blender, via PS1-style graphics!
permalink: /projects/blender-101/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/Blender101/plissken_header.png
feature_row:
  - image_path: /assets/images/Blender101/plissken_body.png
    title: "Finalized Body"
  - image_path: /assets/images/Blender101/plissken_hair.png
    title: "Finalized Hair"
  - image_path: /assets/images/Blender101/plissken_final.png
    title: "Finalized Render"
tags:
  - blender
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/plissken_final.mp4" type="video/mp4">
</video>

## What It Is
This is a very simple Blender model of the character Snake Plissken from the Escape from New York and Escape from L.A. movies by John Carpenter. I styled it to look like it might belong in a PS1 or N64 game from the 90's, and textured the entire model across a 256px x 256px UV map.

## Why I Made This
I'm primarily a programmer who's dabbled in audio and art, but only for 2D games. However, when I started working on a 3D game with my friend, I figured it was finally time to relearn 3D-modelling! I've had some experience and even taught it as part of my curriculum at iD Tech, but I hadn't touched Blender or any 3D-modelling in years.

I was very tired of the 4-hour, 'make a donut' tutorial series, and wanted something I might actually use in a game or product. I had just finished watching Escape From New York starring Kurt Russell, and learned that his character (reference picutre below) was the inspiration for the character Snake from the famous Metal Gear Solid series. So, I decided to try my hand at a low-poly model of Kurt Russell's character, Snake Plissken! I found two very intuitive tutorials for both [low-poly modelling](https://www.youtube.com/watch?v=uIHuqFLa_X0) and [texturing](https://www.youtube.com/watch?v=R76e7CQ3D7s), and was able to pick it up quickly!

<img src="/assets/images/Blender101/plissken_ref.png" style="max-width: 600px; display: block; margin: 0 auto;">

## Development
After finishing the tutorial, I started by gathering reference images and remodelling the body as needed. From there, I relearned the solidify modifier and added the hair and his gun holsters. Finally, I textured the whole thing using only a Smart UV Project. Overall, the process was incredibly intuitive, and the only problem was when I accidentally forgot to save the texture image *twice*!

{% include feature_row %}

## Final Thoughts

### What Worked
- The model looks really similar to the reference images I curated
- With a bit more styling, I feel like it would fit right into the very first Metal Gear Solid game, which was the entire goal!

### What I'd Do Differently
- I would spend more time with the Solidify modifier; there were a lot of weird creases that I couldn't fix, but thought looked good enough anyway and decided to keep
- Consider also adding his brown leather jacket from the movie, that thing looked awesome!
- Go back and rig and animate it, maybe even make a game scene for him to run around in!

### Takeaway
For my first time modelling with the intent of it being possible to put in a game, it looks great! While there are some rough patches and lessons to learn, I think the final product is good and shows great potential. I'm definitely much more confident in continuing to learn *Blender* now!

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
