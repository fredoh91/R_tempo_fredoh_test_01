# data_operations.R

library_data <- list()

add_book_to_library <- function(book) {
  library_data <<- c(library_data, list(book))
}

get_all_books <- function() {
  library_data
}

find_book_by_title <- function(title) {
  result <- Filter(function(book) book$title == title, library_data)
  if (length(result) > 0) result[[1]] else NULL
}
