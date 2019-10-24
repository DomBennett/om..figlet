
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- devtools::rmarkdown::render("README.Rmd") -->
<!-- Rscript -e "library(knitr); knit('README.Rmd')" -->
Run `figlet` with `outsider` in R
=================================

[![Build Status](https://travis-ci.org/dombennett/om..figlet.svg?branch=master)](https://travis-ci.org/dombennett/om..figlet)

Easy to install
---------------

``` r
library(outsider)
module_install(repo = "dombennett/om..figlet")
module_help(repo = "dombennett/om..figlet")
```

See [`outsider`](https://github.com/AntonelliLab/outsider) documentation for more information.

Create ASCII art in R!
----------------------

``` r
library(outsider)
#> ----------------
#> outsider v 0.1.0
#> ----------------
#> - Security notice: be sure of which modules you install
figlet <- module_import(fname = 'figlet', repo = 'dombennett/om..figlet')
# see all examples
figlet(arglist = c('-f', 'big', 'Figlet from R'))
#>  ______ _       _      _      __                       _____  
#> |  ____(_)     | |    | |    / _|                     |  __ \ 
#> | |__   _  __ _| | ___| |_  | |_ _ __ ___  _ __ ___   | |__) |
#> |  __| | |/ _` | |/ _ \ __| |  _| '__/ _ \| '_ ` _ \  |  _  / 
#> | |    | | (_| | |  __/ |_  | | | | | (_) | | | | | | | | \ \ 
#> |_|    |_|\__, |_|\___|\__| |_| |_|  \___/|_| |_| |_| |_|  \_\
#>            __/ |                                              
#>           |___/
```
