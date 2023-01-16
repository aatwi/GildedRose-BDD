Feature: Gilded Rose Inn
  I want to know if the quality is updated properly

  Rule: # Describe what "Business Rule" should be implemented. Use rules to group scenarios that belong to the same business rule.
    Scenario: # Write a sentence that illustrates a concrete example of the business rule
      Given # Write the initial context of the scenario/example
      When # Write the event or action to be applied
      Then # Write the expected outcome or result

  # Use the below example to ensure the wiring between the feature file and the definitions code is working as expected
  Rule: This is an example an email address verification system
    Scenario: Email address must include the '@' sign
      Given A user enters the email address "John.Doe@example.com"
      When The system verifies the email address
      Then Email address is accepted