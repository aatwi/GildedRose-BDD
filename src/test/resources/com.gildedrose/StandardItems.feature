Feature: Standard Items
  I want to know if the quality is updated properly

  Rule: Quality decreases everyday
    Scenario: The quality of leather boots decreases
      Given A "Leather Boots" with quality 20
      When The day passes
      Then The quality should be 19

    Scenario: The quality can never be negative
      Given A "Leather Boots" with quality 0
      When The day passes
      Then The quality should be 0


  Rule: # Describe what "Business Rule" should be implemented. Use rules to group scenarios that belong to the same business rule.
    Scenario: # Write a sentence that illustrates a concrete example of the business rule
      Given # Write the initial context of the scenario/example
      When # Write the event or action to be applied
      Then # Write the expected outcome or result
