class Contact < ApplicationRecord
  belongs_to :user, optional: true
  has_one :user
  has_many :field
  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
