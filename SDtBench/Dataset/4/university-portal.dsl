workspace "University Portal" "Modeled as entity containers" {
  model {
    softwareSystem sys "University Portal" {
      container student "Student" "Entity" "Represents the Student concept"
      container course "Course" "Entity" "Represents the Course concept"
      container professor "Professor" "Entity" "Represents the Professor concept"
      container department "Department" "Entity" "Represents the Department concept"
      container exam "Exam" "Entity" "Represents the Exam concept"
      container grade "Grade" "Entity" "Represents the Grade concept"
      container assignment "Assignment" "Entity" "Represents the Assignment concept"
      container library "Library" "Entity" "Represents the Library concept"
      container schedule "Schedule" "Entity" "Represents the Schedule concept"
      container club "Club" "Entity" "Represents the Club concept"
      student -> course "relatesTo"
      course -> professor "relatesTo"
      professor -> department "relatesTo"
      department -> exam "relatesTo"
      exam -> grade "relatesTo"
      grade -> assignment "relatesTo"
      assignment -> library "relatesTo"
      library -> schedule "relatesTo"
      schedule -> club "relatesTo"
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