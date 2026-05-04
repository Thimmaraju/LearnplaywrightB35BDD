Feature: Verify Add employee functionality

  Add employee functionality avaialable for only Admin.

Background: Navigate to Add Emp page 
    Given User Launch the application
    Then Orange HRM logo should be visible
    When User Enter Username as "Admin" and Password as "admin123"
    And  User clicks on login button
    Then User should be navigated to Dashboard page
    When User clicks on PIM Menu
    And User clicks on add employee submenu

  Scenario Outline: Verify Add employee with Mandatory Details
    And User enter firstname "<firstname>" and Lastname as "<lastname>"
    And User clicks on Save button
    Then User Employee should be created
    Examples:
      | firstname | lastname |
      | Sangeetha | abc      |
      | Shashi    | Kumar    |
      | Sainath   | Reddy    |


  Scenario: Verify Add employee with Mandatory Details and JPG file upload
    And User enter firstname "Raju" and Lastname as "G"
    And User upload JPG file less the 1 MB
    And User clicks on Save button
    Then User Employee should be created

# Scenario: Verify Add employee with Mandatory Details and PNG file upload
#   And User enter firstname "Sangeetha" and Lastname as "G"
#   #And User upload PNG file less the 1 MB
#   And User clicks on Save button
#   Then User Employee should be created

# Scenario: Verify Add employee with Mandatory Details and GIF file upload
#   And User enter firstname "Sangeetha" and Lastname as "G"
#   #And User upload GIF file less the 1 MB
#   And User clicks on Save button
#   Then User Employee should be created
