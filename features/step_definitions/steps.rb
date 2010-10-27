Given /^I am on the Google Homepage$/ do
  @browser.open "/"
end

When /^I enter a "([^\"]*)"$/ do |term|
  @browser.type "q", term
  @browser.click "btnG"
end

Then /^the search results should include "([^\"]*)"$/ do |result|
  source = @browser.get_html_source
  raise Exception unless source.include?(result)
end


Given /^I am on the "([^\"]*)" qunit test page$/ do |widget|
  @browser.open "/Code/Javascript/jquery-ui/tests/unit/#{widget}/#{widget}.html"
end

Given /^the qunit tests should pass/ do
  value = ""
  60.times {
    value = @browser.get_attribute("//*[@id='qunit-banner']@class") rescue ""
    break if value != ""
    sleep 1
  }
  raise Exception unless value == "qunit-pass"
  #60.times { break if ("" != @selenium.get_attribute("//*[@id='qunit-banner']@class") rescue false); sleep 1 }
  #raise Exception unless @selenium.get_attribute("//*[@id='qunit-banner']@class") == 'qunit-pass'
end
