require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  
  test "send new contact request" do

  	contact = contacts(:one)

    email = ContactMailer.with(contact: contact).contact_us_email

    # Send the email, then test that it got queued
    assert_emails 1 do
      email.deliver_later
    end

    # Test the sent email contains what we expect it to
    assert_equal ["senderemail@gmail.com"], email.from
    assert_equal ["mukteshwarp@gmail.com"], email.to
    assert_equal "New Contact Request - Mukteshwar", email.subject
    
  end


end
