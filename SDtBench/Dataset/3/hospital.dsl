workspace "Hospital Management" "Modeled as entity containers" {
  model {
    softwareSystem hospital "Hospital System" {
      container patient "Patient" "Entity" "Represents the Patient concept"
      container doctor "Doctor" "Entity" "Represents the Doctor concept"
      container nurse "Nurse" "Entity" "Represents the Nurse concept"
      container appointment "Appointment" "Entity" "Represents the Appointment concept"
      container prescription "Prescription" "Entity" "Represents the Prescription concept"
      container pharmacy "Pharmacy" "Entity" "Represents the Pharmacy concept"
      container ward "Ward" "Entity" "Represents the Ward concept"
      container labtest "LabTest" "Entity" "Represents the LabTest concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      container insurance "Insurance" "Entity" "Represents the Insurance concept"
      patient -> appointment "schedules"
      appointment -> doctor "with"
      appointment -> nurse "assistedBy"
      appointment -> prescription "resultsIn"
      prescription -> pharmacy "dispensedBy"
      patient -> ward "admittedTo"
      nurse -> ward "assignedTo"
      doctor -> labtest "orders"
      labtest -> patient "for"
      pharmacy -> invoice "generates"
      invoice -> patient "generatedFor"
      invoice -> labtest "covers"
      invoice -> prescription "covers"
      insurance -> invoice "covers"
      patient -> insurance "holds"
    }
  }
  views {
    systemContext hospital "Hospital Context" {
      include *
      autoLayout lr
    }
    container hospital "Hospital Entities" {
      include *
      autoLayout lr
    }
    theme default
  }
}