Feature: Post user on petstore
  Scenario: Post a user
    Given  url "https://petstore.swagger.io/v2/user"
    And request { "id": 0, "username": "user7", "firstName": "Pilar", "lastName": "Diaz", "email": "cpilar@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
    When method post
    Then status 200