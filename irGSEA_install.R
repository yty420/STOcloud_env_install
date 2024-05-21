
# install packages from CRAN
cran.packages <- c("aplot", "BiocManager", "circlize", "cowplot","data.table", 
                   "devtools", "doParallel", "doRNG", "dplyr", "ggfun", "gghalves", 
                   "ggplot2", "ggplotify", "ggridges", "ggsci", "irlba",
                   "magrittr", "Matrix", "msigdbr", "pagoda2", "plyr", "pointr", 
                   "purrr", "RcppML", "readr", "reshape2", "reticulate", 
                   "rlang", "RMTstat", "RobustRankAggreg", "roxygen2", "SeuratObject",
                   "Seurat", "stringr", "tibble", "tidyr", 
                   "tidyselect", "tidytree", "VAM")

for (i in cran.packages) {
  if (!requireNamespace(i, quietly = TRUE)) {
    install.packages(i, ask = F, update =T)
  }
}

# install packages from Bioconductor
bioconductor.packages <- c("AUCell", "BiocParallel", "ComplexHeatmap", 
                           "decoupleR", "fgsea", "ggtree", "GSEABase", 
                           "GSVA", "Nebulosa", "scde", "singscore",
                           "SummarizedExperiment", "UCell",
                           "viper","sparseMatrixStats")

for (i in bioconductor.packages) {
  if (!requireNamespace(i, quietly = TRUE)) {
    BiocManager::install(i, ask = F, update =T)
  }
}

# install packages from Github
if (!requireNamespace("irGSEA", quietly = TRUE)) { 
    devtools::install_github("chuiqin/irGSEA", force =T)
}






