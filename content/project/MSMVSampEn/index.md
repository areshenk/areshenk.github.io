---
date: "2022-06-23"
draft: false
excerpt: MSMVSampEn is an R package for computing multiscale, multivariate sample entropy of biological signals
layout: single
title: MSMVSampEn
weight: 2
---

<p align="center">
  <img src="msmv-hex.png" />
</p>

## Multiscale, multivariate sample entropy in R

---

**MSMVSampEn** is an R package for computing multiscale, multivariate sample entropy using the procedure outlined by Ahmed and Mandic (2011).

### Installation

**MSMVSampEn** is designed for efficiently computing multiscale sample entropy from highly multivariate biological signals (e.g. eeg, meg, and fMRI BOLD data). The package can be installed directly from its Github repository using

`devtools::install_git('https://github.com/areshenk-rpackages/MSMVSampEn')`

### Issues

Note that the interface of **MSMVSampEn** is likely to undergo substantial changes in the near future in order to accommodate additional features. As it stands, the package consists largely of a single wrapper function implementing the procedure of Ahmed and Mandic (2011). That said, there are a few issues to be aware of:

1. The implementation of the MSMV sample entropy itself has been tested and validated (by e.g. Chen et al. 2019), but as the authors note, it does not handle very large datasets (on the order of tens of thousands of timepoints) particularly well. This is almost certainly a memory issue, and I'm in the process of hunting it down; but as this is rarely a problem in my own use cases, it is not a high priority.

2. The computation of the sample entropy at longer timescales is accomplished by computing means across a sliding window, which is now recognized as being, in effect, a crude low-pass filter with poor properties. More modern approaches allow for more stable entropy estimates at shorter signal lengths, but these have not yet been implemented.

### References

Ahmed, M. U., & Mandic, D. P. (2011). Multivariate multiscale entropy: A tool for complexity analysis of multichannel data. Physical Review E, 84(6), 061918.

Chen, C., Sun, S., Cao, Z., Shi, Y., Sun, B., & Zhang, X. D. (2019). A comprehensive comparison and overview of R packages for calculating sample entropy. Biology Methods and Protocols, 4(1), bpz016.