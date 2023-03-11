import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import "resize-observer-polyfill";

Given("I am logged into Metabase", () => {
  cy.visit("/");
  cy.get("#1").type("mfk654@gmail.com");
  cy.get("#2").type("alpha890");
  cy.xpath("//button[@title='Sign in']").click();
});

Given("I open Metabase Homepage", () => {
  cy.xpath("//img[@alt='Metabot']");
});

When("I click on Products", () => {
  cy.xpath(
    "/html/body/div[1]/div/div/main/div/div[3]/div/div[2]/a[5]/div[2]/span[2]"
  ).click();
  cy.wait(2000);
});

Then(
  "the page displays 'Try out these sample x-rays to see what Metabase can do.'",
  () => {
    cy.xpath("//div[@class='css-1w6z3k4 eepmtbi0']");
  }
);

Then("multiple x-ray options exist", () => {
  cy.xpath("(//div[@class='css-19mt8zs ebvm73l6'])[1]");
});

Then("the page redirects to Products Dashboard", () => {
  cy.xpath("//h2[@class='text-wrap mr2']");
});

Given("there is a section titled 'How these Products are distributed'", () => {
  cy.xpath("//h1[normalize-space()='How these Products are distributed']");
});

Then("I can view multiple graphs", () => {
  cy.xpath("//div[contains(text(),'Products by Rating')]");
  cy.xpath("//div[contains(text(),'Products by Price')]");
  cy.xpath("//div[contains(text(),'Products per Category')]");
});
