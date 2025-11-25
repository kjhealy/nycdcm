#' NYC Digital City Map: City Map Alterations
#'
#' Spatial features representing city map alterations in New York City from the
#' Digital City Map (DCM). These alterations document changes to the city map
#' approved by the City Planning Commission.
#'
#' @format A simple feature collection with 5,105 features and 19 fields:
#' \describe{
#'   \item{boro_code}{Borough code (single letter: M, X, K, Q, R)}
#'   \item{app_num}{Application number for the map alteration}
#'   \item{project_nm}{Project name associated with the alteration}
#'   \item{filed_stat}{Filed status code}
#'   \item{status}{Current status code of the alteration}
#'   \item{effect_dt}{Effective date of the alteration}
#'   \item{bp_num}{Borough President number}
#'   \item{cc_res_num}{City Council resolution number}
#'   \item{zr_update}{Zoning resolution update indicator (0/1)}
#'   \item{cert_date}{Certification date}
#'   \item{chg_type}{Type of change}
#'   \item{altmappdf}{Filename of the alteration map PDF}
#'   \item{altmaplink}{URL link to the alteration map PDF}
#'   \item{sec_sheet}{Section sheet number}
#'   \item{app_rectyp}{Application record type}
#'   \item{map_num}{Map number}
#'   \item{boro_name}{Full borough name}
#'   \item{hyperlnk}{Alternative hyperlink to documentation}
#'   \item{cptype}{City Planning type code}
#'   \item{geometry}{Multipolygon geometry (NAD83 / New York Long Island ftUS)}
#' }
#' @source NYC Department of City Planning Digital City Map, October 31, 2025
#' @source \url{https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page}
"nyc_dcm_alteration_sf"

#' NYC Digital City Map Arterials and Major Streets
#'
#' A spatial dataset containing arterial and major street routes from the New York
#' City Digital City Map (DCM). This layer represents the primary road network
#' designated as arterials and major streets for traffic planning and management.
#'
#' @format An sf object with 740 features and 7 fields:
#' \describe{
#'   \item{borough}{Character. The borough name (Manhattan, Brooklyn, Queens, Bronx, or Staten Island)}
#'   \item{boro_code}{Integer. Numeric borough code (1=Manhattan, 2=Bronx, 3=Brooklyn, 4=Queens, 5=Staten Island)}
#'   \item{route_name}{Character. The name of the arterial or major street route}
#'   \item{route_type}{Character. Classification of the route type (e.g., "Major Streets")}
#'   \item{route_sub}{Character. Sub-classification of the route (e.g., "Major Street", "Major street to be improved")}
#'   \item{route_stat}{Character. Current status of the route (e.g., "Existing")}
#'   \item{geometry}{sfc_MULTILINESTRING. Spatial geometry representing the arterial or major street}
#' }
#'
#' @details
#' The coordinate reference system is NAD83 / New York Long Island (ftUS), EPSG:2263.
#' This projection uses US survey feet as units.
#'
#' Arterials and major streets form the backbone of NYC's street network and are
#' important for traffic planning, emergency services routing, and understanding
#' the city's primary transportation corridors.
#'
#' @source NYC Department of City Planning, Digital City Map.
#' Downloaded October 31, 2025.
#' \url{https://www.nyc.gov/site/planning/data-maps/open-data.page}
#'
#' @examples
#' \dontrun{
#' library(sf)
#' library(ggplot2)
#'
#' # Plot arterial streets by borough
#' ggplot(nyc_dcm_arterial_sf) +
#'   geom_sf(aes(color = borough)) +
#'   theme_minimal() +
#'   labs(title = "NYC Arterials and Major Streets")
#'
#' # Count routes by type
#' nyc_dcm_arterial_sf |>
#'   st_drop_geometry() |>
#'   count(route_type, route_sub)
#' }
"nyc_dcm_arterial_sf"

#' NYC Digital City Map Street Centerlines
#'
#' A spatial dataset containing street centerlines from the New York City
#' Digital City Map (DCM). This layer represents the mapped streets, infrastructure,
#' and unmapped streets throughout the five boroughs of New York City.
#'
#' @format An sf object with 67,979 features and 6 fields:
#' \describe{
#'   \item{borough}{Character. The borough name (Manhattan, Brooklyn, Queens, Bronx, or Staten Island)}
#'   \item{feat_type}{Character. Feature type classification (e.g., "Infrastructure", "Unmapped_St")}
#'   \item{jurisdicti}{Character. Jurisdiction information for the street segment}
#'   \item{record_st}{Character. Record status or classification}
#'   \item{edit_date}{Date. Date when the feature was last edited or updated}
#'   \item{geometry}{sfc_MULTILINESTRING. Spatial geometry representing the street centerline}
#' }
#'
#' @details
#' The coordinate reference system is NAD83 / New York Long Island (ftUS), EPSG:2263.
#' This projection uses US survey feet as units.
#'
#' @source NYC Department of City Planning, Digital City Map.
#' Downloaded October 31, 2025.
#' \url{https://www.nyc.gov/site/planning/data-maps/open-data.page}
#'
#' @examples
#' \dontrun{
#' library(sf)
#' library(ggplot2)
#'
#' # Plot Manhattan streets
#' manhattan <- nyc_dcm_sf |>
#'   filter(borough == "Manhattan")
#'
#' ggplot(manhattan) +
#'   geom_sf(aes(color = feat_type)) +
#'   theme_minimal()
#' }
"nyc_dcm_sf"

