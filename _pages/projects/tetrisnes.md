---
title: Tetris NES Romhack
layout: splash
classes: wide
excerpt: A romhack of Tetris for the NES, attempting to bring modern Tetris mechanics 
permalink: /projects/tetris-romhack/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/TetrisNES/tetris_nes_header.png
feature_row:
  - image_path: /assets/images/TetrisNES/tetris_nes.png
    title: "NES Rotations"
  - image_path: /assets/images/TetrisNES/tetris_srs.png
    title: "SRS Rotations"
  - image_path: /assets/images/TetrisNES/tetris_nes_ideal.png
    title: "Ideal Rotations"
tags:
  - romhack
  - ghidra
  - assembly
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/tetris_nes.mp4" type="video/mp4">
</video>

## What It Is
This is another school project, where the incredible programmer Chase Dillard and I set out to try to add modern mechanics to the outdated Tetris for NES. Specifically, we set to add in [wall-kicks](https://tetris.wiki/Super_Rotation_System#Wall_Kicks) and missing [rotation states](https://tetris.wiki/Super_Rotation_System).

Here's the [link to GitHub and ROM](https://github.com/GingerDeity/TetrisNES)

## Team Roles
- **Chase Dillard**: Research and development of wall-kicks
- **Me (Atreyu)**: Research and development of SRS rotation

## My Role & Contributions
My role ended up being a few things:
- Researching and implementing the missing rotation states 
- Setting up the dev. environment, including assemblers and disassemblers for the ROM
- Designing the final PDF

## Why We Made This
Tetris for the NES is one of the most famous versions of Tetris ever played (and is still played competitively!), but it is missing modern mechanics such as wall-kicks and certain rotation states for the I, S, and Z blocks. This was actually Chase's project, and I just joined as a collaborator since we both wanted to further enhance our disassembling skills and both had an affinity for retro games.

My focus was on adding the new rotation states. You can actually see I achieved this for the S and Z blocks in the video above if you know what to look for! Below is a visual of the original NES rotations, the modern SRS rotations, and what we hoped to achieve:
{% include feature_row %}

## Development
Development was slow, as I had many other projects I was dealing with, but I was able to get us a development environment where we could access and change the code of the game as needed. We used *Ghidra* to view and translate the decompilation of the ROM, and a *VSCode* environment to actually change the data of the ROM. We actually made a quick PowerPoint to document our progress and difficulties, shown below

<iframe src="/assets/files/TetrisNES.pdf" width="100%" height="600px"></iframe>

You can find this powerpoint and a document-version of this in our [Github](https://github.com/GingerDeity/TetrisNES). The best part of this project was finding the graphics table and having everything suddenly click for how Tetris pieces were displayed (slides 17-20). That was a huge eureka moment, and something I'm still proud of discovering mostly on my own.

## Final Thoughts

### What I Learned
- I had never made my own development environment for a project like this, so compiling tools and procedures for creating ROMs, assemblies, and disassemblies was fun!
- It was also my first time working on viewing and translating disassemblies in general; my skills in that improved greatly
- Understanding how NES developers would store data, feeling the pressure of every byte used, adding to an already limited memory pool

### What I'd Do Differently
- We could only get the new rotation states to work partially, and had to settle for the I-block no longer being included in the game. While there were solutions for this, we simply didn't have the time to implement them. I'd go back and make sure this was fixed
- The blocks on the scorecard didn't increment correctly after our additions
- Chase couldn't get wall-kicks fully implemented either, but I'm not sure how I could help with that
- Getting help from ROM-hackers earlier would've helped us greatly, as well as double-checking our work more against an already completely decompiled Tetris NES ROM

### Takeaway
While the project was a lot of fun and was super exciting to decompile ourselves, we couldn't get a lot of what we wanted in. This research and development project turned into a 90% research project. It was exciting uncovering how the game was coded, and each discovery felt incredibly earned! I may come back to this project to finish what we started someday.

## Play & Explore
[Link to GitHub](https://github.com/GingerDeity/TetrisNES)
Includes reports and instructions for a dev. environment, and our final submitted ROM

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
