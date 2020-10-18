class ApplicationController < ActionController::Base


	before_action :set_locale

	private
	
	def default_url_options
	  { locale: I18n.locale }
	end

	def set_locale
	  I18n.locale = extract_locale || session[:locale] || I18n.default_locale
	end

	def extract_locale
	  
	  #save the language preferances in session for use in the subsequent request
	  if(!params[:locale].nil? && params[:locale]!="")
	  	session[:locale] = params[:locale] 
	  end


	  parsed_locale = params[:locale]
	  I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end


end
