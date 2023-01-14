Feature: Backstage Passes
  Backstage concert passes increase their value more and more until
  the concert date, but they are worthless after!

  Rule: Quality of Backstage Passes increases every day
    Scenario Template: Concerts that happen in a long time increase their quality every day
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in 30 days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        | initial quality | next day quality |
        | 10              | 11               |
        | 5               | 6                |

  Rule: Quality of Backstage Passes increases twice as fast 10 days before the concert
    Scenario Template: Until 10 days before the concert, backstage passes increase their quality normally
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in <sellIn> days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |11     | 10              | 11               |
        |12     | 5               | 6                |

    Scenario Template: Passed 10 days before the concert, backstage passes increase their quality twice as fast
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in <sellIn> days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |10     | 10              | 12               |
        |9      | 5               | 7                |

  Rule: Quality of Backstage Passes increases three times as fast 5 days before the concert
    Scenario Template: Until 5 days before the concert, backstage passes increase their quality twice as fast
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in <sellIn> days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |7      | 10              | 12               |
        |6      | 5               | 7                |

    Scenario Template: Passed 5 days before the concert, backstage passes increase their quality three times as fast
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in <sellIn> days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |5      | 10              | 13               |
        |4      | 5               | 8                |


  Rule: Quality of Backstage Passes drops to zero after the Concert date
    Scenario Template: Until the day of the concert, backstage passes increase their quality three times as fast
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date in <sellIn> days
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |2      | 10              | 13               |
        |1      | 5               | 8                |

    Scenario Template: Passed the day of the concert, the quality of backstage passes drops to zero
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality> and SellIn date was <sellIn> days ago
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        |sellIn | initial quality | next day quality |
        |0      | 10              | 0                |
        |1      | 0               | 0                |

  Rule: Quality of Backstage Passes cannot exceed 50
    Scenario Template: Premium Backstage Passes quality remains 50
      Given "Backstage passes to a TAFKAL80ETC concert" with quality <initial quality>
      When The quality is updated
      Then "Backstage passes to a TAFKAL80ETC concert" should have a quality of <next day quality>

      Examples:
        | initial quality | next day quality |
        | 49              | 50               |
        | 50              | 50               |