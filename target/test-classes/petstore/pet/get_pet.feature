Feature: PetStore

@petById
Scenario: Buscar Pet pelo Id
#* def util = call read('common.feature')
#* def sessionId = util.uuid()
* def getId = call read('create_pet.feature')
Given url 'https://petstore3.swagger.io/api/v3'
* print getId.id
And path '/pet/getId.id'
When method GET
Then status 200
#* print sessionId
* match responseType == 'json'
* match response contains {"id": 10, "category": {"id": 2, "name": "Cats"} }
#* call read('delete_pet.feature')
