#' Downloads table from URL
#' @export
#' @param a url link
get_table <- function(a) {
  my_link = a
  my_df = my_link %>%
    read_html(x = .) %>%
    html_node(., ".wikitable") %>%
    html_table(x = ., fill = TRUE)
  return(my_df)
}

