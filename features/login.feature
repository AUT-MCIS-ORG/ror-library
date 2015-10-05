Feature: login page

  Scenario: Login with check remember me checkbox
    Given I am on the login page
    When I click link "Log In"
    And I fill in "user_email" with "admin@serler.com"
    And I fill in "user_password" with "password"
    And I check checkbox "user_remember_me"
    Then I click button "Log in"

  Scenario: Login without check remember me checkbox
    Given I am on the login page
    When I click link "Log In"
    And I fill in "user_email" with "admin@serler.com"
    And I fill in "user_password" with "password"
    Then I click button "Log in"

  Scenario: Sign up1
    Given I am on the login page
    When I click link "Log In"
    When I click link "Sign up"
    When I select option "Analyst" with "user_role"
    #Then I should see "Analyst"

  Scenario: Sign up2
    Given I am on the login page
    When I click link "Log In"
    When I click link "Sign up"
    When I select option "Administrator" with "user_role"
    #Then I should see "Administrator"

