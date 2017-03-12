class Contact < ApplicationRecord
  belongs_to :user, optional: true
  has_one :user
  has_many :field
  validates :email, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
