Feature: Browserstack test

  Scenario: Can add the product in cart
    Given I visit bstackdemo website
    When I click on orders
    Then I should see signin page

  Scenario: Search Wikipedia
    Given I visit wikipedia
    When I search for BrowserStack
    Then I should see BrowserStack page