workspace "Extended Library System" "Modeled as entity containers" {
  model {
    softwareSystem library "Library Platform" {
      container book "Book" "Entity" "Represents the Book concept"
      container author "Author" "Entity" "Represents the Author concept"
      container member "Member" "Entity" "Represents the Member concept"
      container librarian "Librarian" "Entity" "Represents the Librarian concept"
      container loan "Loan" "Entity" "Represents the Loan concept"
      container fine "Fine" "Entity" "Represents the Fine concept"
      container reservation "Reservation" "Entity" "Represents the Reservation concept"
      container publisher "Publisher" "Entity" "Represents the Publisher concept"
      container copy "Copy" "Entity" "Represents the Copy concept"
      container branch "Branch" "Entity" "Represents the Branch concept"
      container category "Category" "Entity" "Represents the Category concept"
      container review "Review" "Entity" "Represents the Review concept"
      container notification "Notification" "Entity" "Represents the Notification concept"
      container digitalcopy "DigitalCopy" "Entity" "Represents the DigitalCopy concept"
      container subscription "Subscription" "Entity" "Represents the Subscription concept"
      container staff "Staff" "Entity" "Represents the Staff concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container report "Report" "Entity" "Represents the Report concept"
      container accesscontrol "AccessControl" "Entity" "Represents the AccessControl concept"
      container department "Department" "Entity" "Represents the Department concept"
      member -> loan "borrows"
      loan -> copy "includes"
      copy -> book "of"
      copy -> branch "locatedAt"
      book -> author "writtenBy"
      book -> publisher "publishedBy"
      book -> category "categorizedAs"
      reservation -> member "placedBy"
      reservation -> book "for"
      librarian -> loan "approves"
      fine -> loan "assessedFor"
      payment -> fine "settles"
      member -> payment "makes"
      member -> review "writes"
      review -> book "about"
      notification -> member "informs"
      digitalcopy -> book "versionOf"
      subscription -> member "belongsTo"
      subscription -> accesscontrol "grants"
      accesscontrol -> digitalcopy "restricts"
      staff -> branch "worksAt"
      department -> branch "manages"
      librarian -> report "generates"
      report -> department "summarizes"
      publisher -> digitalcopy "distributes"
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