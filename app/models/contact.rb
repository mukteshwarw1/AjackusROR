class Contact < ApplicationRecord

  validates :first_name, presence: true, length: { minimum: 3, maximum: 100 }
  
  validates :last_name, presence: true

  validates :email, presence: true, length: { minimum: 3, maximum: 100 }
  
  validates :message, presence: true, length: { minimum: 10, maximum: 300 }


end
