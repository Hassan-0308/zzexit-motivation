class LoginPage {
  elements = {
    usernameInput: () => cy.get("#1"),
    passwordInput: () => cy.get("#2"),
    loginBtn: () => cy.xpath("//button[@title='Sign in']"),
  };

  submitLogin(username, password) {
    this.elements.usernameInput().type(username);
    this.elements.passwordInput().type(password);
    this.elements.loginBtn().click();
  }
}

export const loginPage = new LoginPage();
