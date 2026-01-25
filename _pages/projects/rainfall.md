---
title: Rainfall
layout: splash
classes: wide
excerpt: It's your childhood windowsill, and it's raining outside...
highlight: true
permalink: /projects/rainfall/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/rainfall_back.png
feature_row:
  - image_path: /assets/images/rainfall_items_plain.png
    excerpt: "Items without background"
  - image_path: /assets/images/rainfall_items_full.png
    excerpt: "Items with early-version background"
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/rainfall.mp4" type="video/mp4">
</video>

## What It Is
Rainfall is a cozy physics-based collectathon where you trade the raindrops you click on for nostalgic items that you arrange on a windowsill. There are no real objectives, no timers or rush, just you, the rain, and your memories.

## Why I Made This
The original vision for this game came from a game-jam that only lasted 90 minutes. There were no win-or-lose conditions; all you could do was click raindrops that would fall in front of a simple city backdrop with the song "Beneath the Mask" by Shoji Meguro playing in the background. My last semester at Virignia Tech, I wanted to apply for their Creative Technology master's program, but had very little time to actually create a portfolio. So, when looking for projects that could best show my personality and interests and wouldn't take more than a few weeks, that game seemed perfect for a remaster.

It reminded me of the simple joy of poking at raindrops on the car windows during road trips, which then had me reminiscing about the knick-knacks I would collect on my childhood bedroom windowsill. I expanded on the original concept, adding the items and an inventory system. This game is meant to replicate that very personal experience, so all the items you can collect are things I either had or wanted to have on my windowsill when I was younger.

## Development
### Art
This was my first time using the *Krita* software and adding finished art to a game, thus I opted to go for a simpler cartoony style that I felt I could draw and still look nice. Turns out that I liked drawing! When initially remastering the original game, there were still no plans for items or an inventory, but once I designed the final background as shown, I knew I had to go the extra mile. 
![Game Background](/assets/images/rainfall_background.png)

To stay true to the personal goals of this game, I elected to base all the items on things I would've actually owned, and ended up drawing 26 different items. I wisely chose to make development even faster by using mostly basic shapes and clones of items.

{% include feature_row %}

### Audio
Considering how dependent on the atmosphere this game would be, it was crucial to get the sound design as high-quality as possible. I used a web-based version of Audacity, called Wavacity, and synthesized together sounds for dropping items, the swaying of the tree, and, of course, the rain.

<div class="feature__wrapper text-center">
  <div class="feature__item">
    <h5>Rain Ambience</h5>
    <audio controls>
      <source src="/assets/audio/rainfall.wav" type="audio/wav">
    </audio>
  </div>

  <div class="feature__item">
    <h5>Clicky Items</h5>
    <audio controls>
      <source src="/assets/audio/lego_minecraft_drop.wav" type="audio/wav">
    </audio>
  </div>

  <div class="feature__item">
    <h5>Rock Items</h5>
    <audio controls>
      <source src="/assets/audio/rock_drop.wav" type="audio/wav">
    </audio>
  </div>

  <div class="feature__item">
    <h5>Click Raindrop</h5>
    <audio controls>
      <source src="/assets/audio/drop_touch.wav" type="audio/wav">
    </audio>
  </div>
</div>

Each sound you hear above is a sound effect from the game, and each one layers at least 2 different sounds together. I tried to have the sounds follow a 'story' of buildup, climax, then resolution. As an example, the "raindrop collected" sound is actually the sound of two raindrops, but the first one is far quieter and acts as the set-up for the second raindrop sound, the climax. Then there's a slight echo as a resolution to the sound. This mentality of telling a story was very helpful in creating satisfying sounds. 

All sounds (except the music box) were done using free sound libraries, and some sounds are made using noises you might not expect. For example, the rainfall actually uses the sound of frying bacon!

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
