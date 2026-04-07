# NYC Digital City Map: Street Name Changes Points

Spatial features representing point-based street name changes in New
York City from the Digital City Map (DCM). These include intersection
names and corner names established through local laws.

## Usage

``` r
nyc_dcm_snc_point_sf
```

## Format

A simple feature collection with 1,214 features and 13 fields:

- borough:

  Full borough name

- feat_type:

  Feature type (e.g., "Intersection Name", "Corner Name")

- ll_num:

  Local law number

- ll_sec:

  Local law section number

- ll_type:

  Local law type (typically "Initial Naming")

- lleffectdt:

  Local law effective date

- ll_limits:

  Description of the location of the name change

- limits_er:

  Limits error or correction notes

- repealed:

  Whether the local law has been repealed (Yes/No)

- repeal_dt:

  Repeal date if applicable

- amended:

  Whether the local law has been amended (Yes/No)

- amend_dt:

  Amendment date if applicable

- amendt_txt:

  Amendment text describing the changes

- geometry:

  Point geometry (NAD83 / New York Long Island ftUS)

## Source

NYC Department of City Planning Digital City Map, October 31, 2025

<https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page>
