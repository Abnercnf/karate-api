Feature: PetStore

  @createPet
  Scenario: Criar Pet
    * def body_request = read('./data/body_request.json')
    Given url 'https://petstore3.swagger.io/api/v3'
    And path '/pet'
    And request body_request
    When method POST
    Then status 200
    * print response
    * match responseType == 'json'
    * def id = body_request.id
    * print id
    * match response contains {"id": #(id), "category": {"id": 1, "name": "Dogs"} }
    * call read('delete_pet.feature')
