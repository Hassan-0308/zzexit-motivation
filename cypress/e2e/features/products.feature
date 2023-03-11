Feature: Products Dashboard

As a registered customer, I want to view Products to have a better understanding of my business

Background:
  Given I am logged into Metabase

#1
Scenario: Viewing Products Dashboard
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

#2
Scenario: Navigate to Accounts Dashboard
  Given I open Metabase Homepage
  When I click on "A glance at Products"
  Then the page redirects to Products Dashboard
  And displays "Here's a quick look at your Products table"

#3
Scenario: View distribution graphs on Products Dashboard
  Given there is a section titled "How these Products are distributed"
  Then I can view a graph titled "Products by Rating"
  And I can view a graph titled "Products by Price"
  And I can view a graph titled "Products per Category"

#4
Scenario: View 'Summary' section on Products Dashboard
  Given I am on the Products Dashboard
  Then I can view a section titled "Summary"
  And the total available Products

#5
Scenario: Save Products Dashboard
  Given I am on the Products Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar