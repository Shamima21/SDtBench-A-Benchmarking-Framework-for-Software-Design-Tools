workspace "Large E-commerce Platform" "Entity-level model" {

  model {
    user = person "User" "A shopper interacting with the platform"

    ecommerce = softwareSystem "E-commerce Platform" "Handles browsing, checkout, order fulfillment, and business operations" {

      cCustomer    = container "Customer"    "Represents the customer"
      cProduct     = container "Product"     "Represents a sellable item"
      cCategory    = container "Category"    "Represents a product category"
      cOrder       = container "Order"       "Represents a purchase order"
      cPayment     = container "Payment"     "Represents a payment record"
      cInvoice     = container "Invoice"     "Represents a billing document"
      cReview      = container "Review"      "Represents a product review"
      cCart        = container "Cart"        "Represents a shopping cart"
      cShipment    = container "Shipment"    "Represents delivery and logistics"
      cSupplier    = container "Supplier"    "Represents a supplier of products"
      cReturn      = container "Return"      "Represents a product return"
      cRefund      = container "Refund"      "Represents a refund transaction"
      cEmployee    = container "Employee"    "Represents platform staff"
      cPromotion   = container "Promotion"   "Represents discounts and campaigns"
      cWarehouse   = container "Warehouse"   "Represents stock storage and logistics"
      cStock       = container "Stock"       "Represents inventory units"
      cLoyalty     = container "LoyaltyCard" "Represents customer loyalty points"
      cNotification = container "Notification" "Represents system notifications"
      cReport      = container "Report"      "Represents analytics or operational report"
      cAnalytics   = container "Analytics"   "Represents business intelligence and analysis"

      // Core shopping interactions
      cCustomer -> cCart       "owns"
      cCustomer -> cOrder      "places"
      cCustomer -> cReview     "writes"
      cCustomer -> cLoyalty    "earns/redeems"
      cCustomer -> cNotification "receives"

      cCart     -> cProduct    "contains"
      cOrder    -> cProduct    "includes"
      cOrder    -> cInvoice    "generates"
      cOrder    -> cPayment    "settledBy"
      cOrder    -> cShipment   "deliveredVia"
      cOrder    -> cPromotion  "applies"

      // Product domain
      cProduct  -> cSupplier   "providedBy"
      cProduct  -> cCategory   "categorizedAs"
      cProduct  -> cStock      "trackedIn"
      cReview   -> cProduct    "about"

      // After-sales
      cReturn   -> cOrder      "linkedTo"
      cRefund   -> cReturn     "issuedFor"

      // Operations
      cWarehouse -> cStock     "stores"
      cEmployee  -> cOrder     "manages"
      cEmployee  -> cReturn    "processes"
      cEmployee  -> cRefund    "approves"

      // Reporting and analytics
      cReport    -> cAnalytics "summarizes"
      cAnalytics -> cReport    "generates"
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
