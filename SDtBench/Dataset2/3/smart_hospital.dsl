workspace "Smart Hospital" "Modeled as entity containers" {
  model {
    softwareSystem hospital "Smart Hospital System" {
      container patient "Patient" "Entity" "Represents the Patient concept"
      container doctor "Doctor" "Entity" "Represents the Doctor concept"
      container nurse "Nurse" "Entity" "Represents the Nurse concept"
      container ward "Ward" "Entity" "Represents the Ward concept"
      container appointment "Appointment" "Entity" "Represents the Appointment concept"
      container surgery "Surgery" "Entity" "Represents the Surgery concept"
      container prescription "Prescription" "Entity" "Represents the Prescription concept"
      container labtest "LabTest" "Entity" "Represents the LabTest concept"
      container pharmacy "Pharmacy" "Entity" "Represents the Pharmacy concept"
      container invoice "Invoice" "Entity" "Represents the Invoice concept"
      container insurance "Insurance" "Entity" "Represents the Insurance concept"
      container ambulance "Ambulance" "Entity" "Represents the Ambulance concept"
      container device "Device" "Entity" "Represents the Device concept"
      container record "Record" "Entity" "Represents the Record concept"
      container billing "Billing" "Entity" "Represents the Billing concept"
      container emergency "Emergency" "Entity" "Represents the Emergency concept"
      container department "Department" "Entity" "Represents the Department concept"
      container staff "Staff" "Entity" "Represents the Staff concept"
      container schedule "Schedule" "Entity" "Represents the Schedule concept"
      container room "Room" "Entity" "Represents the Room concept"
      patient -> appointment "schedules"
      appointment -> doctor "with"
      appointment -> nurse "assistedBy"
      appointment -> surgery "mayLeadTo"
      surgery -> schedule "scheduledVia"
      surgery -> doctor "performedBy"
      patient -> ward "admittedTo"
      patient -> room "assignedTo"
      room -> ward "partOf"
      doctor -> prescription "prescribes"
      prescription -> pharmacy "dispensedBy"
      doctor -> labtest "orders"
      labtest -> patient "for"
      ambulance -> emergency "transportsTo"
      emergency -> patient "triages"
      device -> patient "monitors"
      device -> department "managedBy"
      record -> patient "records"
      record -> appointment "includes"
      record -> surgery "includes"
      record -> labtest "includes"
      record -> prescription "includes"
      billing -> invoice "generates"
      invoice -> patient "issuedFor"
      insurance -> invoice "covers"
      billing -> patient "billedTo"
      department -> staff "employs"
      staff -> department "assignedTo"
      schedule -> doctor "allocatedFor"
      schedule -> nurse "allocatedFor"
      schedule -> room "reserves"
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