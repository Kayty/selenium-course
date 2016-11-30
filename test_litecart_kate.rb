require 'rspec'
require 'selenium-webdriver'

describe 'Login litecart:' do
	before(:each) do
		@driver = Selenium::WebDriver.for(:chrome)
		@wait = Selenium::WebDriver::Wait.new(:timeout => 10)
	end

	 it "should login successfully" do
	 	@driver.navigate.to 'http://localhost/litecart/admin/login.php'

	 	username = @driver.find_element(:name, 'username')
	 	username.send_keys 'admin'
	 	password = @driver.find_element(:name, 'password')
	 	password.send_keys 'admin'
	 	@driver.find_element(:name, 'remember_me').click()
	 	@driver.find_element(:name,'login').click()
	 end 
	end