require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
    #selenium slenium_chrome selenium_chrome_headless

config.default_driver = :selenium_chrome
config.app_host = 'http://newtours.demoaut.com'
config.default_max_wait_time = 5
    
end