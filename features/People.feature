Feature: People Dashboard

As a registered customer, I want to view the people insights so I can have a better understanding of my business.

Background:
  Given I am logged into Metabase

Scenario: Viewing People Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "A summary of Peoples"
  Then the page redirects to Peoples Dashboard
  And displays "Here's an overview of the people in your People table"

  #3
  Given I am on the Peoples Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "City" dropdown button
  Then I can enter a city name

  #5
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "City" dropdown button
  And enter "New Albany" in the search bar
  And click on "Add filter"
  Then the page updates to show me people data from New Albany

  #6
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  Then I can view a dropdown menu with different social platforms

  #7
  Given I am on the Accounts Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  And I select "Affiliate"
  And click on "Add filter"
  Then the page is updated with the filtered data

  #8
  Given I am on the Peoples Dashboard
  Then I can view a section titled "Overview"

  #9
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "State" dropdown button
  Then I view list of states

  #10
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "State" dropdown button
  And select "IL" from the options
  And click on "Add filter"
  Then the page updates to show me people data from IL state
