import { expect } from "@playwright/test"

import { Given, When, Then } from "@cucumber/cucumber"


When('User clicks on PIM Menu', async function () {

    await page.locator('a[href="/web/index.php/pim/viewPimModule"]').click()
})

When('User clicks on add employee submenu', async function () {

    await page.locator("//a[text()='Add Employee']").click()
});

When('User enter firstname {string} and Lastname as {string}', async function (firstname, lastname) {

    await page.locator('input[name="firstName"]').fill(firstname)
    await page.locator('input[name="lastName"]').fill(lastname)

});

When('User clicks on Save button', async function () {

    await page.locator('button[type="submit"]').click()
});

Then('User Employee should be created', async function () {

    await expect(page.locator("//h6[text()='Personal Details']")).toBeVisible({ timeout: 30000 })

});


When('User upload JPG file less the 1 MB', async function () {
    await page.locator('input[type="file"]').setInputFiles('testdata/QA.jpg')
});