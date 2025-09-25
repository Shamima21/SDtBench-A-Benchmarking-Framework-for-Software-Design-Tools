workspace "Hotel Booking" "Modeled as entity containers" {
  model {
    softwareSystem sys "Hotel Booking" {
      container guest "Guest" "Entity" "Represents the Guest concept"
      container room "Room" "Entity" "Represents the Room concept"
      container booking "Booking" "Entity" "Represents the Booking concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      container staff "Staff" "Entity" "Represents the Staff concept"
      container service "Service" "Entity" "Represents the Service concept"
      container feedback "Feedback" "Entity" "Represents the Feedback concept"
      container reservation "Reservation" "Entity" "Represents the Reservation concept"
      container offer "Offer" "Entity" "Represents the Offer concept"
      guest -> room "relatesTo"
      room -> booking "relatesTo"
      booking -> payment "relatesTo"
      payment -> invoice "relatesTo"
      invoice -> staff "relatesTo"
      staff -> service "relatesTo"
      service -> feedback "relatesTo"
      feedback -> reservation "relatesTo"
      reservation -> offer "relatesTo"
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