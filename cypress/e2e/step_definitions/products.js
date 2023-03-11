import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { loginPage } from "@pages/LoginPage";
import { productsPage } from "@pages/ProductsPage";

Given("I am logged into Metabase", () => {
  cy.visit("/");
  loginPage.submitLogin("mfk654@gmail.com", "test123!");
});

Given("I open Metabase Homepage", () => {
  productsPage.homepage();
});

When("I click on Products", () => {
  productsPage.selectProducts();
});

Then(
  "the page displays 'Try out these sample x-rays to see what Metabase can do.'",
  () => {
    productsPage.xrayText();
  }
);

Then("multiple x-ray options exist", () => {
  productsPage.multipleOptions();
});

Then("the page redirects to Products Dashboard", () => {
  cy.xpath("//h2[@class='text-wrap mr2']");
});

Given("there is a section titled 'How these Products are distributed'", () => {
  productsPage.productGraphs();
});

Then("I can view multiple graphs", () => {
  productsPage.multipleGraphs();
});

Then("I can view a section titled 'Summary'", () => {
  cy.xpath("//h1[normalize-space()='Summary']");
});

Then("the total available Products", () => {
  productsPage.availableProducts();
});

Given("I can view the 'Save this' button", () => {
  productsPage.saveButtonExists();
});

Then("I can save the dashboard", () => {
  productsPage.clickSave();
});
