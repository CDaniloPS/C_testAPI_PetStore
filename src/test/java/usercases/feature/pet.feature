Feature: API PetStore HappyPath with karate test
  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * def jsonRequest = read('../json/pet_new.json')
    * def jsonRequest2 = read('../json/pet_update.json')

  Scenario: Añadir una mascota a la tienda
    * print 'pet is: ', jsonRequest
    Given url 'https://petstore.swagger.io/v2/pet'
    And request jsonRequest
    When method post
    Then status 200
    And match response contains jsonRequest

  Scenario: Consultar la mascota ingresada - Búsqueda por ID
    * print 'pet is: ', jsonRequest.id
    Given path jsonRequest.id
    When method get
    Then status 200
    And match response contains jsonRequest

  Scenario: Actualizar mascota ingresada su nombre y status a sold
    * print 'pet update is: ', jsonRequest2
    Given url 'https://petstore.swagger.io/v2/pet'
    And request jsonRequest2
    When method put
    Then status 200
    And match response contains jsonRequest2

  Scenario: Consultar la mascota modificada - Búsqueda por status
    * print 'pet is: ', jsonRequest2.status
    * path  geoPath = '/findByStatus'
    * params { status:"sold" }
    When method get
    Then status 200
    And match response contains jsonRequest2
