Feature: Add new spartan

  Background:
    * url spartan_base_url

  Scenario: Post new spartan
    Given header Content-Type = "application/json"
    And header Accept = "application/json"
    #set json body of request
    And request {name : "karate", gender : "Male", phone : 1231231234}
    And path "/spartans"
    When method POST
    Then status 201
