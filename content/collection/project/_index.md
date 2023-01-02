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
title: The mundane, technical aspects of scientific practice
weight: 1
---

If you're an incoming graduate student in a research discipline, you've probably taken part in at least some aspect of the research process during your undergraduate education. Most research assistants start out doing grunt work; like running participants, shuffling data around, or computing simple summary statistics. Often, undergraduates are attached to more senior lab members who perform the more complex tasks themselves, and give the less experienced students the polished data they need to perform their analyses. This means that, while many new graduate students have been *involved* in the running, analysis, and write-up of an experiment, they haven't actually had experience with all the boring technical aspects of organizing a complete research project.

Graduate coursework is generally focused on providing whatever theoretical background and minimal statistical knowledge is needed to take part in basic research in the student's field, but the practical aspects of conducting that research are usually left to acquired by experience. Unless a lab dedicates formal time to teaching these skills, this usually means that students learn by collaborating with other students (if they're lucky) or by slowly figuring out bits and pieces for themselves, and so develop a mix of idiosyncratic practices more or less by osmosis.

Most labs over time develop a consistent set of research methods and techniques, which have to be formally taught to new students almost by necessity. Neuroimaging, for example, isn't something that can reasonably be learned by new students through self-study; and when I started my doctoral work, there were formal procedures in place to train new students in the use of fMRI. On the other hand, issues like how a student should deal with the huge quantity of data produced by an imaging experiment, how they should organize their code, how they should put together a project directory, how they should create/organize their figures, and more generally how they should approach organizing a large scale research project, are generally left for them to figure out on their own. The general problem here is that these issues impact the replicability of the students work, and the likelihood of errors. On a more concrete level, this means that a lot of students are just terrible collaborators; their code is messy, their projects are disorganized and undocumented, and every one of them uses completely different tools. Science is fundamentally collaborative, and part of being a good collaborator is doing work that can be easily communicated, and working in a way that makes it easy for others to contribute. 

A simple test of a lab's overall organization is this: If a new student with average background is provided with the raw data, how long would it take them to recreate the results -- p-values, figures, and all -- of a paper published by a senior student two years ago?. That is; without having to collect new data, discover any new techniques, or innovate in any way, how long would it take them to perform the basic functions that more senior students are already performing as part of their work. This is a lower bound on the time it will take a student to begin writing up their first research paper -- plus the time taken to understand the background literature, design an experiment, and collect data. Forcing them to reinvent basic tools and learn menial tasks for themselves adds months or years to the time taken to become a self-sufficient researcher.

* A student is asked to share some data, and emails an undocumented, proprietary data file (such as a `.m` or `.xlsx` file with no header) along with a lengthy diatribe explaining the meaning of each column. **The student has never been taught how to collaborate. There is probably no explicit lab standard dictating how data are to be shared.**
* Poorly formatted, pixelated images in a poster or paper. Almost always clearly made using the default settings in Microsoft Excel. **The student has probably seen better figures in a published paper, but has never been taught how to create them.**

Some sure signs that a lab hasn't put much thought into 

* Most students use the same techniques (motion tracking, fMRI, etc), but each student has written their own code to perform basic functions common to every student's analyses. **The lab hasn't invested time in building a common set of tools.** The result is that new students either need to completely reinvent these tools, or borrow code from other students which results in multiple versions of the same tools floating around with no documentation or standardization.
* Students collaborate, but each student has their own version of the data, organized in a completely different way, and only sees or has a copy of the code they personally use to perform their part of the analysis. **The lab has no shared repositories or organizational standards.** The result is that recreating an analysis, or even fully understanding it, requires contacting multiple separate people in the hopes that each one of them has preserved and fully documented their individual part of the workflow.

