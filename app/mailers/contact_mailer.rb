class ContactMailer < ApplicationMailer

	default from: 'senderemail@gmail.com'
 
  def contact_us_email
    @contact = params[:contact]
    mail(to: 'info@ajackus.com,mukteshwarp@gmail.com', subject: 'New Contact Request - Mukteshwar')
    #mail(to: 'mukteshwarp@gmail.com', subject: 'New Contact Request - Mukteshwar')
  end

end
