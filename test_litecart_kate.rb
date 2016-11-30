require 'rspec'
require 'selenium-webdriver'

describe 'Login litecart:' do
	before(:each) do
		@driver = Selenium::WebDriver.for(:chrome)
		@wait = Selenium::WebDriver::Wait.new(:timeout => 10)
	end

	 it "should login successfully" do
	 	@driver.navigate.to 'http://localhost/litecart/admin/login.php'

	 	element = @driver.find_element(:name, 'username')
	 	element.send_keys 'admin'
	 	element = @driver.find_element(:name, 'password')
	 	element.send_keys 'admin'
	 	element = @driver.find_element(:name, 'remember_me').click()
	 	element = @driver.find_element(:name,'login').click()
	 end 
	end