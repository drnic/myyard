When /^I view webpage "([^"]*)"$/ do |uri|
  @stdout = File.join(@tmp_path, 'webpage.html')
  exec "curl #{uri} > #{@stdout}"
end
