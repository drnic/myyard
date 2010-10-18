@wip
Feature: Deploying applications

  Background:
    Given I have the required box file (separate download)
    And I run local executable "my" with arguments "download"
    And I have a Rack application
    And I run local executable "my" with arguments "setup"
    
  Scenario: Initial deploy to single instance yard
    When I run local executable "my" with arguments "deploy"
    Then I should see "localhost:3000"
    When I view webpage "http://localhost:3000"
    Then I should see "Hello World"
  
  Scenario: Re-deploy to running VM
    Given I have the yard of VMs running
    When I run local executable "my" with arguments "deploy"
    Then I should see "localhost:3000"
    When I view webpage "http://localhost:3000"
    Then I should see "Hello World"
  
  
  
  
