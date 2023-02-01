*** Settings ***
Documentation   This file is filled with tests, and is linked to the steps file via Gherkin methodology.
...             Cannot mix BDD and DDT(data-driven-test), that's why there is no scenario outline.
...             Test setup is used for prerequired steps and starting the browser.
...             Test Teardown closes the browser and takes a screenshot if the test fails.
Resource        ../Demoblaze_steps/Demoblaze_steps.robot
Resource        ../Test_Setup/Test_Setup.robot
Test Setup      Browser startup
Test Teardown   Close Browser Window
Default Tags    Smoke


*** Test Cases ***

Demoblaze phone page
    Set Tags    Regression

    Given User is on   "Homepage"
    When Select Phones
    Then Show valid Phone product page

Demoblaze phone product
    Set Tags    Regression

    Given User is on   "Homepage"
    When Select Phones
    And Select first Phone item
    Then Validate selectected item

Phone product add to cart
    Set Tags    Regression

    Given User is on   "Homepage"
    When Select Phones
    And Select first Phone item
    And Add item to cart
    Then Table in cart is present

Check Products in cart
    Set Tags    Regression

    Given User is on   "Homepage"
    When Going to Phone Product Cart page
    Then Table in cart is present







