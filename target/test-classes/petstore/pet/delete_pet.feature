Feature: Browser

@deletePet
Scenario: delete pet
* def getPet = call read('get_pet.feature')
* def petId = getPet.response.id
  * print petId
Given url 'https://petstore3.swagger.io/api/v3'
And path '/pet/' + petId
When method DELETE
Then status 200
* print response

