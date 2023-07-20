createProj <- function(path, ...) {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # collect inputs' parameters
  params <- list(...)

  # create .R file
  file <- paste0(path, "/scripts/1.0.function.R")
  file.create(file)

  # create "genotype" dir
  if (params[["geno"]]) {
    dtaDir0 <- paste0(path, "/raw_data/genotype")
    dtaDir1 <- paste0(path, "/data/genotype")
    dir.create(dtaDir0, recursive = TRUE, showWarnings = FALSE)
    dir.create(dtaDir1, recursive = TRUE, showWarnings = FALSE)
  }

    # create "phenotype" dir
  if (params[["pheno"]]) {
    dtaDir0 <- paste0(path, "/raw_data/phenotype")
    dtaDir1 <- paste0(path, "/data/phenotype")
    dir.create(dtaDir0, recursive = TRUE, showWarnings = FALSE)
    dir.create(dtaDir1, recursive = TRUE, showWarnings = FALSE)
  }

  # create "reference" dir
  if (params[["ref"]]) {
    dtaDir <- paste0(path, "/reference")
    dir.create(dtaDir, recursive = TRUE, showWarnings = FALSE)
  }

  # create "midstream" dir
  if (params[["mid"]]) {
    dtaDir <- paste0(path, "/midstream")
    dir.create(dtaDir, recursive = TRUE, showWarnings = FALSE)
  }

  # create "results" dir
  if (params[["res"]]) {
    outDir <- paste0(path, "/results")
    dir.create(outDir, recursive = TRUE, showWarnings = FALSE)
  }
}
