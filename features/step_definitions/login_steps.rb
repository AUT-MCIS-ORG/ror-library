Given /^I am on the login page$/ do
  visit "http://serler.herokuapp.com"
end

When /^I click link "([^"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I check checkbox "([^"]*)"$/ do |checkbox|
  check(checkbox)
end

When /^I select option "([^"]*)" with "([^"]*)"$/ do |option, select_box|
  select(option, :from=>select_box)
end

Then /^I click button "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end