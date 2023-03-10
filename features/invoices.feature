Feature: Invoices Dashboard

As a registered customer, I want to view Invoice metrics to have a better understanding of my business

Background:
  Given I am logged into Metabase

Scenario: Viewing Invoices Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "A summary of Invoices"
  Then the page redirects to Invoices Dashboard
  And displays "Here's a quick look at your Invoices table"

  #3
  Given I am on the Invoices Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Invoices Dashboard
  And I can view multiple filters
  When I click the "Country" dropdown button
  Then I can view a list of country codes

  #5
  Given I am on the Invoices Dashboard
  And I can view multiple filters
  When I click the "Country" dropdown button
  And select "US" from the dropdown menu
  And click on "Add filter"
  Then the page updates to show me invoice metrics from USA

  #6
  Given I am on the Invoices Dashboard
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
  Given I am on the Invoices Dashboard
  Then I can view a section titled "Summary"

  #9
  Given I am on the Invoices Dashboard
  And I can view multiple filters
  When I click the "Plan" dropdown button
  And select "Premium"
  And click on Apply
  Then I can view Premium data

  #10
  Given I am on the Invoices Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar