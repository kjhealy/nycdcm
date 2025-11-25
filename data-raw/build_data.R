# Build data objects

# Remove all .rda files in data/ and regenerate them
fs::dir_ls("data", glob = "*.rda") |> fs::file_delete()

# Build data.R from documentation files
source(here::here("data-raw", "nyc_dcm.R"))
source(here::here("data-raw", "nyc_dcm_arterials.R"))

# Documentation in `data-raw/_documentation` isn't generated automatically. If the data
# changes, errors are found, or check() detects inconsistencies the
# documentation should be updated manually.

# Concatenate _documentation/*.R files into R/data.R
doc_files <- fs::dir_ls(
  here::here("data-raw", "_documentation"),
  regexp = "\\.R$"
)

# Read all documentation files
doc_content <- doc_files |>
  purrr::map(readLines) |>
  purrr::map(\(x) c(x, "")) |>
  unlist()

# Write to R/data.R
writeLines(
  doc_content,
  here::here("R", "data.R")
)
