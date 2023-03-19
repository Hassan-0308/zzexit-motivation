Feature: People Dashboard

As a registered customer, I want to view the people insights so I can have a better understanding of my business.

Background:
  Given I am logged into Metabase

#1
Scenario: Viewing People Dashboard
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

#2
Scenario: Navigate to People Dashboard
  Given I open Metabase Homepage
  When I click on "A summary of Peoples"
  Then the page redirects to Peoples Dashboard
  And displays "Here's an overview of the people in your People table"

#3
Scenario: View Filters on People Dashboard
  Given I am on the Peoples Dashboard
  Then I can view multiple filters

#4
Scenario: View 'City' filter on People Dashboard
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "City" dropdown button
  Then I can enter a city name

#5
Scenario: Use 'City' filter on People Dashboard
  Given I am on the Peoples Dashboard
  And I can view multiple filters
  When I click the "City" dropdown button
  And enter "New Albany" in the search bar
  And click on "Add filter"
  Then the page updates to show me people data from New Albany

#6
Scenario: View 'Overview' section on People Dashboard
  Given I am on the Peoples Dashboard
  Then I can view a section titled "Overview"