#' NYC Digital City Map: Street Name Changes Areas
#'
#' Spatial features representing area-based street name changes in New York City
#' from the Digital City Map (DCM). These include plaza names, public place names,
#' and intersection names established through local laws.
#'
#' @format A simple feature collection with 49 features and 13 fields:
#' \describe{
#'   \item{borough}{Full borough name}
#'   \item{feat_type}{Feature type (e.g., "Public place", "Plaza Name", "Intersection name")}
#'   \item{ll_num}{Local law number}
#'   \item{ll_sec}{Local law section number}
#'   \item{ll_type}{Local law type (e.g., "Renaming", "Initial Naming")}
#'   \item{lleffectdt}{Local law effective date}
#'   \item{ll_limits}{Description of the geographic limits of the name change}
#'   \item{limits_er}{Limits error or correction notes}
#'   \item{repealed}{Whether the local law has been repealed (Yes/No)}
#'   \item{repeal_dt}{Repeal date if applicable}
#'   \item{amended}{Whether the local law has been amended (Yes/No)}
#'   \item{amend_dt}{Amendment date if applicable}
#'   \item{amendt_txt}{Amendment text describing the changes}
#'   \item{geometry}{Polygon geometry (NAD83 / New York Long Island ftUS)}
#' }
#' @source NYC Department of City Planning Digital City Map, October 31, 2025
#' @source \url{https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page}
"nyc_dcm_snc_area_sf"

#' NYC Digital City Map: Street Name Changes Lines
#'
#' Spatial features representing linear street name changes in New York City
#' from the Digital City Map (DCM). These include street renamings and honorary
#' street names established through local laws.
#'
#' @format A simple feature collection with 1,145 features and 13 fields:
#' \describe{
#'   \item{borough}{Full borough name}
#'   \item{feat_type}{Feature type (typically "Street name")}
#'   \item{ll_num}{Local law number}
#'   \item{ll_sec}{Local law section number}
#'   \item{ll_type}{Local law type (e.g., "Renaming", "Honorary Name")}
#'   \item{lleffectdt}{Local law effective date}
#'   \item{ll_limits}{Description of the geographic limits of the name change}
#'   \item{limits_er}{Limits error or correction notes}
#'   \item{repealed}{Whether the local law has been repealed (Yes/No)}
#'   \item{repeal_dt}{Repeal date if applicable}
#'   \item{amended}{Whether the local law has been amended (Yes/No)}
#'   \item{amend_dt}{Amendment date if applicable}
#'   \item{amendt_txt}{Amendment text describing the changes}
#'   \item{geometry}{Multilinestring geometry (NAD83 / New York Long Island ftUS)}
#' }
#' @source NYC Department of City Planning Digital City Map, October 31, 2025
#' @source \url{https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page}
"nyc_dcm_snc_line_sf"

#' NYC Digital City Map: Street Name Changes Points
#'
#' Spatial features representing point-based street name changes in New York City
#' from the Digital City Map (DCM). These include intersection names and corner
#' names established through local laws.
#'
#' @format A simple feature collection with 1,214 features and 13 fields:
#' \describe{
#'   \item{borough}{Full borough name}
#'   \item{feat_type}{Feature type (e.g., "Intersection Name", "Corner Name")}
#'   \item{ll_num}{Local law number}
#'   \item{ll_sec}{Local law section number}
#'   \item{ll_type}{Local law type (typically "Initial Naming")}
#'   \item{lleffectdt}{Local law effective date}
#'   \item{ll_limits}{Description of the location of the name change}
#'   \item{limits_er}{Limits error or correction notes}
#'   \item{repealed}{Whether the local law has been repealed (Yes/No)}
#'   \item{repeal_dt}{Repeal date if applicable}
#'   \item{amended}{Whether the local law has been amended (Yes/No)}
#'   \item{amend_dt}{Amendment date if applicable}
#'   \item{amendt_txt}{Amendment text describing the changes}
#'   \item{geometry}{Point geometry (NAD83 / New York Long Island ftUS)}
#' }
#' @source NYC Department of City Planning Digital City Map, October 31, 2025
#' @source \url{https://www.nyc.gov/site/planning/data-maps/open-data/dwn-digital-city-map.page}
"nyc_dcm_snc_point_sf"

