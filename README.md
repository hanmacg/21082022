
# Hannah’s Data Science Exam

The purpose of this ReadMe is to show my output and thinking from each
question.

Ideally store a minimum working example data set in data folder.

Add binary files in bin, and closed R functions in code. Human Readable
settings files (e.g. csv) should be placed in settings/

``` r
rm(list = ls()) # Clean your environment:
gc() # garbage collection - It can be useful to call gc after a large object has been removed, as this may prompt R to return memory to the operating system.
```

    ##          used (Mb) gc trigger (Mb) max used (Mb)
    ## Ncells 466362 25.0    1002268 53.6   660388 35.3
    ## Vcells 862187  6.6    8388608 64.0  1769776 13.6

``` r
library(tidyverse)
```

    ## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.1.2     ✔ readr     2.1.4
    ## ✔ forcats   1.0.0     ✔ stringr   1.5.0
    ## ✔ ggplot2   3.4.2     ✔ tibble    3.2.1
    ## ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
    ## ✔ purrr     1.0.1     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
list.files('code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))


# Texevier::create_template(directory = "C:/Users/hanna/OneDrive/Documents/Data Science/21082022/",
#                           template_name = "Q1",
#                           build_project = T, open_project = T)
# 
# 
# Texevier::create_template_html(directory = "C:/Users/hanna/OneDrive/Documents/Data Science/21082022/",
#                           template_name = "Q2",
#                           build_project = T, open_project = T)
```
