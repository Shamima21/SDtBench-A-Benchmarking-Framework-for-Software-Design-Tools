workspace "Social Media App" "Modeled as entity containers" {
  model {
    softwareSystem sys "Social Media App" {
      container user "User" "Entity" "Represents the User concept"
      container post "Post" "Entity" "Represents the Post concept"
      container comment "Comment" "Entity" "Represents the Comment concept"
      container like "Like" "Entity" "Represents the Like concept"
      container share "Share" "Entity" "Represents the Share concept"
      container message "Message" "Entity" "Represents the Message concept"
      container group "Group" "Entity" "Represents the Group concept"
      container event "Event" "Entity" "Represents the Event concept"
      container notification "Notification" "Entity" "Represents the Notification concept"
      container profile "Profile" "Entity" "Represents the Profile concept"
      user -> post "relatesTo"
      post -> comment "relatesTo"
      comment -> like "relatesTo"
      like -> share "relatesTo"
      share -> message "relatesTo"
      message -> group "relatesTo"
      group -> event "relatesTo"
      event -> notification "relatesTo"
      notification -> profile "relatesTo"
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