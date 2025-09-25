workspace "Library System" "Modeled as entity containers" {
  model {
    softwareSystem library "Library Platform" {
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
      author -> book "writes"
      book -> publisher "publishedBy"
      book -> category "categorizedAs"
      book -> copy "hasCopy"
      copy -> book "of"
      member -> loan "borrowsVia"
      loan -> copy "for"
      loan -> librarian "issuedBy"
      loan -> fine "mayIncur"
      member -> fine "pays"
      member -> reservation "makes"
      reservation -> book "reservedFor"
      reservation -> librarian "handledBy"
    }
  }
  views {
    systemContext library "Library Context" {
      include *
      autoLayout lr
    }
    container library "Library Entities" {
      include *
      autoLayout lr
    }
    theme default
  }
}