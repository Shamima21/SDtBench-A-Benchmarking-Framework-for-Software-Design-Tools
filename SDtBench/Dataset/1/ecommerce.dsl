workspace "E-commerce Checkout" "Entity-level model following tutorial style" {

  model {
    user = person "User" "A shopper using the platform"

    ecommerce = softwareSystem "E-commerce Platform" "Handles browsing, checkout, and post-order flows" {

      cCustomer = container "Customer" "Represents the customer"
      cOrder    = container "Order"    "Represents a purchase order"
      cProduct  = container "Product"  "Represents a sellable item"
      cCart     = container "Cart"     "Represents a shopping cart"
      cInvoice  = container "Invoice"  "Represents a billing document"
      cPayment  = container "Payment"  "Represents a payment record"
      cShipping = container "Shipping" "Represents shipment/delivery info"
      cSupplier = container "Supplier" "Represents a product supplier"
      cCategory = container "Category" "Represents a product category"
      cReview   = container "Review"   "Represents a product review"

      // Relationships
      cCustomer -> cOrder    "places"
      cCustomer -> cCart     "owns"
      cCustomer -> cReview   "writes"

      cCart     -> cProduct  "contains"
      cOrder    -> cProduct  "includes"
      cOrder    -> cInvoice  "generates"
      cOrder    -> cPayment  "settledBy"
      cOrder    -> cShipping "deliveredVia"

      cProduct  -> cSupplier "providedBy"
      cProduct  -> cCategory "categorizedAs"

      cReview   -> cProduct  "about"
    }

    user -> ecommerce "Uses"
  }

  views {
    systemContext ecommerce sysCtx {
      include *
      autolayout lr
    }

    container ecommerce containerView {
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
        background "#f0f7ff"
        color "#000000"
        stroke "#6b8fd6"
      }
      relationship "Relationship" {
        routing Orthogonal
      }
    }
  }
}
