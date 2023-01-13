Feature: Sulfuras
  Sulfuras is never sold and does not degrade in quality

  Rule: Sulfuras has a constant quality of 80
    Scenario: The quality of sulfuras never changes
      Given "Sulfuras, Hand of Ragnaros" with quality 80
      When The quality is updated
      Then the quality of "Sulfuras, Hand of Ragnaros" should remain 80

  Rule: The sellin date of sulfuras never changes
    Scenario Template: Sellin date is constant
      Given "Sulfuras, Hand of Ragnaros" with SellIn date in <initial sellin> days
      When The quality is updated
      Then the sellin date of "Sulfuras, Hand of Ragnaros" should remain in <initial sellin> days

      Examples:
        |initial sellin|
        |2             |
        |-100          |
