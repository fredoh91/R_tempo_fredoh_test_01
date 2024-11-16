# main.R

source("book_functions.R")
source("data_operations.R")

# Fonction principale
main <- function() {
  # Ajout de quelques livres
  book1 <- create_book("1984", "George Orwell", 1949)
  book2 <- create_book("Le Petit Prince", "Antoine de Saint-Exupéry", 1943)
  book3 <- create_book("Dune", "Frank Herbert", 1965)
  
  add_book_to_library(book1)
  add_book_to_library(book2)
  add_book_to_library(book3)
  
  # Affichage de tous les livres
  cat("Tous les livres de la bibliothèque:\n")
  lapply(get_all_books(), print_book)
  
  # Recherche d'un livre
  cat("\nRecherche du livre '1984':\n")
  found_book <- find_book_by_title("1984")
  if (!is.null(found_book)) {
    print_book(found_book)
  } else {
    cat("Livre non trouvé.\n")
  }
}

# Exécution de la fonction principale
main()
