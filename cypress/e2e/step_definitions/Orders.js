import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { loginPage } from "@pages/LoginPage";
import { ordersPage } from "@pages/OrderPage";


Given("I am logged into Metabase", () => {
    cy.visit("/");
    loginPage.submitLogin("hassan.naveed22D@gmail.com", "Hassan0308");
  });

Given("I open Metabase Homepage", () => {
    ordersPage.homepage();
  });
  
// When("I click on Products", () => {
//     ordersPage.selectOrders();
//   });