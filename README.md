
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- devtools::rmarkdown::render("README.Rmd") -->

<!-- Rscript -e "library(knitr); knit('README.Rmd')" -->

# Run [`figlet`](http://www.figlet.org/) with `outsider` in R

[![Build
Status](https://travis-ci.org/dombennett/om..figlet.svg?branch=master)](https://travis-ci.org/dombennett/om..figlet)

> FIGlet is a program for making large letters out of ordinary text.

## Easy to install

``` r
library(outsider)
#> ----------------
#> outsider v 0.1.0
#> ----------------
#> - Security notice: be sure of which modules you install
module_install(repo = "dombennett/om..figlet")
#> -----------------------------------------------------
#> Warning: You are about to install an outsider module!
#> -----------------------------------------------------
#> Outsider modules install and run external programs
#> via Docker <https://www.docker.com>. These external
#> programs may communicate with the internet and could
#> potentially be malicious.
#> 
#> Be sure to know the module you are about to install:
#> Is it from a trusted developer? Are colleagues using
#> it? Is it supposed to download lots of data? Is it
#> well used (e.g. check number of stars on GitHub)?
#> -----------------------------------------------------
#>  Module information
#> -----------------------------------------------------
#> program: figlet
#> details: ASCII art using the figlet program
#> docker: dombennett
#> github: dombennett
#> url: https://github.com/dombennett/om..figlet
#> image: dombennett/om_figlet
#> container: om_figlet
#> package: om..figlet
#> Travis CI: Passing
#> -----------------------------------------------------
#> Enter any key to continue or press Esc to quit
# module_help(repo = "dombennett/om..figlet")
```

The module comes with all the base fonts plus all contributed fonts
(~150).

## Create text art in R\!

``` r
library(outsider)
figlet <- module_import(fname = 'figlet', repo = 'dombennett/om..figlet')

# big font, centered font
figlet(arglist = c('-c', '-f', 'big', 'Figlet from R'))
#>           ______ _       _      _      __                       _____  
#>          |  ____(_)     | |    | |    / _|                     |  __ \ 
#>          | |__   _  __ _| | ___| |_  | |_ _ __ ___  _ __ ___   | |__) |
#>          |  __| | |/ _` | |/ _ \ __| |  _| '__/ _ \| '_ ` _ \  |  _  / 
#>          | |    | | (_| | |  __/ |_  | | | | | (_) | | | | | | | | \ \ 
#>          |_|    |_|\__, |_|\___|\__| |_| |_|  \___/|_| |_| |_| |_|  \_\
#>                     __/ |                                              
#>                    |___/

# calgphy2 font, right-adjusted
figlet(arglist = c('-r', '-f', 'calgphy2', 'Figlet from R'))
#>                                                                                
#>                            ##### ##                   ###                      
#>                         ######  /### / #               ###                     
#>                        /#   /  /  ##/ ###               ##               #     
#>                       /    /  /    #   #                ##              ##     
#>                           /  /                          ##              ##     
#>                          ## ##       ###       /###     ##      /##   ######## 
#>                          ## ##        ###     /  ###  / ##     / ### ########  
#>                          ## ######     ##    /    ###/  ##    /   ###   ##     
#>                          ## #####      ##   ##     ##   ##   ##    ###  ##     
#>                          ## ##         ##   ##     ##   ##   ########   ##     
#>                          #  ##         ##   ##     ##   ##   #######    ##     
#>                             #          ##   ##     ##   ##   ##         ##     
#>                         /####          ##   ##     ##   ##   ####    /  ##     
#>                        /  #####        ### / ########   ### / ######/   ##     
#>                       /    ###          ##/    ### ###   ##/   #####     ##    
#>                       #                             ###                        
#>                        ##                     ####   ###                       
#>                                             /######  /#                        
#>                                            /     ###/                          
#>                                                                                
#>                   /##                                               ##### /##  
#>                 #/ ###                                           ######  / ##  
#>                ##   ###                                         /#   /  /  ##  
#>                ##                                              /    /  /   ##  
#>                ##                                                  /  /    /   
#>                ###### ###  /###     /###   ### /### /###          ## ##   /    
#>                #####   ###/ #### / / ###  / ##/ ###/ /##  /       ## ##  /     
#>                ##       ##   ###/ /   ###/   ##  ###/ ###/        ## ###/      
#>                ##       ##       ##    ##    ##   ##   ##         ## ##  ###   
#>                ##       ##       ##    ##    ##   ##   ##         ## ##    ##  
#>                ##       ##       ##    ##    ##   ##   ##         #  ##    ##  
#>                ##       ##       ##    ##    ##   ##   ##            /     ##  
#>                ##       ##       ##    ##    ##   ##   ##        /##/      ### 
#>                ##       ###       ######     ###  ###  ###      /  ####    ##  
#>                 ##       ###       ####       ###  ###  ###    /    ##     #   
#>                                                                #               
#>                                                                 ##             
#>                                                                                
#> 

# isometric2 font, with "kerning"
figlet(arglist = c('-k', '-f', 'isometric2', 'Figlet from R'))
#>      ___                 ___                       ___                 
#>     /\__\               /\__\                     /\__\                
#>    /:/ _/_   ___       /:/ _/_                   /:/ _/_       ___     
#>   /:/ /\__\ /\__\     /:/ /\  \                 /:/ /\__\     /\__\    
#>  /:/ /:/  //:/__/    /:/ /::\  \  ___     ___  /:/ /:/ _/_   /:/  /    
#> /:/_/:/  //::\  \   /:/__\/\:\__\/\  \   /\__\/:/_/:/ /\__\ /:/__/     
#> \:\/:/  / \/\:\  \__\:\  \ /:/  /\:\  \ /:/  /\:\/:/ /:/  //::\  \     
#>  \::/__/   ~~\:\/\__\\:\  /:/  /  \:\  /:/  /  \::/_/:/  //:/\:\  \    
#>   \:\  \      \::/  / \:\/:/  /    \:\/:/  /    \:\/:/  / \/__\:\  \   
#>    \:\__\     /:/  /   \::/  /      \::/  /      \::/  /       \:\__\  
#>     \/__/     \/__/     \/__/        \/__/        \/__/         \/__/  
#>      ___       ___          ___          ___                   ___     
#>     /\__\     /\  \        /\  \        /\  \                 /\  \    
#>    /:/ _/_   /::\  \      /::\  \      |::\  \               /::\  \   
#>   /:/ /\__\ /:/\:\__\    /:/\:\  \     |:|:\  \             /:/\:\__\  
#>  /:/ /:/  //:/ /:/  /   /:/  \:\  \  __|:|\:\  \           /:/ /:/  /  
#> /:/_/:/  //:/_/:/__/___/:/__/ \:\__\/::::|_\:\__\         /:/_/:/__/___
#> \:\/:/  / \:\/:::::/  /\:\  \ /:/  /\:\~~\  \/__/         \:\/:::::/  /
#>  \::/__/   \::/~~/~~~~  \:\  /:/  /  \:\  \                \::/~~/~~~~ 
#>   \:\  \    \:\~~\       \:\/:/  /    \:\  \                \:\~~\     
#>    \:\__\    \:\__\       \::/  /      \:\__\                \:\__\    
#>     \/__/     \/__/        \/__/        \/__/                 \/__/

# rev font plus multiple arguments
figlet(arglist = c('-lk', '-f', 'rev', 'Figlet from R'))
#> ==============================================================================
#> =        =============  ======================    ============================
#> =  ===================  =====================  ==  ===========================
#> =  ===================  ==========  =========  ===============================
#> =  ========  ===   ===  ===   ===    =======    =====  =   ====   ===  =  = ==
#> =      ========  =  ==  ==  =  ===  =========  ======    =  ==     ==        =
#> =  ========  ===    ==  ==     ===  =========  ======  =======  =  ==  =  =  =
#> =  ========  =====  ==  ==  ======  =========  ======  =======  =  ==  =  =  =
#> =  ========  ==  =  ==  ==  =  ===  =========  ======  =======  =  ==  =  =  =
#> =  ========  ===   ===  ===   ====   ========  ======  ========   ===  =  =  =
#> ==============================================================================
#> ==========
#> =       ==
#> =  ====  =
#> =  ====  =
#> =  ===   =
#> =      ===
#> =  ====  =
#> =  ====  =
#> =  ====  =
#> =  ====  =
#> ==========
```

## Link

Find out more at the [Figlet website](www.figlet.org/).

(Also, this
[blogpost](https://delightlylinux.wordpress.com/2014/05/30/produce-fancy-text-with-figlet/)
is
good.)

-----

<img align="left" width="120" height="125" src="https://raw.githubusercontent.com/AntonelliLab/outsider/master/logo.png">

**An `outsider` module**

Learn more at [outsider
website](https://antonellilab.github.io/outsider/). Want to build your
own module? Check out [`outsider.devtools`
website](https://antonellilab.github.io/outsider.devtools/).
