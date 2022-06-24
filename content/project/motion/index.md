---
date: "2022-06-23"
draft: false
excerpt: A suite of (largely incomplete) packages for the preprocessing and analysis of 3D kinematic data from motion tracking experiments. The general approach is based on the representation of movement trajectories as functional data in the space of unit dual quaternions, allowing both position and orientation to be handled together in a principled way.
layout: single
title: Motion
weight: 3
---

<p align="center">
  <img src="motion-hex.png" />
</p>

## Preprocessing, plotting, and analysis of 3D motion tracking data

---

The project comprises three packages, which are in the (slow) process of being migrated over to Github. These first two are substantially complete, and are as follows:

  - [**seathree**](https://github.com/areshenk-rpackages/seathree): An R package implementing basic dual quaternion arithmetic. This is largely complete, but has not been extensively tested, and is not yet documented. Caveat emptor.
  - **seacurve**: Includes routines for the preprocessing and basic plotting of unit dual quaternion time series; including interpolation within the space of dual quaternions, and automatic correction of discontinuities resulting from the two-to-one mapping between quaternions and rotations. This package is substantially complete, but has not yet been uploaded or documented.

### Installation

**seathree** can be installed from GitHub with using `install_git()` from the `devtools` package using the command below:

`devtools::install_git('areshenk-rpackages/seathree')`

### Issues

**seathree** in particular is in more or less working condition, but has not been extensively tested. In particular, there may be mathematical errors which have not yet been caught. 