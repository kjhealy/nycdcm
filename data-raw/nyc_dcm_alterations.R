## code to prepare `nyc_dcm_alteration_sf` dataset goes here
source(here::here("data-raw", "_shared.R"))

nyc_dcm_rawpath <- here("data-raw", "dcm", "dcm_20251031shp")

nyc_dcm_alteration_sf <- st_read(here(
  nyc_dcm_rawpath,
  "DCM_CityMapAlterations.shp"
)) |>
  janitor::clean_names() |>
  st_transform(crs = st_crs("EPSG:2263"))


usethis::use_data(nyc_dcm_alteration_sf, overwrite = TRUE, compress = "xz")
