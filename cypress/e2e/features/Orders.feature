Feature: Orders Dashboard

As a registered customer, I want to view the order insights so I can have a better understanding of my business

Background:
  Given I have logged into Metabase

  
  #1
Scenario: Viewing Orders Dashboard
  Given I opened Metabase Homepage
  Then the page displays 'Try out these sample x-rays to see what Metabase can do'
  And multiple x-ray options are displayed 

  #2
Scenario: Navigate to Orders Dashboard
  Given I am on Metabase Homepage
  When I click on 'A summary of Orders'
  Then the page redirects to Orders Dashboard

  #3
Scenario: View title on Orders Dashboard
  Given I am on Orders Dashboard
  Then I can view It looks like your Orders table has transactions, so here's a look at them

  #4
Scenario: View Transactions on Orders Dashboard
  Given Orders Dashboard is opened
  Then I can view How these transactions are distributed

  #5
Scenario: View Multiple Graphs on Orders Dashboard
  Given I am on the orders dashboard
  When I can view How the transactions are distributed
  Then I can see different graphs


#Scenario: View 'Category' Filter on Orders Dashboard 
  #Given I am on the Orders Dashboard
  #And I can view multiple filters
  #When I click the "Category" dropdown button
  #Then I can view a list of product categories
  #5
#Scenario: Use 'Category' Filter on Orders Dashboard
 # Given I am on the Orders Dashboard
  #And I can view multiple filters
  #When I click the "Category" dropdown button
  #And select "Gizmo" from the dropdown menu
  #And click on "Add filter"
  #Then the page updates to show me data of "Gizmo" Orders