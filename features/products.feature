Feature: Products Dashboard

As a registered customer, I want to view Products to have a better understanding of my business

Background:
  Given I am logged into Metabase
  
Scenario: Viewing Products Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "A glance at Products"
  Then the page redirects to Products Dashboard
  And displays "Here's a quick look at your Products table"

  #3
  Given I am on the Products Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Products Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  Then I can view a list of product categories

  #5
  Given I am on the Products Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  And select "Gadget" from the dropdown menu
  And click on "Add filter"
  Then the page updates to show me data of "Gadget" products

  #6
  Given I am on the Products Dashboard
  And I can view multiple filters
  When I click the "Created At" dropdown button
  And select "Last Month" from the dropdown menu
  Then the page updates to show me filtered data

  #7
  Given there is a section titled "How these Products are distributed"
  Then I can view a graph titled "Products by Rating"
  And I can view a graph titled "Products by Price"
  And I can view a graph titled "Products per Category"

  #8
  Given I am on the Products Dashboard
  Then I can view a section titled "Summary"
  And the total available Products

  #9
  Given there is a section titled "How these Products are distributed"
  Then I can view a graph titled "New Products over time"
  And I can view a graph titled "Price over time"
  And I can view a graph titled "Weekdays when Products were added"

  #10
  Given I am on the Products Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar