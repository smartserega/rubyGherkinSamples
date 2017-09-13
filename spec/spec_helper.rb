require 'require_all'
require 'yaml'
require 'capybara/rspec'
require 'turnip/capybara'
require 'gnawrnip'
require 'site_prism'
require 'configs_file'
require 'faker'
require 'pry-byebug'
require 'colorize'
require 'chromedriver/helper'
require 'open-uri'
require 'nokogiri'
require 'json'

include ConfigsFile

init_capybara
init_rspec
init_site_prism


require_all('spec/support/**/*.rb')
require_all('spec/steps/**/*.rb')
