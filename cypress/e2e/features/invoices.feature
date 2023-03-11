Feature: Invoices Dashboard

As a registered customer, I want to view Invoice metrics to have a better understanding of my business

Background:
  Given I am logged into Metabase

#1
Scenario: Navigate to Invoices Dashboard
  Given I open Metabase Homepage
  When I click on "A summary of Invoices"
  Then the page redirects to Invoices Dashboard
  And displays "Here's a quick look at your Invoices table"

#2
Scenario: View 'Country' Filter on Invoices Dashboard
  Given I am on the Invoices Dashboard
  And I can view multiple filters
  When I click the "Country" dropdown button
  Then I can view a list of country codes

#3
Scenario: View 'Summary' section on Invoices Dashboard
  Given I am on the Invoices Dashboard
  Then I can view a section titled "Summary"

#4
Scenario: Save Invoices Dashboard
  Given I am on the Invoices Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar