workspace "Large E-commerce Platform" "Modeled as entity containers" {
  model {
    softwareSystem ecommerce "E-commerce Platform" {
      container customer "Customer" "Entity" "Represents the Customer concept"
      container product "Product" "Entity" "Represents the Product concept"
      container category "Category" "Entity" "Represents the Category concept"
      container order "Order" "Entity" "Represents the Order concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      container review "Review" "Entity" "Represents the Review concept"
      container cart "Cart" "Entity" "Represents the Cart concept"
      container shipment "Shipment" "Entity" "Represents the Shipment concept"
      container supplier "Supplier" "Entity" "Represents the Supplier concept"
      container return "Return" "Entity" "Represents the Return concept"
      container refund "Refund" "Entity" "Represents the Refund concept"
      container employee "Employee" "Entity" "Represents the Employee concept"
      container promotion "Promotion" "Entity" "Represents the Promotion concept"
      container warehouse "Warehouse" "Entity" "Represents the Warehouse concept"
      container stock "Stock" "Entity" "Represents the Stock concept"
      container loyaltycard "LoyaltyCard" "Entity" "Represents the LoyaltyCard concept"
      container notification "Notification" "Entity" "Represents the Notification concept"
      container report "Report" "Entity" "Represents the Report concept"
      container analytics "Analytics" "Entity" "Represents the Analytics concept"
      customer -> order "places"
      customer -> cart "owns"
      customer -> loyaltycard "holds"
      cart -> product "contains"
      order -> product "includes"
      order -> invoice "generates"
      order -> payment "settledBy"
      order -> shipment "shippedAs"
      order -> promotion "applies"
      product -> supplier "providedBy"
      product -> category "categorizedAs"
      product -> stock "trackedBy"
      product -> warehouse "storedIn"
      stock -> warehouse "keptAt"
      shipment -> customer "deliveredTo"
      shipment -> return "mayLeadTo"
      return -> refund "resultsIn"
      customer -> review "writes"
      review -> product "about"
      notification -> customer "informs"
      notification -> order "about"
      promotion -> product "appliesTo"
      employee -> warehouse "manages"
      employee -> report "creates"
      analytics -> order "aggregatesFrom"
      analytics -> product "aggregatesFrom"
      report -> analytics "summarizes"
    }
  }
  views {
    systemContext ecommerce "E-commerce Context" {
      include *
      autoLayout lr
    }
    container ecommerce "E-commerce Entities" {
      include *
      autoLayout lr
    }
    theme default
  }
}