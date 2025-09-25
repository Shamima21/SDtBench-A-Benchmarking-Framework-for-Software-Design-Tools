workspace "Restaurant Ordering" "Modeled as entity containers" {
  model {
    softwareSystem sys "Restaurant Ordering" {
      container customer "Customer" "Entity" "Represents the Customer concept"
      container order "Order" "Entity" "Represents the Order concept"
      container menu "Menu" "Entity" "Represents the Menu concept"
      container item "Item" "Entity" "Represents the Item concept"
      container table "Table" "Entity" "Represents the Table concept"
      container chef "Chef" "Entity" "Represents the Chef concept"
      container waiter "Waiter" "Entity" "Represents the Waiter concept"
      container bill "Bill" "Entity" "Represents the Bill concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container feedback "Feedback" "Entity" "Represents the Feedback concept"
      customer -> order "relatesTo"
      order -> menu "relatesTo"
      menu -> item "relatesTo"
      item -> table "relatesTo"
      table -> chef "relatesTo"
      chef -> waiter "relatesTo"
      waiter -> bill "relatesTo"
      bill -> payment "relatesTo"
      payment -> feedback "relatesTo"
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