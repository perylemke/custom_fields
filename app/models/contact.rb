class Contact < ApplicationRecord
  belongs_to :user
  has_many :fields

  validates_presence_of :name
  NAME_MIN_LENGTH = 3   #characters
  NAME_MAX_LENGTH = 50  #characters
  validates :name, length: {in: NAME_MIN_LENGTH..NAME_MAX_LENGTH}

  validates_presence_of :email
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: email_regex}

end
