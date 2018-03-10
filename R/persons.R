persons <- function(crashid = NA) {
  traffic_data <- readRDS('./txdot_cris_crashdata_201601_201802.rds')

  if (is.na(crashid)) {
    return traffic_data$persons
  } else {
    return traffic_data$persons %>%
                filter(Crash.ID == crashid)
  }
}
