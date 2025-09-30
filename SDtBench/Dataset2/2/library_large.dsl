workspace "Extended Library System" "Entity-level model" {

  model {
    user = person "User" "A library visitor or registered member"

    library = softwareSystem "Library System" "Manages books, members, staff, and library operations" {

      cBook         = container "Book"         "Represents a book"
      cAuthor       = container "Author"       "Represents the author of books"
      cMember       = container "Member"       "Represents a library member"
      cLibrarian    = container "Librarian"    "Represents library staff in charge of managing resources"
      cLoan         = container "Loan"         "Represents a borrowing record"
      cFine         = container "Fine"         "Represents overdue payment"
      cReservation  = container "Reservation"  "Represents a hold placed on a book"
      cPublisher    = container "Publisher"    "Represents a book publisher"
      cCopy         = container "Copy"         "Represents a physical copy of a book"
      cBranch       = container "Branch"       "Represents a library branch"
      cCategory     = container "Category"     "Represents a classification/genre"
      cReview       = container "Review"       "Represents a member review of a book"
      cNotification = container "Notification" "Represents messages sent to members"
      cDigitalCopy  = container "DigitalCopy"  "Represents an e-book or digital version"
      cSubscription = container "Subscription" "Represents membership subscription plan"
      cStaff        = container "Staff"        "Represents general staff"
      cPayment      = container "Payment"      "Represents financial transactions"
      cReport       = container "Report"       "Represents operational or analytical report"
      cAccessCtrl   = container "AccessControl" "Represents system permissions"
      cDept         = container "Department"   "Represents organizational unit"

      // Relationships
      cAuthor       -> cBook         "writes"
      cBook         -> cPublisher    "publishedBy"
      cBook         -> cCategory     "categorizedAs"
      cBook         -> cCopy         "has"
      cBook         -> cDigitalCopy  "availableAs"
      cReview       -> cBook         "about"

      cMember       -> cLoan         "borrows"
      cMember       -> cReservation  "reserves"
      cMember       -> cFine         "incurs"
      cMember       -> cSubscription "subscribesTo"
      cMember       -> cPayment      "pays"
      cMember       -> cNotification "receives"

      cLoan         -> cCopy         "issuedFor"
      cLoan         -> cMember       "belongsTo"

      cReservation  -> cCopy         "reserves"
      cReservation  -> cMember       "placedBy"

      cLibrarian    -> cLoan         "manages"
      cLibrarian    -> cFine         "collects"
      cLibrarian    -> cReservation  "processes"
      cLibrarian    -> cReport       "generates"

      cStaff        -> cBranch       "assignedTo"
      cStaff        -> cDept         "belongsTo"

      cPayment      -> cFine         "covers"
      cPayment      -> cSubscription "covers"

      cAccessCtrl   -> cMember       "controlsAccess"
      cAccessCtrl   -> cStaff        "controlsAccess"

      cBranch       -> cCopy         "stores"
      cDept         -> cReport       "produces"
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
