---
title: Memory Deduplication Research
layout: splash
classes: wide
excerpt: My research work from Virginia Tech, focusing on memory deduplication
highlight: true
permalink: /projects/deduplication/
header:
  overlay_filter: "0.5"
  overlay_image: /assets/images/DedupeResearch/dedupe_research_header.png
tags:
  - python
  - C
  - java
---

<iframe src="https://docs.google.com/spreadsheets/d/1m8LdZ9sh9Wtp2wsJ-Po7mrIoNZj0NklGgjM3LyAAClE/edit?usp=sharing&amp;headers=false"></iframe>

[DIAGRAM/VISUALIZATION - Show memory deduplication concept visually]

"Memory Deduplication Research"
Reducing server costs and improving system efficiency through 
intelligent memory optimization

Role: Undergraduate Researcher | Advisor: [Professor Name]
Institution: Virginia Tech CS Department
Duration: Sep 2023 - July 2025 (22 months)
Tools: Java, C, Python, Bash, Linux KSM

[View Research Repository] [Download Tools]

## Why This Matters

Modern servers and cloud systems waste enormous amounts of memory storing 
identical data multiple times. When you run Docker containers, virtual 
machines, or AI models, they often load the same libraries, datasets, or 
system files—but each keeps its own copy in memory.

This wastes expensive RAM and limits how many services can run on a single 
server. For cloud providers like AWS or data centers running hundreds of 
VMs, even a 10-20% reduction in memory usage translates to millions of 
dollars in hardware savings.

**The Research Question:**  
How much memory can we actually save by identifying and eliminating these 
duplicates? And which systems benefit most from deduplication?

## Research Approach

Over 22 months, I developed tools and conducted experiments to measure 
memory deduplication potential across different computing systems:

**Systems Analyzed:**
- Operating systems (Linux VMs)
- AI/ML models and neural networks
- Docker containers
- Multiple running applications

**Methods:**
- Built custom static-window deduplication analyzer in Java
- Worked with Linux's Kernel Same-Page Merging (KSM) system
- Tested across various window sizes (64B, 4KB) and configurations
- Analyzed memory patterns, shared library usage, and data locality

**Key Contributions:**
- Created suite of analysis tools for memory deduplication research
- Identified which types of systems benefit most from deduplication
- Quantified memory savings potential across different workloads
- Built reproducible experimental framework for future research

## Technical Implementation

### Static Window Deduplication (DedupeCheck.java)
I engineered a custom memory analyzer that scans binary memory dumps and 
identifies duplicate "windows" of data at configurable granularities.

**How it works:**
1. Takes memory dumps from running processes
2. Divides memory into fixed-size windows (e.g., 4KB pages)
3. Hashes each window and identifies duplicates
4. Calculates deduplication ratios and data locality patterns

**Technical challenges solved:**
- Stripped ELF metadata from memory dumps for accurate analysis
- Implemented efficient hash-based comparison for large datasets
- Built mapping system to trace duplicates back to memory regions 
  (heap, stack, shared libraries)
- Designed verbose mode for detailed match analysis

### KSM Integration & VM Testing
Worked with Linux's built-in Kernel Same-Page Merging to validate 
findings against real-world OS-level deduplication.

**Experimental setup:**
- Hierarchical VM architecture (Level-1 hosts running KSM, Level-2 VMs 
  being monitored)
- Automated capture scripts for KSM statistics and process memory usage
- Real-time monitoring across multiple VM instances

[Code sample showing core deduplication logic or results parsing]

## Key Findings

[VISUALIZATION - Graph or table of results]

**Best Candidates for Deduplication:**
- Docker containers: [X%] memory reduction potential
- Multiple VM instances: [Y%] memory reduction potential
- AI model serving: [Z%] memory reduction potential

**Memory Pattern Insights:**
- [Specific finding about where duplicates occur]
- [Insight about shared libraries vs. application data]
- [Discovery about deduplication effectiveness at different granularities]

**Practical Implications:**
[What this means for real systems - e.g., "A data center running 100 VMs 
could reduce memory requirements by XGB, saving $Y annually in hardware costs"]

## Research Evolution

### Phase 1: Tool Development (Sep 2023 - Jan 2024)
Built initial static window analyzer, tackled ELF format parsing, 
established baseline methodology

**Key challenge:** Memory dumps contained metadata that offset actual data. 
Solution: Wrote ELF parser to strip headers and preserve memory layout.

### Phase 2: Experimentation (Jan 2024 - Oct 2024)
Expanded analysis to VMs, Docker containers, neural networks. Integrated 
with KSM for validation.

**Key challenge:** Coordinating experiments across multiple VM levels with 
real-time monitoring. Solution: Built tmux-based capture system with 
automated SSH connections and synchronized logging.

### Phase 3: Analysis & Documentation (Oct 2024 - July 2025)
Deep analysis of memory patterns, created comprehensive tooling 
documentation, drew conclusions about optimal use cases.

[Screenshot of your tmux setup showing multiple VMs being monitored]

## Tools & Code

I developed a complete research toolkit, now open-sourced for other 
researchers:

**Core Analysis Tools:**
- DedupeCheck.java: Static window deduplication analyzer
- MapMatches.java: Memory region mapping and duplicate source tracking
- BlockAnalyze.py: Spatial locality analysis for duplicate data
- VM automation suite: Scripts for coordinated KSM experiments

**Research Reproducibility:**
- Detailed documentation for each tool
- Example workflows and sample datasets
- Pre-configured VM template for deduplication experiments

[View Full Repository →]

## What I Learned

**Technical Skills:**
- Low-level systems programming (C, Java for binary analysis)
- Linux kernel features and memory management
- Large-scale experiment design and data collection
- Scientific computing and statistical analysis

**Research Skills:**
- Designing reproducible experiments
- Technical documentation and knowledge transfer
- Long-term project management over 22 months
- Presenting complex technical findings to varied audiences

**If This Research Continued:**
- Investigate dynamic deduplication (real-time merging)
- Test on modern containerized AI workloads (LLM serving)
- Develop adaptive deduplication that learns optimal window sizes
- Study security implications of memory sharing across processes

## Real-World Applications

This research has direct applications in:

**Cloud Computing:** Reducing memory overhead in multi-tenant environments
**AI Infrastructure:** Optimizing memory for large-scale model deployment  
**Edge Computing:** Maximizing efficiency on resource-constrained devices
**Data Centers:** Lowering operational costs through better resource utilization

The tools and methodologies developed are available for other researchers 
and engineers working on memory optimization problems.

<p class="page__taxonomy">
  <strong><i class="fas fa-tags"></i> Tags:</strong>
  {% for tag in page.tags %}
    <span class="page__taxonomy-item">{{ tag }}</span>
  {% endfor %}
</p>