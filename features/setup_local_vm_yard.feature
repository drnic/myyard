Feature: Setup local vm yard
  In order to reduce costs of app development
  As a developer or team leader
  I want a consistent, restorable virtual dev, test + CI environment

  Scenario: Initial setup for an application
    Given a Rack application
    When I run local executable "my" with arguments "setup"
    Then file "Vagrantfile" is created
