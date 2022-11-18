named_group_split <- function(.tbl, ...) {
  grouped <- group_by(.tbl, ...)
  names <- rlang::inject(paste(!!!group_keys(grouped), sep = " / "))

  grouped %>% 
    group_split() %>% 
    rlang::set_names(names)
}

quoted_col_names = function(x){
  x_split = stringr::str_split(x, "\\s+")
  as.character(x_split) |> cat()
}

# devtools::source_url("https://raw.githubusercontent.com/srk7774/R4ds/main/named_group_split.R")
