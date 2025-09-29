workspace "University Portal" "Modeled as entity containers" {
  model {
    softwareSystem uni "University Portal System" {
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
      student -> course "enrollsIn"
      professor -> course "teaches"
      course -> department "offeredBy"
      course -> assignment "has"
      assignment -> grade "gradedAs"
      student -> assignment "submits"
      student -> exam "takes"
      exam -> course "for"
      grade -> exam "awardedFor"
      library -> course "provides"
      student -> library "borrowsFrom"
      schedule -> course "allocates"
      schedule -> professor "assignedTo"
      student -> schedule "follows"
      club -> department "belongsTo"
      student -> club "joins"
    }
  }
  views {
    systemContext uni "University Context" {
      include *
      autoLayout lr
    }
    container uni "University Entities" {
      include *
      autoLayout lr
    }
    theme default
  }
}