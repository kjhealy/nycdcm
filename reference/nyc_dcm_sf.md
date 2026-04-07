# NYC Digital City Map Street Centerlines

A spatial dataset containing street centerlines from the New York City
Digital City Map (DCM). This layer represents the mapped streets,
infrastructure, and unmapped streets throughout the five boroughs of New
York City.

## Usage

``` r
nyc_dcm_sf
```

## Format

An sf object with 67,979 features and 6 fields:

- borough:

  Character. The borough name (Manhattan, Brooklyn, Queens, Bronx, or
  Staten Island)

- feat_type:

  Character. Feature type classification (e.g., "Infrastructure",
  "Unmapped_St")

- jurisdicti:

  Character. Jurisdiction information for the street segment

- record_st:

  Character. Record status or classification

- edit_date:

  Date. Date when the feature was last edited or updated

- geometry:

  sfc_MULTILINESTRING. Spatial geometry representing the street
  centerline

## Source

NYC Department of City Planning, Digital City Map. Downloaded October
31, 2025. <https://www.nyc.gov/site/planning/data-maps/open-data.page>

## Details

The coordinate reference system is NAD83 / New York Long Island (ftUS),
EPSG:2263. This projection uses US survey feet as units.

## Examples

``` r
if (FALSE) { # \dontrun{
library(sf)
library(ggplot2)

# Plot Manhattan streets
manhattan <- nyc_dcm_sf |>
  filter(borough == "Manhattan")

ggplot(manhattan) +
  geom_sf(aes(color = feat_type)) +
  theme_minimal()
} # }
```
