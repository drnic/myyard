Feature: Setup local vm yard

  @novagrant
  Scenario: Download a VM box from a local file AND initial setup for an application
    Given I have the required box file (separate download)
    When I run local executable "my" with arguments "download"
    Given I have a Rack application
    Then vagrant should have a "myyard" box
    When I run local executable "my" with arguments "setup"
    Then file "Vagrantfile" is created

  
  