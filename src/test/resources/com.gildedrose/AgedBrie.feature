Feature: Aged Brie quality update
  Aged Brie improves with time!

  Rule: Quality of Aged Brie increases every day
    Scenario Template: The quality of aged brie increases
      Given "Aged Brie" with quality <initial quality>
      When The quality is updated
      Then "Aged Brie" should have a quality of <next day quality>

      Examples:
        | initial quality | next day quality |
        | 10              | 11               |
        | 5               | 6                |

    Scenario: Aged Brie quality increase twice as fast after sellin date
      Given "Aged Brie" with quality 7 and SellIn date was 2 days ago
      When The quality is updated
      Then "Aged Brie" should have a quality of 9


  Rule: Quality of Aged Brie cannot exceed 50
    Scenario Template: Premium Aged Brie quality remains 50
      Given "Aged Brie" with quality <initial quality>
      When The quality is updated
      Then "Aged Brie" should have a quality of <next day quality>

      Examples:
        | initial quality | next day quality |
        | 49              | 50               |
        | 50              | 50               |
