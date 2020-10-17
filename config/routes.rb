Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

=begin
	  root 'contact#new'
	  resources :contact , only: [:new, :create]
	  get 'thankyou', to: 'contact#thankyou'
	  get '*path' => redirect('/')
=end


  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  #scope "(:locale)", locale: /en|hi/ do

  	root 'contact#new'
  	resources :contact , only: [:new, :create]
  	get 'thankyou', to: 'contact#thankyou'
  	get '*path' => redirect('/')
  
  end


end
