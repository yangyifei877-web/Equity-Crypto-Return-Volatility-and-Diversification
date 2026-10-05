packages <- c(
  "quantmod",
  "PerformanceAnalytics",
  "TTR",
  "ggplot2",
  "reshape2",
  "vars",
  "dplyr",
  "rmgarch",
  "rugarch",
  "tidyr",
  "tibble",
  "zoo",
  "rmarkdown",
  "knitr"
)

missing_packages <- packages[
  !vapply(packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) == 0) {
  message("All required R packages are already installed.")
} else {
  message("Installing: ", paste(missing_packages, collapse = ", "))
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
}
