Feature: Reviews Dashboard

As a registered customer, I want to view the reviews to have have a better understanding of my business

Background:
  Given I am logged into Metabase
  
Scenario: Viewing Reviews Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "A glance at Reviews"
  Then the page redirects to Reviews Dashboard
  And displays "Here's a quick look at your Reviews table"

  #3
  Given I am on the Reviews Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  Then I can view a list of data options

  #5
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  And select Today from the dropdown menu
  Then the page updates to show me filtered data

  #6
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  Then I can view a dropdown menu with different category options

  #7
  Given I am on the Reviews Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  And I select "Gadget"
  And click on "Add filter"
  Then the page updates to show me data of "Gadget" Orders

  #8
  Given I am on the Reviews Dashboard
  Then I can view a section titled "Summary"

  #9
  Given I am on the Reviews Dashboard
  And I can view a button on top
  When I click the "Save This" button
  Then the page display "Your Dashboard Was Saved See It" 

  #10
  Given I am on the Reviews Dashboard
  And I can view a button at bottom
  When I click the "See More About This" button
  Then the page redirects to Show All Reviews Dashboard
  And displays "Here's a quick look at your Reviews table"