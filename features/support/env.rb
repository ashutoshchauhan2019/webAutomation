require "rubygems"
require "watir-webdriver"
require "cucumber"
require "watir"
require "rake"
require 'watir-scroll'
require 'rspec'

Before do
  browser = Watir::Browser.new :firefox
  browser.driver.manage.window.maximize
  @browser = browser
end

After do
  @browser.close
end
