# NYC Digital City Map: City Map Alterations

Spatial features representing city map alterations in New York City from
the Digital City Map (DCM). These alterations document changes to the
city map approved by the City Planning Commission.

## Usage

``` r
nyc_dcm_alteration_sf
```

## Format

A simple feature collection with 5,105 features and 19 fields:

- boro_code:

  Borough code (single letter: M, X, K, Q, R)

- app_num:

  Application number for the map alteration

- project_nm:

  Project name associated with the alteration

- filed_stat:

  Filed status code

- status:

  Current status code of the alteration

- effect_dt:

  Effective date of the alteration

- bp_num:

  Borough President number

- cc_res_num:

  City Council resolution number

- zr_update:

  Zoning resolution update indicator (0/1)

- cert_date:

  Certification date

- chg_type:

  Type of change

- altmappdf:

  Filename of the alteration map PDF

- altmaplink:

  URL link to the alteration map PDF

- sec_sheet:

  Section sheet number

- app_rectyp:

  Application record type

- map_num:

  Map number

- boro_name:

  Full borough name

- hyperlnk:

  Alternative hyperlink to documentation

- cptype:

  City Planning type code

- geometry:

  Multipolygon geometry (NAD83 / New York Long Island ftUS)

## Source

NYC Department of City Planning Digital City Map, October 31, 2025

<https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page>
