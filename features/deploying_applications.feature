@wip
Feature: Deploying applications

  Background:
    Given I have the required box file (separate download)
    And I run local executable "my" with arguments "download"
    And I have a Rack application
    And I run local executable "my" with arguments "setup"
    
  Scenario: Initial deploy to single instance yard
    When I run local executable "my" with arguments "deploy"
    When I view webpage "http://localhost:3000"
    Then I should see "Hello World [development]"
  
  Scenario: Re-deploy to running VM
    Given I run local executable "my" with arguments "deploy"
    When  I run local executable "my" with arguments "deploy"
    When I view webpage "http://localhost:3000"
    Then I should see "Hello World [development]"
  
  Scenario: Deploy a specific Rack environment
    When I run local executable "my" with arguments "deploy production"
    When I view webpage "http://localhost:3000"
    Then I should see "Hello World [production]"
  
  Scenario: Shut down a specific Rack environment's VMs
    Given I run local executable "my" with arguments "deploy"
    When I run local executable "my" with arguments "destroy development"
    
  
  
  
  
  
  
