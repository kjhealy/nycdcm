## code to prepare `nycdcmarterial_sf` dataset goes here
source(here::here("data-raw", "_shared.R"))

nyc_dcm_rawpath <- here("data-raw", "dcm", "dcm_20251031shp")

nyc_dcmarterial_sf <- st_read(here(
  nyc_dcm_rawpath,
  "DCM_ArterialsMajorStreets.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))


usethis::use_data(nyc_dcmarterial_sf, overwrite = TRUE, compress = "xz")
