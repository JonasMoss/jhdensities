
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jhdensities <img src="man/figures/logo.png" align="right" width="100" height="56" />

[![Build
Status](https://travis-ci.com/JonasMoss/jhdensities.svg?branch=master)](https://travis-ci.com/JonasMoss/jhdensities)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/JonasMoss/jhdensities?branch=master&svg=true)](https://ci.appveyor.com/project/JonasMoss/jhdensities)
[![Coverage
Status](https://codecov.io/gh/JonasMoss/jhdensities/branch/master/graph/badge.svg)](https://codecov.io/gh/JonasMoss/jhdensities?branch=master)
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

## Overview

An `R`-package containing the sixteen benchmark densities of Jones and
Henderson (2007b).

**Note:** Work in progress; most densities are not implemented yet.

## Installation

Use the following command from inside `R`:

``` r
# install.packages("devtools")
devtools::install_github("JonasMoss/jhdensities")
```

## Usage

`jhdensities` the densities `djh`, probability distributions `pjh`, and
random deviate generators `rjh` for the sixteen example densities of
Jones and Henderson (2007b).

``` r
x = seq(0, 1, by = 0.01)
hist(jhdensities::rjh(10^5, index = 15), freq = FALSE, breaks = "FD")
lines(x, jhdensities::djh(x, index = 15), type = "l")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="750px" />

## How to Contribute or Get Help

If you encounter a bug, have a feature request or need some help, open a
[Github issue](https://github.com/JonasMoss/jhdensities/issues).

This project follows a [Contributor Code of
Conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct.html).

## References

  - Jones, M. C., & Henderson, D. A. (2007a). Miscellanea kernel-type
    density estimation on the unit interval. Biometrika, 94(4), 977-984.
    [Link.](https://www.jstor.org/stable/20441430)

  - Jones, M. C., & Henderson, D. A. (2007b). Kernel-Type Density
    Estimation on the Unit Interval,” Statistics Group Technical Report,
    the Open University
    [Link.](https://pdfs.semanticscholar.org/b1b9/474ba8930f25cf2b481cf89e31888a26f6ec.pdf)
