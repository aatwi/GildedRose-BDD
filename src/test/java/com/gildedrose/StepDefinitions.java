package com.gildedrose;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;


public class StepDefinitions {
    private Item[] items = new Item[1];
    private GildedRose app;

    @Given("A {string} with quality {int}")
    public void aWithQuality(String itemName, int quality) {
        items[0] = new Item(itemName, 100, quality);
        app = new GildedRose(items);
    }

    @When("The day passes")
    public void theDayPasses() {
        app.updateQuality();
    }

    @Then("The quality should be {int}")
    public void theQualityShouldBe(int expectedQuality) {
        Assertions.assertEquals(expectedQuality, items[0].quality);
    }
}

