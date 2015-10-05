Feature: Search Function


Scenario: All the main menu
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Home"
When I click link "Search"
When I click link "All Articles To be Analysed"
When I click link "All Articles Being Analysed"
When I click link "All Users"
When I click link "Sign Out"

Scenario: Search Artile1
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Search"
When I select option "Authors" with "selectPara"
When I find ".//*[@id='selectTr']/td/select[2]" select "Equals"
Then I click button "Advanced Search"

Scenario: Search Artile2
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Search"
When I select option "Abstract" with "selectPara"
When I find ".//*[@id='selectTr']/td/select[2]" select "Smaller Than"
Then I click button "Advanced Search"