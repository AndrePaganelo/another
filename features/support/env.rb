require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#require 'ostruct'
require_relative 'page_helper.rb' #inserido para funcionar a forma mais pratica de instanciar classe para PageObjects

#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'

AMBIENTE = ENV['AMBIENTE']  #criando uma constante para trabalhar com ambientes no yml
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

#World(Capybara::DSL)            #deixando a dsl como global
#World(Capybara::RSpecMatchers)  #deixando o rspecmatchers como global

World(PageObjects) #inserido para funcionar a forma mais pratica de instanciar classe para PageObjects

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
   # config.app_host = 'https://automacaocombatista.herokuapp.com'
     config.app_host = CONFIG['url_padrao']  
     config.default_max_wait_time = 5
end