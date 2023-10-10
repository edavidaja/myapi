get_my_data <- function(pool) {

  data <- dplyr::tbl(pool, "my_data")

  data |>
    dplyr::collect()
}
