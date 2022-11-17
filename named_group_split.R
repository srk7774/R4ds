named_group_split <- function(.tbl, ...) {
  grouped <- group_by(.tbl, ...)
  names <- rlang::inject(paste(!!!group_keys(grouped), sep = " / "))

  grouped %>% 
    group_split() %>% 
    rlang::set_names(names)
}

devtools::source_url("https://raw.githubusercontent.com/srk7774/R4ds/main/named_group_split.R")
