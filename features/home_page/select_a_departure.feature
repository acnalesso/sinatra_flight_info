Feature: Selection of departures
  In order to see destinations
  As a customer
  I should be able to select departures


Background:
  Given a customer is on home page

@javascript
Scenario: Found destinations
  When he wants to see departure from "New York"
  Then he should see "London" as destination

@javascript
Scenario: Not found destinations
  When he searches departures from "Japan"
  Then he should see the an error message
