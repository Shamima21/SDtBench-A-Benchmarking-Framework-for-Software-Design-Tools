workspace "Online Ticketing" "Modeled as entity containers" {
  model {
    softwareSystem sys "Online Ticketing" {
      container customer "Customer" "Entity" "Represents the Customer concept"
      container ticket "Ticket" "Entity" "Represents the Ticket concept"
      container train "Train" "Entity" "Represents the Train concept"
      container flight "Flight" "Entity" "Represents the Flight concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container reservation "Reservation" "Entity" "Represents the Reservation concept"
      container seat "Seat" "Entity" "Represents the Seat concept"
      container schedule "Schedule" "Entity" "Represents the Schedule concept"
      container employee "Employee" "Entity" "Represents the Employee concept"
      container station "Station" "Entity" "Represents the Station concept"
      customer -> ticket "relatesTo"
      ticket -> train "relatesTo"
      train -> flight "relatesTo"
      flight -> payment "relatesTo"
      payment -> reservation "relatesTo"
      reservation -> seat "relatesTo"
      seat -> schedule "relatesTo"
      schedule -> employee "relatesTo"
      employee -> station "relatesTo"
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