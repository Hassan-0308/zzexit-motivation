Feature: Accounts Dashboard

As a registered customer, I want to view the different Accounts metrics so I can feel more in control

Background:
  Given I am logged into Metabase
  
Scenario: Viewing Accounts Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "Some insights about Accounts"
  Then the page redirects to Accounts Dashboard
  And displays "Here's an overview of the people in your Accounts table"

  #3
  Given I am on the Accounts Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  Then I can view a list of data options

  #5
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  And select Today from the dropdown menu
  Then the page updates to show me filtered data

  #6
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  Then I can view a dropdown menu with different social platforms

  #7
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  And I select "Facebook"
  And click on "Apply filter"
  Then the page is updated with the filtered data

  #8
  Given I am on the Accounts Dashboard
  Then I can view a section titled "Overview"

  #9
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Plan" dropdown button
  And select "Premium"
  And click on Apply
  Then I can view Premium data

  #10
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Legacy Plan" dropdown button
  And select "true"
  And click on Apply
  Then I can view data of the chosen filter