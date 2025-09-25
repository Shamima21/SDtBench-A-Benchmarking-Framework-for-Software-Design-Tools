workspace "Banking System" "Modeled as entity containers" {
  model {
    softwareSystem sys "Banking System" {
      container account "Account" "Entity" "Represents the Account concept"
      container customer "Customer" "Entity" "Represents the Customer concept"
      container transaction "Transaction" "Entity" "Represents the Transaction concept"
      container loan "Loan" "Entity" "Represents the Loan concept"
      container creditcard "CreditCard" "Entity" "Represents the CreditCard concept"
      container atm "ATM" "Entity" "Represents the ATM concept"
      container branch "Branch" "Entity" "Represents the Branch concept"
      container employee "Employee" "Entity" "Represents the Employee concept"
      container audit "Audit" "Entity" "Represents the Audit concept"
      container policy "Policy" "Entity" "Represents the Policy concept"
      account -> customer "relatesTo"
      customer -> transaction "relatesTo"
      transaction -> loan "relatesTo"
      loan -> creditcard "relatesTo"
      creditcard -> atm "relatesTo"
      atm -> branch "relatesTo"
      branch -> employee "relatesTo"
      employee -> audit "relatesTo"
      audit -> policy "relatesTo"
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