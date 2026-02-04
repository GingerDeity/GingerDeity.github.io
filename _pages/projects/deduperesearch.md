---
title: Memory Deduplication Research
layout: splash
classes: wide
excerpt: My research work from Virginia Tech, focusing on memory deduplication!
highlight: true
weight: 2
permalink: /projects/deduplication/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/DedupeResearch/dedupe_research_header.jpg
tags:
  - python
  - C
  - java
---

<p style="text-align:center;">
  <img src="/assets/images/DedupeResearch/dedupe_visual.gif" style="max-width:600px;">
</p>

## What It Is and Why It Matters
Memory is currently one of the biggest bottlenecks in modern computing. Servers, cloud systems, and LLMs all use massive amounts of memory, and trends indicate that this memory usage will only continue to grow. RAM prices as of 2026 are skyrocketing, and it's clear that we need new ways to better store and manage memory. One way we could do this? Memory deduplication, as in finding duplicate pieces of memory and storing only one copy of them, as the gif made by Microsoft shows.

This project shows my research work from 2023-2025 while I was employed at Virginia Tech, and shows the theoretical benefits of memory deduplication for a variety of applications, including OSs, VMs, LLM weights, etc. This project contains both my [GitHub of tools](https://github.com/GingerDeity/DedupeResearch) and results spreadsheets both for my [static-window deduplication code](https://docs.google.com/spreadsheets/d/10YiPpQu5xCe1mOKyjHtZhARlAaL6NL-FgBguw9WpsNA/edit?usp=sharing) and Linux's [KSM deduplication code](https://docs.google.com/spreadsheets/d/1m8LdZ9sh9Wtp2wsJ-Po7mrIoNZj0NklGgjM3LyAAClE/edit?usp=sharing)

While researching, I was tasked with answering the question: ***How much memory can we theoretically save via deduplication, and which systems benefit most?***

## My Role
- Role: Undergraduate Research Assistant
- Advisor: Xun Jian
- Institution: Virginia Tech Department of Computer Science
- Duration: Sep 2023 - July 2025 (22 months)
- Tools: Java, C, Python, Bash, Linux KSM

## Key Contributions
- Created a suite of analysis tools for memory deduplication research
- Conglomerated research results into easy-to-read spreadsheets
- Explored which types of systems theoretically benefit most from deduplication
- Quantified memory savings potential across several workloads
- Built a reproducible experimental framework for future research

## Research Approach
The general approach was really just scattershot, answering questions and coming up with new fields and areas worth exploring based on weekly meetings. Thanks to this flexibility, we were able to tackle a lot of areas all at once! For my static-window deduplication code, we used primarily binary memory dumps, and KSM had us using live processes. Here's a brief layout of some of the systems we researched:

### Systems Analyzed
- Operating systems (Ubuntu, Debian, CentOS)
- LLMs, AI models, neural networks
- Docker containers
- Basic C, Java, Python programs
- Benchmarking tools (SPECJBB, Spark-Bench, Renaissance)

And here is a brief overview of some of my favorite tools that I developed:

### Tools Developed
- Custom static-window deduplication analyzer (Java)
   * Allows for custom window size
   * Outputs a special file containing detailed results for all matches found
- A memory deduplication mapper (Java)
   * My favorite, it takes in certain files and tells you where duplicates were found (heap, stack, anonymous, etc)
- Memory dump formatter (C)
   * Outputs file that contains only data, no headers, etc
- Memory dump analyzer that tells how far apart memory duplicates are (Python)
- Scripts for using Linux's KSM system (Bash)
- Zeroing out memory (C)
   * Zeroes out memory in processes such as VMs to ensure we only find duplicates of used code
- KSM Capturers (Bash)
   * Outputs KSM results inside the VM from the host's perspective

Once again, for anyone interested in doing their own deduplication experiments, click [here](https://github.com/GingerDeity/DedupeResearch) for the full GitHub repo!

## Technical Implementation

### Static Window Deduplication
My custom memory analyzer scans binary memory dumps and identifies duplicate "windows" of data at a configurable window size. The step-by-step includes:
1. Take memory dumps from running processes
2. Divide memory into fixed-size windows (such as 4KB pages)
3. Hash each window and identify duplicates
4. Calculates deduplication ratios

### Technical challenges solved
- Stripped ELF metadata from memory dumps for accurate analysis
- Implemented efficient hash-based comparison for large datasets
- Built a mapping system to trace duplicates back to memory regions (heap, stack, shared libraries)
- Designed verbose mode for detailed match analysis

## KSM Deduplication
I also extensively worked with Linux's built-in Kernel Same-Page Merging to validate findings against OS-level deduplication. We typically experimented across several VMs and used the following setup:

### Experimental setup
- Have hierarchical VM structure (Level-1 hosts running KSM, Level-2 VMs being monitored)
- Get Level-2 VMs zeroes out, have Level-1 VM's KSM ready
- Start Level-1 KSM, start processes of interest in Level-2 VMs
- Run as long as needed to obtain data

### Technical challenges solved
- Creating scripts and correct initialization settings for KSM
- Zeroing out VM memory so only in-use memory is being checked for duplicates
- Created automated capture scripts for KSM statistics and process memory usage
- Outlined procedures for real-time monitoring across multiple VM instances
- Outlining and creating the VM hierarchy and VMs using Qemu

Getting the hierarchy right was tricky, but it paid off. Here's what an average workstation would look like for 2 VMs:

<p style="text-align:center;">
  <img src="/assets/images/DedupeResearch/dedupe_research_2VMs.png" style="max-width:600px;">
</p>

## Key Findings
<iframe src="https://docs.google.com/spreadsheets/d/10YiPpQu5xCe1mOKyjHtZhARlAaL6NL-FgBguw9WpsNA/edit?usp=sharing" width="100%" height="600px"></iframe>

This is one of two spreadsheets I made, this one detailing results for my own deduplication code! While deduplication may not be needed for every field, here are some of the highlights of each spreadsheet. 

### My Static-Window
Each entry shows what percent of memory dumps from processes were comprised of duplicate data.
- LLAMA LLM 3.8 Processes: 
   * 2 processes: 47.13%
   * 3 processes: 62.84%
- Image Recognition Neural Networks:
   * 2 images: 34.50%
- Empty Ubuntu VMs, no zeroing: 
   * 1 VM: 25.38%
   * 2 VMs: 59.84%
- Empty CentOS VMs, no zeroing: 
   * 2 VMs: 24.92%

### Linux KSM
Each entry shows what percent of VM memory was comprised of duplicate data when running certain processes.
- LLAMA LLM 3.8 Processes: 
   * 2 processes: 43.81%
- Image Recognition Neural Networks:
   * 2 images: 37.37%
- Empty Ubuntu VMs, no zeroing: 
   * 2 VMs: 14.33%
   * 2 VMs: 33.95%

## What I Learned
### Technical Skills
- Low-level systems programming (C, Java, Python for binary analysis)
- Linux kernel features and memory management (Bash, VMs)
- Large-scale experiment design and data collection
- Scientific computing and statistical analysis

### Research Skills
- Designing reproducible experiments
- Technical documentation and knowledge transfer
- Long-term project management over 22 months

## Final Thoughts
This research took up a significant part of my education, and I'm forever grateful to Professor Xun Jian for his grace, kindness, and excitement towards my projects! Research is a very difficult field; you'll often find yourself trying to answer questions that you're not sure can even be answered. Sometimes, you don't even know if you're asking the right question, and it's easy to find yourself suddenly in over your head. But if you're willing to stick with it, you're willing to always experiment and be patient, then you're bound to find amazing things. This research is one of my greatest prides, and I'm awestruck by how much I did looking back now.

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>
