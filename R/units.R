units <- function(crashid = NA) {
  traffic_data <- readRDS('./txdot_cris_crashdata_201601_201802.rds')

  if (is.na(crashid)) {
    return traffic_data$units
  } else {
    return traffic_data$units %>%
                dplyr::filter(Crash.ID == crashid)
  }
}
