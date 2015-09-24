Feature: Search Function

Scenario: Search article1
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click button "Search"
When I select option "Authors" with "Condition1"
When I select option "Equals" with "Condition2"
Then I click button "Advanced Search"