require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#require 'ostruct'
#require 'capybara'
require_relative 'page_helper.rb' #inserido para funcionar a forma mais pratica de instanciar classe para PageObjects
require_relative 'helper.rb'      #declaro meu require o caminho do meu arquivo helper para funcionar a captura de fotos


World(Capybara::DSL)            #deixando a dsl como global
require 'capybara/dsl'

World(Capybara::RSpecMatchers)  #deixando o rspecmatchers como global
require 'capybara/rspec/matchers'

AMBIENTE = ENV['AMBIENTE']  #criando uma constante para trabalhar com ambientes no yml
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PageObjects) #inserido para funcionar a forma mais pratica de instanciar classe para PageObjects

World(Helper)      #colocando o metodo de tirar foto como global, ou seja, posso tirar foto onde quiser


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
     #config.app_host = 'https://automacaocombatista.herokuapp.com'   #desabilitado 
     config.app_host = CONFIG['url_padrao']  
     config.default_max_wait_time = 10
end






















