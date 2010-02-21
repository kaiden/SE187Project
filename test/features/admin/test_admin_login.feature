Feature: Administration Interface
  As an administrator
  I want a web based interface to configure my server
  In order to configure my installation easily
  
  Background: 
    Given I haven't installed Glassfish
    And I open my answer file
    And I set "Admin User Name" to "Adam"
    And I set "Admin Password" to "password"
    And I set "Port" to "4848"
    And I save my answer file
    And I install Glassfish
    And I start the Glassfish server
    
  Scenario: Login to the interface
    When I open the url "http://localhost:4848/admin"
    And I fill in "Name" with "Adam"
    And I fill in "Password" with "password"
    Then I press "Login"
    Then I should be on the index page