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
