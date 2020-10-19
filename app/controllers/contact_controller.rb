class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  

  def create
   
   @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.with(contact: @contact).contact_us_email.deliver_later

      render 'thankyou'
      #redirect_to :controller => 'contact', :action => 'thankyou'
      
    else
      render 'new'
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
  
end
