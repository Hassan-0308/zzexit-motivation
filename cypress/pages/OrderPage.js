class OrdersPage {
    elements = {
      metabaseIcon: () => cy.xpath("//img[@alt='Metabot']"),
      ordersButton: () =>
        cy.xpath(
          "/html/body/div[1]/div/div/main/div/div[3]/div/div[2]/a[3]/div[2]/span[2] "
        ),
      xrayText: () => cy.xpath("//div[@class='css-1w6z3k4 eepmtbi0']"),
      xrayOptions: () => cy.xpath("(//div[@class='css-19mt8zs ebvm73l6'])[1]"),
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
}
  
  export const ordersPage = new OrdersPage();
  