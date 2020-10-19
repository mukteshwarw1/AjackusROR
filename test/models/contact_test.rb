require 'test_helper'

class ContactTest < ActiveSupport::TestCase
   

  test "should not save contact without first name" do
	  contact = Contact.new
	  assert_not contact.save, "Saved the contact without a first name"
  end

  test "should save contact without phone number" do
	  contact = contacts(:user_with_no_phone)
	  assert contact.save, "Saved the contact without a phone number"
  end


  test "should not save contact without last name" do
	  #contact = Contact.new
	  contact = contacts(:user_with_no_last_name)
	  assert_not contact.save
  end

  test "should not save contact without user email" do
	  contact = contacts(:user_with_no_email)
	  assert_not contact.save
  end

  test "should not save contact without message" do
	  contact = contacts(:user_with_no_message)
	  assert_not contact.save
  end

  test "should save contact with proper input" do
	  contact = contacts(:one)
	  assert contact.save
  end


end
