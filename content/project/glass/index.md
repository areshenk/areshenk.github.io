---
date: "2022-12-21"
draft: false
excerpt: glass is an R package for plotting cortical, cerebellar, and striatal surface maps.
layout: single
title: glass
weight: 3
---

<p align="center">
  <img src="glass-hex.png" />
</p>

## Cortical, cerebellar, and striatal surface maps

<p align="center">
  <a href="https://github.com/areshenk-rpackages/glass"><img src="giticon.png" alt="Github" style="width:64px;height:64px;"></a>
</p>

---

**glass** is a set of wrappers around functions in the ggseg and ggseg3d packages designed to make certain kinds of surface plots simpler by handling some of the necessary data manipulation automatically. The package is in early progress, and is at the moment geared towards the use of the Schaefer parcellation provided by ggsegSchaefer, and also includes some capability for rudimentary cerebellar and striatal flatmaps.

### Installation

**glass** can be installed from GitHub with using `install_git()` from the `devtools` package using the command below:

`devtools::install_git('areshenk-rpackages/glass')`
