class ContactMailer < ApplicationMailer

	default from: 'mukteshwarp@gmail.com'
 
  def contact_us_email
    @contact = params[:contact]
    mail(to: 'mukteshwarp@gmail.com', subject: 'New Contact Request - Mukteshwar')
  end

end
