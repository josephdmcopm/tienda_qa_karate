Feature: Put user on petstore
  Scenario: Put a user
    Given  url "https://petstore.swagger.io/v2/user/user8"
    And request { "id": 9223372036854743000, "username": "user8", "firstName": "Ronaldinio", "lastName": "Diaz", "email": "rolindo@gmail.com", "password": "1234", "phone": "0999999999", "userStatus": 0 }
    When method put
    Then status 200