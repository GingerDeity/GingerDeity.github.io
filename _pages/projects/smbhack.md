---
title: SMB RomHack
layout: splash
classes: wide
date: 2026-01-16T15:34:30-04:00
excerpt: It's the classic Mario you remember!... almost
permalink: /projects/smb_romhack/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/SMB_Hack/smb_hack_mario.png
feature_row:
  - image_path: /assets/images/SMB_Hack/smb_hack_mario.png
    title: "Mario - Normal Palette"
  - image_path: /assets/images/SMB_Hack/smb_hack_jumpman.png
    title: "Mario - Donkey Kong Palette"
  - image_path: /assets/images/SMB_Hack/smb_hack_luigi.png
    title: "Mario - Luigi Palette"
tags:
  - game
  - romhack
  - yychr
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/smb_mod.mp4" type="video/mp4">
</video>

## What It Is
This was a very simple ROM hack of Super Mario Bros., done using software known as *YY-CHR*, which allowed me to directly manipulate the CHR-ROM data. My director for this project, who happens to also be my 10-year-old little brother, gave me insightful project specs such as "make Mario really bald and have silly mushrooms," "I don't want questions on the blocks," and "make the stars smiley."

## Why I Made This
My little brother is a very big Mario fan (maybe the greatest Mario fan to ever exist), and has recently been taking after his big brother and started learning game development on Scratch! He seemed really interested in SNES games like Super Mario Kart and Super Mario World, so I decided to show him what actually manipulating game data looked like. He seemed to really enjoy it!

I really like teaching, and getting to show this little guy how the professionals would store and change data back in the day was a lot of fun. It's always such a treat to share your passion with the people you care about, even if they are self-proclaimed 'goobers'.

## How it Works
*YY-CHR* is a very basic but effective program that allows you to view and manipulate the CHR-ROM data for retro games. You can't change the color palettes used in-game (as far as I'm aware), but you can make your own palettes to see what they would look like in-game. Here are some pictures of our balding Mario swapping palettes: 

{% include feature_row %}

Aside from a few config changes in the way the graphics are laid out on the screen, that's all there is to it!

## Takeaway
This was a simple little project that only took my brother and me a few hours to do, but was incredibly fun. It was a great reminder that not every project on here should be some grand thing, just anything to show I'm learning and capable. Getting to spend time with loved ones is always a treat, too.

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
