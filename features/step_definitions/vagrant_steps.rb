Given /^I have the required box file \(separate download\)$/ do
  fixture_box_available!
end

Then /^vagrant should have a "([^"]*)" box$/ do |box|
  in_home_folder do
    boxes = `vagrant box list`
    boxes.should_not =~ /There are no installed boxes/
    boxes.should =~ /#{box}/
  end
end
