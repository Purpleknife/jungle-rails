

describe('User Login', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });



  it("A user can login successfully with email and password", () => {
    cy.get(".nav-user")
      .contains('Login')
      .click()
    
    cy.get('input#email').type('john@test.com');
    cy.get('input#password').type('password');
    cy.get('input.btn.btn-success').click();
  });

  it("When logged-in, a user should be redirected to Home Page", () => {
    cy.get(".nav-user")
      .contains('Login')
      .click()
    
    cy.get('input#email').type('john@test.com');
    cy.get('input#password').type('password');
    cy.get('input.btn.btn-success').click();
    cy.get('.user-section').contains('Welcome');
  });

  it("When logged-in, a user can logout successfully", () => {
    cy.get(".nav-user")
      .contains('Login')
      .click()
    
    cy.get('input#email').type('john@test.com');
    cy.get('input#password').type('password');
    cy.get('input.btn.btn-success').click();
    
    cy.get(".nav-user")
      .contains('Logout')
      .click()
  });

});