require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Given("I visit bstackdemo website") do
  driver.navigate.to 'https://www.bstackdemo.com/'
  #sleep(5)
end

When("I click on orders") do
  driver.manage.window.maximize
  driver.find_element(:id, 'orders').click
end

Then("I should see signin page") do
  sleep(1)
  logintext = driver.find_element(:id, 'login-btn').text
  expect(logintext).to eq('LOG IN')
  puts(logintext)
end

Given('I visit wikipedia') do
  driver.navigate.to 'https://www.wikipedia.org/'
end

When('I search for BrowserStack') do
  driver.find_element(:id, 'searchInput').send_keys('BrowserStack')
  sleep(10)
end

Then('I should see BrowserStack page') do
  result = driver.find_element(:class, 'suggestion-title').text
  #header = driver.find_element(:id, 'first_heading').text
  expect(result).to eq('BrowserStack')
end