Feature: API PetStore case negative with karate test
  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * def jsonRequestsinData = read('../json/pet_newerror.json')
    * def jsonRequestupdate2 = read('../json/pet_update2.json')
    * def jsonResponse404 = read('../json/message_notfounderror_pet.json')

  Scenario: 405 Invalid input - Añadir una mascota sin data a la tienda
    * print 'pet is: ', jsonRequestsinData
    Given url 'https://petstore.swagger.io/v2/pet'
    And request jsonRequestsinData
    When method post
    Then status 405

  Scenario: 404 Pet not found - Consultar la mascota ingresada - Búsqueda por ID
    Given path 345356680
    When method get
    Then status 404
    And match response contains jsonResponse404

  Scenario: 400 Invalid ID supplied - Consultar la mascota ingresada - Búsqueda por ID
    Given path -56
    When method get
    Then status 400

  Scenario: 404 Pet not found - Actualizar pet nombre y estatus a sold
    * print 'pet update is: ', jsonRequestupdate2
    Given url 'https://petstore.swagger.io/v2/pet'
    And request jsonRequestupdate2
    When method put
    Then status 404

  Scenario: 400 Invalid status value - Consultar la mascota modificada Búsqueda por status
    * path  geoPath = '/findByStatus'
    * params { status:"found" }
    When method get
    Then status 400