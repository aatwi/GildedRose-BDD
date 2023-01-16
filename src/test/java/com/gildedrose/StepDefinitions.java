package com.gildedrose;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;


public class StepDefinitions {
    private Item[] items = new Item[1];
    private GildedRose app;

    private String emailAddress;
    private boolean emailAddressIsValid = false;
    @Given("A user enters the email address {string}")
    public void aUserEntersTheEmailAddress(String email) {
        this.emailAddress = email;
    }

    @When("The system verifies the email address")
    public void theSystemVerifiesTheEmailAddress() {
        this.emailAddressIsValid = emailAddress.contains("@");
    }

    @Then("Email address is accepted")
    public void assertValidityOfEmailAddress() {
        Assertions.assertTrue(emailAddressIsValid);
    }
}

