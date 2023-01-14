package com.gildedrose;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;

public class StepDefinitions {
    private Item[] items = new Item[1];
    private GildedRose app;

    @Given("The item as {string}")
    public void initializeItemProperty(String name) {
        items[0] = new Item(name, 0, 0);
        app = new GildedRose(items);
    }

    @When("I update the quality")
    public void updateQuality() {
        app.updateQuality();
    }

    @Then("I should get item as {string}")
    public void assertItemProperties(String expected) {
        assertEquals(expected, app.items[0].name);
    }
}

