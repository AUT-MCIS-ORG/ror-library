Feature: Filter Function


Scenario: Add filter 
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Search"
When I select option "Document Title" with "selectPara"
When I find ".//*[@id='selectTr']/td/select[2]" select "Contains"
When I find ".//*[@id='selectTr']/../tr[1]/td[2]/input[1]" fill in "title1"
When I click button "addSelect"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[1]/select[1]" select "And"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[1]" select "Authors"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[2]" select "Equals"
When I find ".//*[@id='selectTr']/../tr[2]/td[2]/input[1]" fill in "Allen"
When I click button "Click me to search"
When I wait "5" seconds
#Then Save Page

Scenario: Remove Filter
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Search"
When I select option "Document Title" with "selectPara"
When I find ".//*[@id='selectTr']/td/select[2]" select "Contains"
When I find ".//*[@id='selectTr']/../tr[1]/td[2]/input[1]" fill in "title1"
When I click button "addSelect"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[1]/select[1]" select "And"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[1]" select "Authors"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[2]" select "Equals"
When I find ".//*[@id='selectTr']/../tr[2]/td[2]/input[1]" fill in "Allen"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/input[2]" click
When I click button "Click me to search"
When I wait "5" seconds
#Then Save Page

Scenario: Save search condition
Given I am on the login page
When I click link "Log In"
And I fill in "user_email" with "admin@serler.com"
And I fill in "user_password" with "password"
And I check checkbox "user_remember_me"
Then I click button "Log in"
When I click link "Search"
When I select option "Document Title" with "selectPara"
When I find ".//*[@id='selectTr']/td/select[2]" select "Contains"
When I find ".//*[@id='selectTr']/../tr[1]/td[2]/input[1]" fill in "title1"
When I click button "addSelect"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[1]/select[1]" select "And"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[1]" select "Authors"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/select[2]" select "Equals"
When I find ".//*[@id='selectTr']/../tr[2]/td[2]/input[1]" fill in "Allen"
When I find ".//*[@id='selectTable']/tbody/tr[2]/td[2]/input[2]" click
When I click button "Click me to search"
When I wait "5" seconds
When I find ".//*[@id='example_wrapper']/div[1]/a[3]" click
When I wait "2" seconds
#Then Save Page
When I find ".//*[@id='name']" fill in "Search1"
When I wait "2" seconds
#Then Save Page
#When I find "html/body/div[4]/div[3]/div/button[1]" click
