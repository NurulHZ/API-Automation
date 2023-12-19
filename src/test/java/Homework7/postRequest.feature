Feature: Post test

  Background:
    Given url "https://petstore.swagger.io/v2"
    * def body = {"id": 1,"username":"NurulZulni","firstName": "Nurul","lastName": "Zulni","email": "NurulZulni@gmail.com","password": "Nurul11!","phone": "082116396315","userStatus": 1}
    * def headerRegress = {"Content-Type": "application/json", "Accept": "application/json"}
    And print "----Mengirim data----"

  Scenario: Post
    When path "/user"
    And headers headerRegress
    And request body
    And method post
    Then status 200
    And print response