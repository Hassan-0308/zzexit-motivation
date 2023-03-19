class OrdersPage {
    elements = {
      metabaseIcon: () => cy.xpath("//img[@alt='Metabot']"),
      ordersButton: () =>
        cy.xpath(
          "/html/body/div[1]/div/div/main/div/div[3]/div/div[2]/a[3]/div[2]/span[2]"
        ),
      xrayText: () => cy.xpath("//div[@class='css-1w6z3k4 eepmtbi0']"),
      xrayOptions: () => cy.xpath("(//div[@class='css-19mt8zs ebvm73l6'])[1]"),
      ordersTitle: () => cy.xpath("/html/body/div[1]/div/div/main/div/div[1]/div[1]/div/div/h2/span"),
      transactionsTitle: () => cy.xpath ("/html/body/div[1]/div/div/main/div/div[1]/div[2]/div[2]/div/div/div[4]/div/div/div/div/h1")
    };

    homepage() {
      this.elements.metabaseIcon();
    }
    selectOrders() {
      this.elements.ordersButton().click();
    }
    xrayText() {
      this.elements
        .xrayText()
        .should(
          "include.text",
          "Try out these sample x-rays to see what Metabase can do."
        );
    }
    multipleOptions() {
          this.elements.xrayOptions().find("a").its("length").should("be.gt", 1);
        } 
    orderTitle() {
      cy.xpath("//h2[normalize-space()='It looks like your Orders table has transactions, so here's a look at them']");
    // this.elements
    //   .ordersTitle()
    //   .should("include.text", "");
  }
  transactionTitle(){
    // this.elements
    // .transactionsTitle()
    // .should("include.text", "How these transactions are distributed")
    cy.xpath("//h1[normalize-space()='How these transactions are distributed']")
  }
  multipleGraph(){
    cy.xpath("//div[contains(text(),'Average quantity per month')]")
    cy.xpath("//div[contains(text(),'Sales per product)]")
    cy.xpath("//div[contains(text(),'Sales for each product category')]")
  }
}
  
  export const ordersPage = new OrdersPage();
  