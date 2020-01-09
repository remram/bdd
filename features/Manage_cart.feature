Feature: Manage cart
    "**In order** to manage my cart"
    "**As** a customer"
    "**I want to** to be able to add books to my cart and cancel my selection"

  @Priority-high
  Scenario: A selection can be cancelled
    Test canceling the cart content
    # action: Log with default account
    # result: Check that user is logged
    # action: Go to on-line library
    * Select book "Harry Potter and the order of the phoenix"
    # action: Add to cart
    * Check book count "1"
    # action: Cancel cart
    * Check book count "0"

  @Priority-medium
  Scenario: Cart empty when logout
    cart must be empty when login again
    # action: Log with default account
    # result: Check that user is logged
    # action: Go to on-line library
    * Select book "Harry Potter and the order of the phoenix"
    # action: Add to cart
    # action: logout
    # action: Log with default account
    # result: Check that user is logged
    # action: Go to on-line library
    * Check book count "0"
