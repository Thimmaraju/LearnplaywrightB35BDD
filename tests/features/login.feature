Feature: Verify Login functionality 

Scenario: Verify Login with valid credentials 
  Given User Launch the application
  When User Enter Username as "Admin" and Password as "admin123"
  And  User clicks on login button 
  Then User should be navigated to Dashboard page 


Scenario: Verify Login with valid username and Invalid Password  
  Given User Launch the application
  When User Enter Username as "Admin" and Password as "jvhbre"
  And  User clicks on login button 
  Then User should get login error Message 


Scenario: Verify Login with Invalid username and valid Password  
  Given User Launch the application
  When User Enter Username as "efhbvfrh" and Password as "admin123"
  And  User clicks on login button 
  Then User should get login error Message 



Scenario: Verify Login with Invalid username and Invalid Password  
  Given User Launch the application
  When User Enter Username as "ihjgvfrheb" and Password as "jvhbre"
  And  User clicks on login button 
  Then User should get login error Message 

