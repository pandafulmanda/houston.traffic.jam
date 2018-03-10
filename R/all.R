all <- function(crashid = NA) {
  traffic_data <- readRDS('../data/txdot_cris_crashdata_201601_201802.rds')
  return(traffic_data)
}
