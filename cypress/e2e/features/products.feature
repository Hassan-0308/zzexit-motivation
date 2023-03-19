Feature: Products Dashboard

As a registered customer, I want to view Products to have a better understanding of my business

#Background:
  #Given I am logged into Metabase

#1
#Scenario: Viewing Products Dashboard
  #Given I open Metabase Homepage
  #Then the page displays 'Try out these sample x-rays to see what Metabase can do.'
  #And multiple x-ray options exist

#2
#Scenario: Navigate to Products Dashboard
  #Given I open Metabase Homepage
  #When I click on Products
  #Then the page redirects to Products Dashboard

Background:
  Given I am logged into Metabase
  And I open Metabase Homepage
  And I click on Products

#3
#Scenario: View distribution graphs on Products Dashboard
  #Given there is a section titled 'How these Products are distributed'
  #Then I can view multiple graphs

#4
#Scenario: View 'Summary' section on Products Dashboard
  #Then I can view a section titled 'Summary'
  #And the total available Products

  #5
#Scenario: Save Products Dashboard
  #Given I can view the 'Save this' button
  #Then I can save the dashboard

  #6
Scenario: View Product-timeline graphs on Products Dashboard
  Given there is a section titled 'These Products across time'
  Then I can view multiple Product-timeline graphs
