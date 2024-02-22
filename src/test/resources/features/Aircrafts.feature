Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  Scenario: Get specific aircraft data with number of seats is null value by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1153
    Then aircraft data to be manufacturer='testBoeing' and model='test777' and number of seats is null

  Scenario: Create an aircraft
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='testManufacturer' and model='testModel' and number of seats=100
    Then aircraft data to be manufacturer='testManufacturer' and model='testModel' and number of seats=100

  Scenario: Create an aircraft with number of seats is null value
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='testManufacturer' and model='testModel' and number of seats is null
    Then aircraft data to be manufacturer='testManufacturer' and model='testModel' and number of seats is null