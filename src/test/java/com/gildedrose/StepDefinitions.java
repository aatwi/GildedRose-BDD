package com.gildedrose;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;

public class StepDefinitions {
    private Item[] items = new Item[1];
    private GildedRose app;

    @Given("{string} with quality {int}")
    public void with_quality(String itemName, int quality) {
        items[0] = new Item(itemName, 10, quality);
        app = new GildedRose(items);
    }

    @Given("{string} with SellIn date in {int} days")
    public void with_sell_in_date_in_days(String itemName, int sellInDays) {
        items[0] = new Item(itemName, sellInDays, 20);
        app = new GildedRose(items);
    }

    @Given("{string} with quality {int} and SellIn date in {int} days")
    public void theWithQualityAndSellInIsDays(String itemName, int quality, int sellInDays) {
        items[0] = new Item(itemName, sellInDays, quality);
        app = new GildedRose(items);
    }

    @Given("{string} with quality {int} and SellIn date is today")
    public void with_quality_and_sell_in_date_is_today(String itemName, int quality) {
        items[0] = new Item(itemName, 0, quality);
        app = new GildedRose(items);
    }

    @Given("{string} with quality {int} and SellIn date was {int} days ago")
    public void with_quality_and_sell_in_date_was_days_ago(String itemName, int quality, int sellInWasInDays) {
        items[0] = new Item(itemName, -sellInWasInDays, quality);
        app = new GildedRose(items);
    }

    @When("The quality is updated")
    public void the_quality_is_updated() {
        app.updateQuality();
    }

    @Then("{string} should have a quality of {int}")
    public void should_have_a_quality_of(String itemName, int expectedQuality) {
        assertEquals(itemName, app.items[0].name);
        assertEquals(expectedQuality, app.items[0].quality);
    }

    @Then("{string} should have a SellIn date in {int} days")
    public void should_have_a_sell_in_date_in_days(String itemName, int expectedSellIn) {
        assertEquals(itemName, app.items[0].name);
        assertEquals(expectedSellIn, app.items[0].sellIn);
    }

    @Then("the quality of {string} should remain {int}")
    public void the_quality_of_should_remain(String itemName, int expectedQuality) {
        assertEquals(itemName, app.items[0].name);
        assertEquals(expectedQuality, app.items[0].quality);
    }

    @Then("the sellin date of {string} should remain in {int} days")
    public void the_sellin_date_of_should_remain_in_days(String itemName, int expectedSellIn) {
        assertEquals(itemName, app.items[0].name);
        assertEquals(expectedSellIn, app.items[0].sellIn);
    }
}

