When /^I view webpage "([^"]*)"$/ do |uri|
  @stdout = File.join(@tmp_root, 'webpage.html')
  File.open(@stdout, "w") { |file| file << open(uri).read }
end
