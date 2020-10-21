require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  
  	test "should render contact form " do
		get "/contact/new"
  		assert_response :success

	end

	test "should create contact and render thankyou template" do

	  assert_difference("Contact.count") do
	    post '/contact', params: { contact: { first_name: "Mukteshwar", last_name: "Prasad", 
	    	email: "mp@gmail.com", phone_number: "9899876543", message: "Hello this is a test message" } }
	  end

	
	  assert_template :thankyou

	end


	test "should not create contact with invalid input" do

	  assert_no_difference("Contact.count") do
	    post '/contact', params: { contact: { first_name: "", last_name: "Prasad", 
	    	email: "mp@gmail.com", phone_number: "9899876543", message: "Hello this is a test message" } }
	  end


	end




end
