require 'capybara/cucumber'


#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'

require 'selenium-webdriver'

#World(Capybara::DSL)            #deixando a dsl como global
#World(Capybara::RSpecMatchers)  #deixando o rspecmatchers como global


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end