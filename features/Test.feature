Feature: Order Placing
  Scenario: Verify user is able to add 2 products and place order
    Given I open the site http://automationpractice.com/index.php
    When I add 2 products to cart
    And I click on Proceed to checkout in order summary
    Then I verify 2 products in cart
    When I click on Proceed to checkout in shopping cart page
    And I enter Email Id
    And I click on Create Account button
    And I enter Personal Information
    And I click on Register button
    And I click on Proceed to checkout in delivery address page
    And I accept terms and conditions
    And I click on Proceed to checkout in shipping page
    And I select pay with bank wire for payment option
    And I confirm my order
    Then I should see Order completion message
