# Jungle

A mini e-commerce application that sells plants, built with Rails 6.1. It had an already existing code-base where new features and UI changes needed to be implemented, plus bugs that needed to be fixed. 

## Bugs fixed

1. `Money Formatting`: All the prices needs to have the same format (=> $24.99).
2. `Missing Admin Security`: Implement HTTP Basic Authentication in all the pages accessible to an Admin.
3. `Sold Out Item added to Cart`: Disable the "Add" to Cart button for all products that are sold out.

## Features implemented

1. `Admin Dashboard`: Add a Dashboard for Admin where they can see the products and categories count.
2. `About Page`: Add an About page for the website.
3. `Admin Categories`: Add a page where an Admin can check the current categories and add a new one via a form.
4. `User Authentication`: Implement 'Login', 'Register' and 'Logout' buttons. When a user is logged-in, the nav bar displays a message: 'Welcome, #username!'.
5. `Email Receipt`: When a user successfully places an order, an email with the order's details is sent to them automatically.
6. `Product Rating`: A visitor can see a product's average rating while browsing the catalog. They can also see a list of ratings and reviews when they visit the product's page. When logged-in, a user can leave a review or delete past reviews.

## UI Changes implemented

1. `Empty Cart`: When the cart is empty, it displays to the user a friendly message stating that their cart is empty, plus a button to go back to Home Page.
2. `Sold Out Badge`: When a product is sold out, a red badge showing "Sold Out" is displayed when you browse the catalog.
3. `Order Details`: When a user successfully places an order, they get redirected to a page where the ordered items, their image, name, description, quantities, final amount and email used by the user, are displayed.

## Testing

- `Rspec` was used to test the Product and User Models.
- `Cypress` was used to test the Home Page, Product Details, Add to Cart and User Login.

## Setup

1. `git clone` the project
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rails db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- bycrypt
- Cypress
- Rspec

## Final Product

### App Overview as a Visitor (non logged-in user):
!["Visitor"]()

### App Overview as a User):
!["User"]()

### Admin Functionality:
!["Admin"]()