

describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });


  it("Clicking on a product's image redirects the user to the product's page", () => {
    cy.get("img")
      .first()
      .click()
      .visit('/products/2')
  });

  it("Clicking on a product's name redirects the user to the product's page", () => {
    cy.get("h1")
      .contains('Scented Blade')
      .click({ force: true })
      .visit('/products/2')
  });
});