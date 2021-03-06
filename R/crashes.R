crashes <- function(crashid = NA) {
  traffic_data <- readRDS('../data/txdot_cris_crashdata_201601_201802.rds')

  if (is.na(crashid)) {
    return(traffic_data$crashes)
  } else {
    return(traffic_data$crashes %>%
            dplyr::filter(Crash.ID == crashid)
          )
  }
}
