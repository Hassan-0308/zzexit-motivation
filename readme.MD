# Tools Used

**UI Testing:** Cypress

**API Testing:** Jest

**Performance Testing**: K6

**Unit Testing**: TBD

**Linter**: ESLint

## Linters

Linters are tools that analyze code for errors, style issues, and other potential problems. There are several linters available for JavaScript that help developers write more reliable, efficient, and maintainable code.

**ESLint**: ESLint is a popular linter that provides a wide range of configuration options and plugins. It supports modern JavaScript syntax, can be integrated with most editors, and has a robust API for customizing its rules.

**JSLint**: JSLint is a strict linter that enforces a specific set of rules to ensure code quality. It was developed by Douglas Crockford, one of the early proponents of JavaScript, and provides a simple command-line interface.

**JSHint**: JSHint is a more flexible linter than JSLint that allows users to customize their rules. It has a comprehensive list of options, supports various coding styles, and provides detailed error messages.

**StandardJS**: StandardJS is a linter that enforces a strict set of style guidelines, making it easier for teams to maintain consistent code. It has a minimal configuration, supports modern syntax, and is easy to integrate with most editors.

**Static Application Security Testing (SAST)** is a type of security testing that examines an application's source code for vulnerabilities. SAST tools analyze the code for potential security flaws and report them to developers, who can then address them before deploying the application. SAST tools can identify a range of security issues, including SQL injection, cross-site scripting (XSS), and buffer overflows. By detecting these vulnerabilities early in the development cycle, SAST helps ensure that the application is secure before it is released to the public.

**Coverity Static Application Security Testing** is a SAST tool, its features are as below:

It finds critical defects and security weaknesses in code as it’s written
It provides full path coverage, ensuring that every line of code and every potential execution path is tested.
It provides highly accurate analysis, so developers don’t waste time on a large volume of false positives.


## Meeting Notes

### Phase 1 and Phase 2 Clickup

### Phase 3

**Meeting 1**
- reviewed Notion requirements
- review Metabase project configs
- review Metabase testing scenarios

**Meeting 2**
- agreement over testing frameworks (Jest, Cypress, K6, react-testing-framework)
- review relevant documentation of testing frameworks
- figure out how to implement Unit Tests in Metabase
- select modules/user stories to automate (Fahad and Hasan)

**Meeting 3**
- overview existing implementation
- regroup if needed


## Exploring existing UI & API automation framework of Metabase (Task 1)

Metabase uses Cypress for “end-to-end testing”, that is, tests that are executed against the application as a whole, including the frontend, backend, and application database. These tests are essentially scripts written in JavaScript that run in the web browser: visit different URLs, click various UI elements, type text, and assert that things happen as expected (for example, an element appearing on screen, or a network request occuring).

A stark contrast between nightwatch and Cypress is the use of cy.findByLabelText() selectors to acess html elements. This does not depend on CSS class names and is more efficient than nightwatch in which elements can only be accessed through CSS selectors. An example of findByLabelText can be found in metabase/frontend/test/metabase/scenarios/admin/settings/email.cy.spec.js which is as below:
it("should be able to clear email settings", () => {
    cy.visit("/admin/settings/email");
    cy.findByText("Clear").click();
    cy.findByLabelText("SMTP Host").should("have.value", "");
    cy.findByLabelText("From Address").should("have.value", "");
    cy.findByLabelText("Reply-To Address").should("have.value", "");
  });
The syntax of Jest and Cypress is very similar as both use describe, it and promises, as shown below. Snippets from metabase/frontend/test/metabase/scenarios/admin/settings/email.cy.spec.js
describe("scenarios > admin > settings > email settings", () => {
  beforeEach(() => {
    restore();
    cy.signInAsAdmin();
  });
 it(
    "should send a test email for a valid SMTP configuration",
    { tags: "@external" },
    () => {
      setupSMTP();

      cy.visit("/admin/settings/email");
      cy.findByText("Send test email").click();
      cy.findByText("Sent!");
      cy.request("GET", "http://localhost:80/email").then(({ body }) => {
        const emailBody = body[0].text;
        expect(emailBody).to.include("Your Metabase emails are working");
      });
    },
  );

It is seen that metabase API is done through Jest API The session is authenticated with a request based on session token. In order to submit a request for the token the following code is used. curl -X POST
-H "Content-Type: application/json"
-d '{"username": "person@metabase.com", "password": "fakepassword"}'
http://localhost:3000/api/session

In order to make a GET request the following code is used: curl -X GET
-H "Content-Type: application/json"
-H "X-Metabase-Session: 38f4939c-ad7f-4cbe-ae54-30946daf8593"
http://localhost:3000/api/user/current

The above mentioned code is used to get the data from the website. On the other hand, the following code is used to generate a POST request. curl -H @header_file.txt -d @payload.json http://localhost/api/card