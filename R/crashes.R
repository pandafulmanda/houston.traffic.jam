crashes <- function(crashid = NA) {
  traffic_data <- readRDS('./txdot_cris_crashdata_201601_201802.rds')

  if (is.na(crashid)) {
    return traffic_data$crashes
  } else {
    return traffic_data$crashes %>%
                filter(Crash.ID == crashid)
  }
}
