Given /^I am on the login page$/ do
  visit "http://localhost:3000"
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

When /^I find "([^"]*)" select "([^"]*)"$/ do |xpath1, option|
  find(:xpath, xpath1).select(option)
end

When /^I find "([^"]*)" click$/ do |xpath1|
  find(:xpath, xpath1).click
end

Then /^I capture UI "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I click button "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

