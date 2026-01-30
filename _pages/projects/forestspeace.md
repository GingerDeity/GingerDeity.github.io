---
title: Forest's Peace
layout: splash
classes: wide
date: 2025-05-12T15:34:30-04:00
excerpt: A choice-driven sustainability game where every action shapes the world
highlight: true
weight: 3
permalink: /projects/forests-peace/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/ForestsPeace/forests_peace_header.png
tags:
  - game
  - unity
  - C#
---

<video autoplay muted loop playsinline controls width="100%">
  <source src="/assets/videos/forests_peace.mp4" type="video/mp4">
</video>

## What It Is
Forest's Peace is the result of a semester long group-project for a class, a 2D top-down pixel art game that strives to teaches the difficult balance of sustainability, where you have to balance gathering resources with conservation. Your town is always on the brink of collapsing, but if you cut too many trees without replanting then the world till suffer and there will be less animals. However, if you cut down too few, your village suffers and everything crumbles.

Here's the [link to GitHub and download](https://github.com/anniexena/THE-GAME)

## Team Roles
- **Annie Xenakis**: Programmed dialogue writing and system, and the quest system
- **Peyton Ludwig**: Drew the environmental assets such as tiles, houses, etc.
- **Mollie Mero**: Created sprites for townspeople, player, dog, animals, etc.
- **Me (Atreyu)**: Implemented gameplay loop and environmental feedback systems

## My Role & Contributions
My Role was primarily as a backend programmer, and was mainly responsible for:
- Programming the overall game loop of tree-cutting, seed-planting, and house-repairing 
- Programming environmental feedback (tree and house lifespans, forest population density, day/night cycle)
- Implementing dog's ability to scout and dig up seeds
- Performed and added the background music
- Set up data flow between UI, player inventory, and world state

## Development
### Milestone 1 (Week 4)
This was our first presentation we had to give as a group, and was more expected to be a proposal of our goals, rather than any concrete prototype. As you can tell from our slides below, we had very high ambitions... too high in the end. We were essentially hoping for a 2D platformer with RPG-story and peppered randomly generated puzzle minigames, and maybe some combat, all done in the span of < 4 months.

<iframe src="/assets/files/ForestsPeaceMilestone1.pdf" width="100%" height="600px"></iframe>

### Milestone 2 (Week 8)
By this point, we had thankfully abandoned most of the fluff and started narrowing down our goal to a top-down 2D RPG with minigames. We even had art and a demo showing the early map! However... this was still far too ambitious in my eyes. Having to program that many minigames while also balancing a job, school, and club officer responsibilities seemed so daunting, and our vision still wasn't really that clear. By this point, I was getting very worried.

<iframe src="/assets/files/ForestsPeaceMilestone2.pdf" width="100%" height="600px"></iframe>

### Milestone 3 (Week 14)
Between this and Milestone 2, there was what some would call a *mild mental breakdown* on my end. The stress of my job, other classes, the club, and the unfinished state of this project was completely wrecking me. After much pleading to the team, I was able to convince them to drop the minigames and RPG elements and go for a *much* simpler vision. You would go out, chop trees, plant seeds, and try to keep a balance between your village and the forest. Most of the art was finished by Mollie and Peyton at this point, and Annie did an excellent job adapting the dialogue and quests to the new vision. I feverishly panic-coded nearly the entire new game-loop in the span of a week if I recall correctly. 

<iframe src="/assets/files/ForestsPeaceMilestone3.pdf" width="100%" height="600px"></iframe>

### Final Product
I believe it was 2 weeks after Milestone 3 that we submitted our final product (see [Github link](https://github.com/anniexena/THE-GAME)). Despite all the stress and panic, we actually earned fairly high grades for our efforts. We had a product with clear vision, beautiful art, pretty music, and a good gameplay loop.

## Final Thoughts

### What I Learned
- This was actually my first ever completed Unity project! I had been using either GameMaker Studio or Godot the past few years and completely missed the Unity hype. I got much more comfortable with the engine and C# as a result
- How to better work with a team, and learning to let go of control for the areas I wasn't in charge for
- I'll now forever remember to **always have a clear minimal viable product in mind, don't aim for your dream game to be made in < 4 months**

### What Worked
- The atmosphere was beautiful, and I think the art and sound design is really nice
- The gameplay, though simple, was quickly programmed and has very few bugs. It's surprisingly functional for an engine I had very little experience in, and only a few weeks on my end to get right

### What I'd Do Differently
- Allocate responsibilities between teammates better
- Start with a more clear and simple vision for the project
- Certain collisions just... don't work. There are instances where the player could walk over water, etc
- Make it so that houses would spawn too! Only trees regrow, but I wanted to have the village also grow and expand the better you took care of it, further destroying the forest

### Takeaway
This is a project that took a lot of time and effort, and while the end product is only a shadow of our original vision, I'm proud of how our team was able to pivot and produce actually functional. If we had been able to have a clearer vision at the start, we would've saved so many headaches!

## Play & Explore
[Link to GitHub](https://github.com/anniexena/THE-GAME)
Includes link to download in the readme, controls are explained in the game

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>