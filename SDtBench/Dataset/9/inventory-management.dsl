workspace "Inventory Management" "Modeled as entity containers" {
  model {
    softwareSystem sys "Inventory Management" {
      container product "Product" "Entity" "Represents the Product concept"
      container category "Category" "Entity" "Represents the Category concept"
      container supplier "Supplier" "Entity" "Represents the Supplier concept"
      container order "Order" "Entity" "Represents the Order concept"
      container shipment "Shipment" "Entity" "Represents the Shipment concept"
      container warehouse "Warehouse" "Entity" "Represents the Warehouse concept"
      container stock "Stock" "Entity" "Represents the Stock concept"
      container customer "Customer" "Entity" "Represents the Customer concept"
      container return "Return" "Entity" "Represents the Return concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      product -> category "relatesTo"
      category -> supplier "relatesTo"
      supplier -> order "relatesTo"
      order -> shipment "relatesTo"
      shipment -> warehouse "relatesTo"
      warehouse -> stock "relatesTo"
      stock -> customer "relatesTo"
      customer -> return "relatesTo"
      return -> invoice "relatesTo"
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