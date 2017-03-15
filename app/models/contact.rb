class Contact < ApplicationRecord
  belongs_to :user
  has_many :fields
  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
