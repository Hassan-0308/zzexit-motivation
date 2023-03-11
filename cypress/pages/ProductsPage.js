class ProductsPage {
  elements = {
    metabaseIcon: () => cy.xpath("//img[@alt='Metabot']"),
    productsButton: () =>
      cy.xpath(
        "/html/body/div[1]/div/div/main/div/div[3]/div/div[2]/a[5]/div[2]/span[2]"
      ),
    xrayText: () => cy.xpath("//div[@class='css-1w6z3k4 eepmtbi0']"),
    xrayOptions: () => cy.xpath("(//div[@class='css-19mt8zs ebvm73l6'])[1]"),
    graphTitle: () =>
      cy.xpath("//h1[normalize-space()='How these Products are distributed']"),
    saveButton: () =>
      cy.xpath(
        "(//button[@class='Button ml-auto text-nowrap eyw0xx60 Button--success Button--borderless css-1q6qtcj emiw9oj2'])[1]"
      ),
  };
  homepage() {
    this.elements.metabaseIcon();
  }
  selectProducts() {
    this.elements.productsButton().click();
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
  productGraphs() {
    this.elements
      .graphTitle()
      .should("include.text", "How these Products are distributed");
  }
  multipleGraphs() {
    cy.xpath("//div[contains(text(),'Products by Rating')]");
    cy.xpath("//div[contains(text(),'Products by Price')]");
    cy.xpath("//div[contains(text(),'Products per Category')]");
  }
  availableProducts() {
    cy.xpath(
      "(//div[@class='fullscreen-normal-text fullscreen-night-text e129mq4f0 css-1snv4cg e19wb1qy0'])[1]"
    );
  }
  saveButtonExists() {
    this.elements
      .productsButton()
      .find("div")
      .find("div")
      .should("include.text", "Save this");
  }
  clickSave() {
    this.elements.saveButton().click();
  }
}

export const productsPage = new ProductsPage();
