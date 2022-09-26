

describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });


  it("Clicking on 'Add to Cart' increments the Cart by 1", () => {
    cy.get("button")
      .contains('Add')
      .click({force: true})
    
    cy.get('.nav-link')
      .contains(' My Cart (1) ')
      .should('be.visible');
  });


});