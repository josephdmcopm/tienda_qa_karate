Feature: Get user on petstore
  Scenario: Get a user
    Given  url "https://petstore.swagger.io/v2/user/user8"
    When method get
    Then status 200