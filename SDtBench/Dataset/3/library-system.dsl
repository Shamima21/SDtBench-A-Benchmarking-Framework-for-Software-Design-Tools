workspace "Library System" "Modeled as entity containers" {
  model {
    softwareSystem sys "Library System" {
      container book "Book" "Entity" "Represents the Book concept"
      container author "Author" "Entity" "Represents the Author concept"
      container member "Member" "Entity" "Represents the Member concept"
      container loan "Loan" "Entity" "Represents the Loan concept"
      container librarian "Librarian" "Entity" "Represents the Librarian concept"
      container fine "Fine" "Entity" "Represents the Fine concept"
      container publisher "Publisher" "Entity" "Represents the Publisher concept"
      container copy "Copy" "Entity" "Represents the Copy concept"
      container reservation "Reservation" "Entity" "Represents the Reservation concept"
      container category "Category" "Entity" "Represents the Category concept"
      book -> author "relatesTo"
      author -> member "relatesTo"
      member -> loan "relatesTo"
      loan -> librarian "relatesTo"
      librarian -> fine "relatesTo"
      fine -> publisher "relatesTo"
      publisher -> copy "relatesTo"
      copy -> reservation "relatesTo"
      reservation -> category "relatesTo"
    }
  }
  views {
    systemContext sys "System Context" {
      include *
      autoLayout lr
    }
    container sys "Entities" {
      include *
      autoLayout lr
    }
    theme default
  }
}