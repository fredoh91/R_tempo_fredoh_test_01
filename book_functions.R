# book_functions.R

create_book <- function(title, author, year) {
  list(title = title, author = author, year = year)
}

print_book <- function(book) {
  cat("Titre:", book$title, "\n")
  cat("Auteur:", book$author, "\n")
  cat("Année:", book$year, "\n")
}
