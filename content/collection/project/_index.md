---
author: Corson N. Areshenkoff
date: "2022-06-22"
description: |
  General project management and workflow.
excerpt: null
layout: single-series
publishDate: "2022-10-29"
show_author_byline: false
show_post_date: false
show_post_thumbnail: true
subtitle: Some concrete thoughts on research practice for new students.
title: Technical aspects of scientific practice
weight: 1
---

If you're an incoming graduate student in a research discipline, you've probably taken part in at least some aspect of the research process during your undergraduate education. Most research assistants start out doing grunt work; like running participants, shuffling data around, or computing simple summary statistics. Often, undergraduates are attached to more senior lab members who perform the more complex tasks themselves, and give the less experienced students the polished data they need to perform their analyses. The result is that, while many new graduate students have been *involved* in the running, analysis, and write-up of an experiment, they haven't actually had experience with all the boring technical aspects of organizing a complete research project.

Graduate coursework is generally focused on providing whatever theoretical background and minimal statistical knowledge is needed to take part in basic research in the student's field, but the practical aspects of conducting that research are usually left to acquired by experience. This generally means 

The sure sign that a student 

* A student is asked to share some data, and emails an undocumented, proprietary data file (such as a `.m` or `.xlsx` file with no header) along with a lengthy diatribe explaining the meaning of each column. **The student has never been taught how to collaborate. There is probably no explicit lab standard dictating how data are to be shared.**
* Poorly formatted, pixelated images in a poster or paper. Almost always clearly made using the default settings in Microsoft Excel. **The student has probably seen better figures in a published paper, but has never been taught how to create them.**

Some sure signs that a lab hasn't put much thought into 

* Most students use the same techniques (motion tracking, fMRI, etc), but each student has written their own code to perform basic functions common to every student's analyses. **The lab hasn't invested time in building a common set of tools.** The result is that new students either need to completely reinvent these tools, or borrow code from other students which results in multiple versions of the same tools floating around with no documentation or standardization.
* Students collaborate, but each student has their own version of the data, organized in a completely different way, and only sees or has a copy of the code they personally use to perform their part of the analysis. **The lab has no shared repositories or organizational standards.** The result is that recreating an analysis, or even fully understanding it, requires contacting multiple separate people in the hopes that each one of them has preserved and fully documented their individual part of the workflow.

A simple test of a lab's overall organization is this: Given a new student with average background, how long would it take them to recreate the results -- p-values, figures, and all -- of a paper published by a senior student two years ago. That is; without having to collect data, discover any new techniques, or innovate in any way, how long would it take them to perform the basic functions that more senior students are already performing as part of their work. This is a lower bound on the time it will take a student to begin writing up their first research project -- plus the time taken to understand the background literature, design an experiment, collect data, and write a paper. Forcing them to reinvent basic tools and learn menial tasks for themselves adds months or years to the time taken to become a self-sufficient researcher.