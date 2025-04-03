
# BiocHubsShiny

The `BiocHubsShiny` package allows users to visually explore the
`AnnotationHub` and `ExperimentHub` resources via `shiny`. It provides a
tabular display of the available resources with the ability to filter
and search through the column fields.

# Installation

``` r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("BiocHubsShiny")
```

# Loading the package

``` r
library(BiocHubsShiny)
```

# Display of resources

Resources are displayed interactively using the eponymous function:

``` r
BiocHubsShiny()
```

<img src="https://github.com/Bioconductor/BiocHubsShiny/blob/devel/vignettes/figures/BiocHubsShiny.png?raw=true" width="100%" />

# Filtering

You can filter by any of the columns in the table. For example, you can
search for ‘Mus musculus’ to get resources only for that species:

<img src="https://github.com/Bioconductor/BiocHubsShiny/blob/devel/vignettes/figures/MusMusculus.png?raw=true" width="100%" />

# Selection

Click on the rows to select the resources. They will show up as
highlighted rows.

<img src="https://github.com/Bioconductor/BiocHubsShiny/blob/devel/vignettes/figures/MusMusculusSelection.png?raw=true" width="100%" />

# Import

Once the selection is highlighted, the code at the bottom of the app
will be updated to show the commands for entering (reproducibly) into
the R session.

<img src="https://github.com/Bioconductor/BiocHubsShiny/blob/devel/vignettes/figures/MusMusculusCode.png?raw=true" width="100%" />

# Session Info

``` r
sessionInfo()
#> R Under development (unstable) (2025-04-02 r88102)
#> Platform: x86_64-pc-linux-gnu
#> Running under: Ubuntu 22.04.5 LTS
#> 
#> Matrix products: default
#> BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.10.0 
#> LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.10.0  LAPACK version 3.10.0
#> 
#> locale:
#>  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
#>  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
#>  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
#>  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
#>  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
#> [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
#> 
#> time zone: America/New_York
#> tzcode source: system (glibc)
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#> [1] BiocHubsShiny_1.7.5 shiny_1.10.0        colorout_1.2-2     
#> 
#> loaded via a namespace (and not attached):
#>  [1] rappdirs_0.3.3          generics_0.1.3          BiocVersion_3.21.1     
#>  [4] RSQLite_2.3.9           digest_0.6.37           magrittr_2.0.3         
#>  [7] evaluate_1.0.3          fastmap_1.2.0           blob_1.2.4             
#> [10] jsonlite_2.0.0          AnnotationHub_3.15.1    AnnotationDbi_1.69.0   
#> [13] GenomeInfoDb_1.43.4     DBI_1.2.3               promises_1.3.2         
#> [16] BiocManager_1.30.25     httr_1.4.7              UCSC.utils_1.3.1       
#> [19] Biostrings_2.75.4       codetools_0.2-20        httr2_1.1.2            
#> [22] cli_3.6.4               crayon_1.5.3            rlang_1.1.5            
#> [25] XVector_0.47.2          dbplyr_2.5.0            Biobase_2.67.0         
#> [28] bit64_4.6.0-1           cachem_1.1.0            yaml_2.3.10            
#> [31] tools_4.6.0             memoise_2.0.1           dplyr_1.1.4            
#> [34] GenomeInfoDbData_1.2.14 httpuv_1.6.15           filelock_1.0.3         
#> [37] ExperimentHub_2.15.1    BiocGenerics_0.53.6     curl_6.2.2             
#> [40] png_0.1-8               vctrs_0.6.5             R6_2.6.1               
#> [43] mime_0.13               stats4_4.6.0            BiocFileCache_2.15.1   
#> [46] lifecycle_1.0.4         KEGGREST_1.47.1         IRanges_2.41.3         
#> [49] S4Vectors_0.45.4        bit_4.6.0               pkgconfig_2.0.3        
#> [52] pillar_1.10.1           later_1.4.1             glue_1.8.0             
#> [55] Rcpp_1.0.14             xfun_0.52               tibble_3.2.1           
#> [58] tidyselect_1.2.1        rstudioapi_0.17.1       knitr_1.50             
#> [61] xtable_1.8-4            htmltools_0.5.8.1       rmarkdown_2.29         
#> [64] compiler_4.6.0
```
