require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

require_relative 'helper.rb'
require_relative 'page_helper.rb'

World Page
World Helper

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambiente/#{AMBIENTE}.yml")

## register driver according with browser chosen
case ENV['BROWSER']
when "firefox"
  @driver = :selenium
when "chrome_headless"
  @driver = :selenium_chrome_headless
when "chrome"
  @driver = :selenium_chrome
else
 puts "Browser invalid!"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
end