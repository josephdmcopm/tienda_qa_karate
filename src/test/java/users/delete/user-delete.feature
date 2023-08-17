Feature: Delete user on petstore
  Scenario: Delete a user
    Given  url "https://petstore.swagger.io/v2/user/user7"
    When method delete
    Then status 200