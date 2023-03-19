import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { loginPage } from "@pages/LoginPage";
import { ordersPage } from "@pages/OrderPage";

//Background
Given("I have logged into Metabase", () => {
    cy.visit("/");
    loginPage.submitLogin("hassan.naveed22D@gmail.com", "Hassan0308");
  });


//Test Case#1
Given("I opened Metabase Homepage", () => {
    ordersPage.homepage();
  });
  
Then(
      "the page displays 'Try out these sample x-rays to see what Metabase can do'",
      () => {
        ordersPage.xrayText();
      }
    );
Then("multiple x-ray options are displayed", () => {
    ordersPage.multipleOptions();
  });


//Test Case#2
Given("I am on Metabase Homepage", () =>{
    ordersPage.homepage();
  })
When("I click on 'A summary of Orders'", () => {
    ordersPage.selectOrders();
  });
Then("the page redirects to Orders Dashboard", () => {
  cy.xpath("//h2[@class='text-wrap mr2']");
});


//Test Case#3
Given("I am on Orders Dashboard", () =>{
  ordersPage.selectOrders();
})
Then("I can view It looks like your Orders table has transactions, so here's a look at them", () => {
  ordersPage.orderTitle
})


//Test Case#4
Given("Orders Dashboard is opened", () =>{
  ordersPage.selectOrders();

})
Then("I can view How these transactions are distributed", () => {
  ordersPage.transactionTitle();
})


//Test Case#5
Given("I am on the orders dashboard", () =>{
  ordersPage.selectOrders();

})
When("I can view How the transactions are distributed", () => {
  ordersPage.transactionTitle();
})
Then("I can see different graphs",()=>{
  ordersPage.multipleGraph
})
