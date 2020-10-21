require 'test_helper'

class ContactTest < ActiveSupport::TestCase
   
  def setup
    #@contact = Contact.new(first_name: 'John', last_name: 'Davis', email: 'john@example.com', phone_number: '0988765432', message: 'Hello test ABC')
    @contact = contacts(:one)
  end

  test 'valid contact' do
    assert @contact.valid?
  end


  test "should not save contact without valid input" do
	  @contact.first_name = nil
	  assert_not @contact.save, "Saved the contact without a first name"
  end


  test "should save contact without phone number" do
	  @contact.phone_number = nil
	  assert @contact.save, "Saved the contact without a phone number"
  end


  test "should not save contact without last name" do
	  @contact.last_name = nil
	  assert_not @contact.save
  end

  test "should not save contact without user email" do
	  @contact.email = nil
	  assert_not @contact.save
  end

  test "should not save contact without message" do
	  @contact.message = nil
	  assert_not @contact.save
  end


  test "should save contact with proper input" do
	  assert @contact.save
  end


end
