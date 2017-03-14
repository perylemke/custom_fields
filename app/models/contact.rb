class Contact < ApplicationRecord
  belongs_to :user

  validates_presence_of :email
  
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
