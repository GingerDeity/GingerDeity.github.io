---
title: TEST 2
layout: splash
classes: wide
excerpt: The cutest, dullest frog imaginable is given an all-powerful space suit to travel with!
highlight: true
permalink: /projects/TEST2/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/FrogRunner/frogrunner_header.png
feature_row:
  - image_path: /assets/images/FrogRunner/early_frog1.png
    title: "Items without background"
  - image_path: /assets/images/FrogRunner/early_frog2.png
    title: "Items with early-version background"
  - image_path: /assets/images/FrogRunner/frog_heads.png
    title: "Items with early-version background"
tags:
  - game
  - godot
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/frogrunner_preview.mp4" type="video/mp4">
</video>

## What It Is
FrogRunner is a 3D physics-based platformer and speedrunning game where you play as a simple frog in a giant mechanical suit, using your tongue to fluidy grapple and zoom all around levels! Me, my friend Colm, and my brother Anduin are currently still developing a prototype that will have you grappling and zooming all over a level, breaking all the targets as fast as possible.

## Why I Made This
Me and Colm have been wanting to break into making 3D games and also continue practicing Godot for a long time now, so he came up with the idea of a grappling platformer/first-person-shooter game! I liked the idea of a silly frog using his tongue to grapple around, but thought the jumping motion of a frog would be more tricky to code and not as fun to play. So, I juxtaposed the tiny frog with a heavy-mech bipedal suit! 

## Current State

## Features

### Debugger Window
Taking inspiration from developer menus in games like Super Smash Bros. Melee, I wanted to make it possible to view certain data in-game to make sure everything is updating properly. This is the debugger window! You can check certain boxes to update the window moment to moment, and even change the number of decimal places! This works in tandem with the Godot State Charts plugin by Jan Thoma and contributors, which I even had to add a custom method into their code for this to work as I needed.

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/frogrunner_debugger.mp4" type="video/mp4">
</video>

### Dev-Keys 
I also added dev-keys to reload the level (`F1`), toggle the dev-camera (`F2`), toggle the debugger window (`F3`), and change levels (`F4`). This makes developing even easier, and standardizes mapping all future dev-keys to function keys

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/frogrunner_devkeys.mp4" type="video/mp4">
</video>

## Final Thoughts

### What Worked
- The atmosphere was exactly what I wanted, and I found myself and other players repeatedly stopping just to take the sounds in
- The gameplay of creating your own windowsill was incredibly fun, and it was engaging to see the different types of windowsills people were making!
- The controls and UI were intuitive, and no one seemed to have any questions

### What I'd Do Differently
- I didn't use different audio buses for the different types of sounds, which made fine-tuning between the background and sound effects more difficult
- Considering how easy it was for items to collide and make sounds when you had dozens on screen, adding a sound-effects manager to make sure that sounds also didn't stack in unpleasant ways would've been a good addition
- One bug was that when an item fell, I had it spawn back at the top... but I forgot to cap its speed! It would get faster and harder for players to grab it!
- If the item went too far to the side of the screen when you went to get it, you'd activate the inventory or shop, and it would cover the item you're trying to grab!

### Takeaway
What I'm most proud of in this game is the atmosphere, as the sound design and art (all synthesized and drawn by me) coalesce beautifully into one scene. It almost feels like it's not your eyes gazing out the window, but your past self's. This is a game that you can play for a few moments on your computer, go back to work, and the atmosphere will be right there waiting for you. One thing I believe games can do is to create safe spaces for their users, and I think this game accomplished that brilliantly. However, as beautiful as it is, the above mentioned problems with functionality do hold it back. Adding in a sound-effects manager and fixing the physics bugs would have made it perfect. Overall, it's a project I'm very proud of, but certainly not flawless.

## Play for yourself
Simply click [here](https://atreyum.itch.io/rainfall), download the .exe file, and it should work on any Windows machine!

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
