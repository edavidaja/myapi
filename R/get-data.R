get_my_data <- function() {

  data <- dplyr::tbl(pool, "my_data")

  data |>
    dplyr::collect()
}

set_pool <- function(pool_){ pool <<- pool_ }
