import { expect } from "@playwright/test"

import { Given, When, Then } from "@cucumber/cucumber"


Given('User Launch the application', async function () {

    await page.goto("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
});

Then('Orange HRM logo should be visible', async function () {

    //script 
});
When('User Enter Username as {string} and Password as {string}', async function (username, password) {

    await page.locator('input[name="username"]').fill(username)

    await page.locator('input[name="password"]').fill(password)

});

When('User clicks on login button', async function () {

    await page.locator('//button[@type="submit"]').click()
});

Then('User should be navigated to Dashboard page', async function () {

    await expect(page).toHaveURL('https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index')
});

Then('User should get login error Message', async function () {

    await expect(page.locator("//p[text()='Invalid credentials']")).toBeVisible()
});