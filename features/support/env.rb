require 'capybara/cucumber'
require 'capybara/webkit'
require File.expand_path("../../../app", __FILE__)

API_URl = "http://localhost:39888"

Capybara.app = MyApp
Capybara.javascript_driver = :webkit

# set test environments
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
