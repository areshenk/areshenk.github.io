---
date: "2022-06-23"
draft: false
excerpt: sbsp is an R package implementing routines for the analysis of linear subspaces, such as those obtained by principal component analysis. Formally, it is designed for the analysis of data lying on the Grassmann manifold G(k,n) of k-dimentional subspaces of n-dimentional Euclidean space.
layout: single
title: sbsp
weight: 1
---

<p align="center">
  <img src="sbsp-hex.png" />
</p>

## Subspaces in R

<p align="center">
  <a href="https://github.com/areshenk-rpackages/sbsp"><img src="giticon.png" alt="Github" style="width:64px;height:64px;"></a>
</p>

---

**sbsp** is an R package implementing operations on the Grassmann manifold Gr(k,n) of k-dimentional subspaces of n-dimentional Euclidean space. The package -- a work in progress -- is intended as a spiritual twin of the package <a href="https://github.com/areshenk-rpackages/sbsp">spdm</a>, which contains methods for working with data on the manifold of covariance matrices.

The covariance between large sets of variables is often summarized by principal component analysis, which identifies a basis for a low-dimensional subspace capturing the dominant patterns of variability in an observed sample. Infinitely many sets of basis vectors can conceivably be chosen for these subspaces, and in practice researchers apply various transformations to the principal components in order to optimize interpretability (e.g. varimax rotation). This means that analyses of different samples can often report radically different components, even when the actual subspaces spanned by the reported components are highly similar. 

The package is in relatively early progress, but the intention is to include essentially identical functionality to **spdm**. At the moment, it allows for interpolation between subspaces, the computation of geodesic distances, the computation of means, and projections to and from the tangent space at a specified base point.

### Installation

**sbsp** can be installed from GitHub with using `install_git()` from the `devtools` package using the command below:

`devtools::install_git('areshenk-rpackages/sbsp')`

### Caveats

Elements of the Grassmann manifold are *subspaces*, but in practice subspace data are typically represented numerically as matrices. There are two general approaches to this representation, each of which come bundled with computational and interpretational subtleties. One involves representing a subspace by an orthogonal projector, which avoids some of the ambiguity described below, but is a step removed from the way most researchers actually represent and think about their data. 

The other, which is the approach taken by **sbsp**, involves representing a subspace by a matrix of basis vectors. For example, retaining the dominant k components after performing PCA results in a rectangular matrix whose columns are orthonormal vectors giving a basis for a k-dimensional subspace. In this case, the resulting matrix is only one possible representative of this subspace, and infinitely many other basis vectors could conceivably be chosen, each giving rise to a different matrix. Formally, the set of matrices with k-orthonormal columns is the *Stiefel manifold* V_k(n). In turn, points on the Grassmann manifold are *equivalence classes* of matrices whose columns span the same subspace -- or, equivalently, of points on the Stiefel manifold spanning the same subspace. 

When performing computations on Gr(k,n), we then have to make a decision about which such matrix to use as a representative of a subspace. Typically, given a set of basis vectors (either provided by the user, or generated internally as part of some computation), some procedure such as singular value or QR decomposition is used to extract an orthonormal matrix, called a *Stiefel representative*. The tradeoff is that the user must remember that the resulting matrix (e.g. resulting from an interpolation between two matrices, or the mean of several matrices) is only a *representative* of the actual subspace. In particular, the actual numerical values of the matrix entries are generally uninterpretable or irrelevant, as they would be entirely different for different representatives. **If the user is taking the perspective that it is the *subspace* that is of interest, then their analyses should not depend on the specific matrix used to denote that subspace. The purpose of this package is to facilate exactly that. It is the user's responsibility to ensure that they do not undertake any subsequent analyses which mistakenly distinguish between different matrices representing the same subspace.** As an example, comparing the results of multiple PCAs by vectorizing the loading matrices and clustering the resulting vectors would be completely nonsensical, as -- for example -- the sign of components is arbitrary, and so the same components extracted from the same data may be located far apart in space if they are chosen with different signs, whereas the subspaces that they span would remain identical.















