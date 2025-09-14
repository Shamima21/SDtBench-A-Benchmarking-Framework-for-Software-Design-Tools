workspace "E-commerce Checkout" "Modeled as entity containers" {
  model {
    softwareSystem ecommerce "E-commerce Platform" {
      container customer "Customer" "Entity" "Represents the Customer concept"
      container order "Order" "Entity" "Represents the Order concept"
      container product "Product" "Entity" "Represents the Product concept"
      container cart "Cart" "Entity" "Represents the Cart concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      container payment "Payment" "Entity" "Represents the Payment concept"
      container shipping "Shipping" "Entity" "Represents the Shipping concept"
      container supplier "Supplier" "Entity" "Represents the Supplier concept"
      container category "Category" "Entity" "Represents the Category concept"
      container review "Review" "Entity" "Represents the Review concept"
      customer -> order "places"
      customer -> cart "owns"
      cart -> product "contains"
      order -> product "includes"
      order -> invoice "generates"
      order -> payment "settledBy"
      order -> shipping "deliveredVia"
      product -> supplier "providedBy"
      product -> category "categorizedAs"
      review -> product "about"
      customer -> review "writes"
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