Feature: Orders Dashboard

As a registered customer, I want to view the order insights so I can have a better understanding of my business

Background:
  Given I am logged into Metabase
  
Scenario: Viewing Orders Dashboard

  #1
  Given I open Metabase Homepage
  Then the page displays "Try out these sample x-rays to see what Metabase can do."
  And multiple x-ray options exist

  #2
  Given I open Metabase Homepage
  When I click on "A summary of Orders"
  Then the page redirects to Orders Dashboard
  And displays "It looks like your Orders table has transactions, so here's a look at them"

  #3
  Given I am on the Orders Dashboard
  Then I can view multiple filters

  #4
  Given I am on the Orders Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  Then I can view a list of product categories

  #5
  Given I am on the Orders Dashboard
  And I can view multiple filters
  When I click the "Category" dropdown button
  And select "Gizmo" from the dropdown menu
  And click on "Add filter"
  Then the page updates to show me data of "Gizmo" Orders

  #6
  Given I am on the Orders Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  Then I can view a list of Social Media platforms

  #7
  Given I am on the Orders Dashboard
  And I can view multiple filters
  When I click the "Source" dropdown button
  And select "Twitter" from the dropdown menu
  And click on "Add filter"
  Then the page updates to show me filtered data

  #8
  Given I am on the Orders Dashboard
  Then I can view a section titled "Overview"
  And How these transactions are distributed
  And Where these transactions happened

  #9
  Given there is a section titled "How these transactions are distributed"
  Then I can view a graph titled "Average quantity per month"
  And I can view a graph titled "Sales per product"
  And I can view a graph titled "Sales for each product category"
  #10
  Given I am on the Orders Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar

  #10
  Given I am on the Orders Dashboard
  And I can view the "Save this" button
  When I click the "Save this" button
  Then the dashboard is saved and I can access it from sidebar