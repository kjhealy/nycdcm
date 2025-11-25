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
#' ggplot(nyc_dcmarterial_sf) +
#'   geom_sf(aes(color = borough)) +
#'   theme_minimal() +
#'   labs(title = "NYC Arterials and Major Streets")
#'
#' # Count routes by type
#' nyc_dcmarterial_sf |>
#'   st_drop_geometry() |>
#'   count(route_type, route_sub)
#' }
"nyc_dcmarterial_sf"

