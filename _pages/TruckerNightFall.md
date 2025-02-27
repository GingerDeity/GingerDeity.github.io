---
title: Trucker Night Fall
permalink: /games/truckernightfall/
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/trucker-night-fall-title.png
feature_row:
  - image_path: /assets/images/trucker-night-fall-title.png
    excerpt: "Items without background"
  - image_path: /assets/images/rainfall_items_full.png
    excerpt: "Items with early-version background"
---

# Description
This game resulted from a school game jam that lasted 48 hours in the Spring semester of 2024, where the theme was "Nightfall". I was working in a team of two other people, but what was interesting about this experience was that I was responsible for almost **none** of the programming. It was the first time I wasn't in charge of programming for a game and was instead given the task of doing all the 3D modeling. The only problem? I had never used Blender (their software of choice) before. This game jam, I fixed that.

The gameplay itself is very simple, and more story-driven. We wanted to tell the tale of an insomniac truck driver, whose demanding schedule is pushing himself further away from the family he is trying so desperately to provide for. All you're trying to do is stay on the road as the controls get slippier and more obstacles such as other trucks and potholes emerge. What the game truly excels in is the atmosphere, aiming for a low-poly PS1/N64 era art style that, when combined with the CRT effect, creates an environment dripping with personality. Unfortunately, my video software was having difficulty recording gameplay, so I've attached a screenshot below:

{% include feature_row %}

What I'm most proud of in this game is the atmosphere, as the sound design and art (all of which were synthesized and drawn by me) all coalesce together into one scene beautifully. It almost feels like it's not your eyes that are gazing out the window, but your past self's eyes. This is a game that you can play for a few moments on your computer, go back to work, and the atmosphere will be right there waiting for you. One thing I believe games can do is to create safe spaces for their users, and I think this game accomplished that brilliantly.

# Development
Development went on far longer than initially expected, as all I planned to do when redesigning the original idea was have the user collect raindrops. There were no plans for items or an inventory, just you and the rain. Once I designed the final background as shown, I knew I had to go the extra mile.
![Alt text](/assets/images/rainfall_background.PNG)

To stay true to the personal goals of this game, I elected to base all the items on things I would've actually owned, and ended up drawing 26 different items.

Considering how dependent on the atmosphere this game would be, it was crucial to get the sound design as high quality as possible. This involved using the web version of Audacity, called Wavacity, and synthesizing together sounds for dropping items, the swaying of the tree, and, of course, the rain.

<audio controls>
  <source src="/assets/audio/rainfall.wav" type="audio/wav">
</audio>
<audio controls>
  <source src="/assets/audio/lego_minecraft_drop.wav" type="audio/wav">
</audio>
<audio controls>
  <source src="/assets/audio/rock_drop.wav" type="audio/wav">
</audio>
<audio controls>
  <source src="/assets/audio/drop_touch.wav" type="audio/wav">
</audio>

# How to Play and Download
Download:
- To play the game yourself, simply follow the itch.io link below, download the .exe file, and it should work on any Windows machine!
- <a href="https://atreyum.itch.io/rainfall" target="_blank" rel="noopener noreferrer">Download here</a>

Controls:
- Left-Click: pick-up/drop items, purchase items, add/subtract to/from inventory
- Space: reset current item's rotation
- Right-Click: when used on the music box, music will play
- Scroll Wheel: navigate the shop
- Escape: quit the game

Items:
- Stickers: items with "sticker" in the name can be placed anywhere on the window, including its borders!
- Items: all other items are affected by gravity and physics, they can only be dropped onto the sill
