Feature: Reviews Dashboard

As a registered customer, I want to view the reviews to have have a better understanding of my business

Background:
  Given I am logged into Metabase
 
#1 
Scenario: Viewing Reviews Dashboard
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

#2
Scenario: Navigate to Reviews Dashboard
  Given I open Metabase Homepage
  When I click on "A glance at Reviews"
  Then the page redirects to Reviews Dashboard
  And displays "Here's a quick look at your Reviews table"

#3
Scenario: View Filters on Reviews Dashboard 
  Given I am on the Reviews Dashboard
  Then I can view multiple filters

#4
Scenario: View 'Created At' Filter on Reviews Dashboard
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  Then I can view a list of data options

#5
Scenario: Use 'Created At' Filter on Reviews Dashboard
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  And select Today from the dropdown menu
  Then the page updates to show me filtered data

#6
Scenario: View 'Summary' Section on Reviews Dashboard
  Given I am on the Reviews Dashboard
  Then I can view a section titled "Summary"

