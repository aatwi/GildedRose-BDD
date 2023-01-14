Feature: Gilded Rose Standard Item Quality
  The quality of Standard items degrades by 1 every day until the sellin Date
  After that, they degrade twice as fast.

  Rule: The quality degrades every day
    Scenario Template: The quality of <item> degrades by 1 every day
      Given <item> with quality <initial quality>
      When The quality is updated
      Then <item> should have a quality of <end quality>

      Examples:
        | item            | initial quality | end quality |
        | "Leather Boots" | 10              |9            |
        | "Helmet"        | 7               |6            |

    Scenario: Quality cannot be lower than zero
      Given "Leather Boots" with quality 0
      When The quality is updated
      Then "Leather Boots" should have a quality of 0


  Rule: Quality degrades twice as fast after sellin date
    Scenario: Quality degrades by 1 the day before SellIn date
      Given "Books" with quality 7 and SellIn date in 1 days
      When The quality is updated
      Then "Books" should have a quality of 6

    Scenario: Quality degrades by 2 on the SellIn date
      Given "Books" with quality 7 and SellIn date is today
      When The quality is updated
      Then "Books" should have a quality of 5

    Scenario: Quality degrades twice as fast after SellIn date
      Given "Books" with quality 7 and SellIn date was 2 days ago
      When The quality is updated
      Then "Books" should have a quality of 5


  Rule: The SellIn date decreases every day
    Scenario: The SellIn date decrements by 1 everyday
      Given "Books" with SellIn date in 3 days
      When The quality is updated
      Then "Books" should have a SellIn date in 2 days