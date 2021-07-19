require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument("--no-sandbox")
options.add_argument("--headless")

session = Selenium::WebDriver.for :chrome, options: options
session.navigate.to "http://google.com"

puts session.title
session.save_screenshot('page.png')