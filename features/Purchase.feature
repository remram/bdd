Feature: Purchase
    "**In order** to get the books I want"
    "**As** a customer"
    "**I want to** to be able to purchase multiple books from the Application"

  @Priority-high
  Scenario: Buy many books
    This test is an end-to-end test from book selection to payment
    # action: Log with default account
    # result: Check that user is logged
    # action: Go to on-line library
    * Select book "Harry Potter and the order of the phoenix"
    # action: Add to cart
    * Select book "Harry Potter and the goblet of fire"
    # action: Add to cart
    # result: Check that cart contains 2 books
    # action: Pay
    # result: Check cart is paid
