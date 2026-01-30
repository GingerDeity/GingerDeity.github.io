---
title: Frog Runner
layout: splash
classes: wide
date: 2026-01-30
excerpt: The cutest, dullest frog imaginable is given an all-powerful space suit to travel with!
highlight: true
weight: 1
permalink: /projects/frogrunner/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/FrogRunner/frog_hats.webp
feature_row:
  - image_path: /assets/images/FrogRunner/frog_progression.webp
    title: "Early Frog Sketches"
  - image_path: /assets/images/FrogRunner/frog_early.png
    title: "Palette Experimentation"
  - image_path: /assets/images/FrogRunner/frog_hats.webp
    title: "Hat Accessories"
tags:
  - game
  - godot
  - art
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/frogrunner_preview.mp4" type="video/mp4">
</video>

## What It Is
FrogRunner is a 3D physics-based platformer and speedrunning game where you play as a simple frog in a giant mechanical suit, using your tongue to fluidly grapple and zoom all around levels! Me, my friend Colm, and my brother [Anduin](https://www.instagram.com/twigpen/) are currently still developing a prototype that will have you grappling and zooming all over a level, breaking all the targets as fast as possible.

## Why I Made This
Me and Colm have been wanting to break into making 3D games and also continue practicing Godot for a long time now, so he came up with the idea of a grappling platformer/first-person-shooter game! I liked the idea of a silly frog using his tongue to grapple around, but thought the jumping motion of a frog would be more tricky to code and not as fun to play. So, I juxtaposed the tiny frog with a heavy-mech bipedal suit!

I'm incredibly proud of how the project is coming so far. I haven't had time for personal projects in years, and being able to spend so much time essentially building my own engine within the Godot engine has been incredible. We've built so many systems and procedures that will make designing an entire demo or game much easier! It feels great letting myself program how I've always wanted to, and getting to do it with friends is a lot of fun as well.

## How to Play

### Download
While we have yet to release an official demo, if you'd like to play a current prototype build, download and extract the zip file [here](/assets/downloads/FrogRunner.zip)


### Controls
- Basic Movement
  * `WASD`: Move  
  * `SPACE`: Jump  
  * `C`: Crouch  
  * Double-tap `W`: Sprint  

- Grappling
  * `Left-Click`: Lock-on  
  * `Right-Click`: Reel-in  
  * `Left-Shift` + `Right-Click`: Reel-out  
  * Tip: Release `Left-Click` while holding `Right-Click` to get a more vertical launch!  

- Misc.
  * `ESC`: Pause/Unpause  
  * `F`: Toggle Fullscreen  

- Dev Keys
  * `F1`: Reload Level  
  * `F2`: Toggle Dev. Camera  
  * `F3`: Toggle State-Chart Debugger  
  * `F4`: Toggle Levels  

## Current State
We plan to have a demo at some point, but are still fixing certain bugs and adding new movement abilities. Here's a list of what we've made so far and what you can expect when we do release a demo:

### What we've made so far
- A debugger window that allows us to select and view any values we need
- A developer camera that allows for fixed or 3rd-person viewpoints 
- A developer menu that lets us modify values such as player speed and gravity
- Several prototype levels for testing movement
- Robust, scalable systems and procedures for designing levels, enemies, targets, and more!

### What to Expect
- Fun, fluid, and dynamic grapple and pendulum movement
- Abilities such as a double-jump and speed-boost
- Gameplay that will incentivize intense, exciting speed and accuracy
- An open level filled with targets for you to smash through and speedrun!

## Features I'm Proud Of
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

## Development
### Art
While I do dabble in the arts, I'm still learning how to properly do character design. So, I opted to have my brother Anduin draw up some concept art for the frog character, and they've really delivered! We've gone through a few iterations so far, as shown below.

{% include feature_row %}

We originally envisioned the frog as being lanky, as seen in the first image, but later opted for him to be more of a ball-shape to better contrast the mech-suit. Before those first digital drawings, the first sketches were handdrawn, and showed a much more humanoid suit that was akin to Samus' Varia Suit. I wanted the body to be more 'amphibious', and these digital drawings show that we made the hands and legs more frog-like, and added lily-pad shaped fins to the shoulders.

<p style="text-align:center;">
  <img src="/assets/images/FrogRunner/frog_lineup.webp" style="max-width:600px;">
</p>

This lineup image is our current design! We'll be trying to make 3D models and animations of the character soon, and we're also going to be adding a jetpack to the back of the suit that will allow for double-jumps. To keep with the frog-motifs, we'll be making the jetpack resemble a fly, with the gas/flames shooting out from wings!

<p style="text-align:center;">
  <img src="/assets/images/FrogRunner/islands_art.png" style="max-width:600px;">
</p>

This image shows a beta-islands level, with the art, design, texturing, and shading done by my friend Colm!

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
