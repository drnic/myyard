Feature: Setup local vm yard
  In order to reduce costs of app development
  As a developer or team leader
  I want a consistent, restorable virtual dev, test + CI environment

  Background:
    Given a Rack application
  
  Scenario: Initial setup for an application
    When I run local executable "my" with arguments "setup"
    Then file "Vagrantfile" is created
  
  Scenario: Download a VM box from a local file
    Given I have the required box file (separate download)
    When I run local executable "my" with arguments "download"
    Then vagrant should have a "myyard" box
  
  
  