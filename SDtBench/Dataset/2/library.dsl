workspace "Library System" "Entity-level model" {

  model {
    user = person "User" "A library visitor or member"

    library = softwareSystem "Library System" "Manages books, members, and operations" {

      cBook        = container "Book"        "Represents a book in the collection"
      cAuthor      = container "Author"      "Represents an author of books"
      cMember      = container "Member"      "Represents a library member"
      cLoan        = container "Loan"        "Represents a borrowing record"
      cLibrarian   = container "Librarian"   "Represents library staff"
      cFine        = container "Fine"        "Represents overdue payment"
      cPublisher   = container "Publisher"   "Represents a book publisher"
      cCopy        = container "Copy"        "Represents a physical copy of a book"
      cReservation = container "Reservation" "Represents a hold placed by a member"
      cCategory    = container "Category"    "Represents a classification/genre"

      // Relationships
      cAuthor      -> cBook        "writes"
      cBook        -> cPublisher   "publishedBy"
      cBook        -> cCategory    "categorizedAs"
      cBook        -> cCopy        "has"

      cMember      -> cLoan        "borrows"
      cMember      -> cReservation "reserves"
      cMember      -> cFine        "pays"

      cLoan        -> cCopy        "issuedFor"
      cLoan        -> cMember      "belongsTo"

      cReservation -> cCopy        "reserves"
      cReservation -> cMember      "placedBy"

      cLibrarian   -> cLoan        "manages"
      cLibrarian   -> cFine        "collects"
      cLibrarian   -> cReservation "processes"
    }

    user -> library "Uses"
  }

  views {
    systemContext library sysCtx {
      include *
      autolayout lr
    }

    container library containerView {
      include *
      autolayout lr
    }

    styles {
      element "Person" {
        shape Person
      }
      element "Software System" {
        background "#1168bd"
        color "#ffffff"
      }
      element "Container" {
        shape RoundedBox
        background "#f9f9f9"
        color "#000000"
        stroke "#6b8fd6"
      }
      relationship "Relationship" {
        routing Orthogonal
      }
    }
  }
}
