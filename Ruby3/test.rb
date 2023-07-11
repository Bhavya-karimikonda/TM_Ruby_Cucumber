require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'https://www.bstackdemo.com/'

driver.manage.window.maximize

driver.find_element(:id, 'offers').click
sleep(5)