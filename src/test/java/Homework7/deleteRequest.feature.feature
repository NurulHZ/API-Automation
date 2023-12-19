Feature: Delete test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "----Membaca data----"

  Scenario: get /user/{username}
    Given url "https://petstore.swagger.io/"
    And path "/user/NurulZulni"
    When method delete
    Then status 404
    And print response

