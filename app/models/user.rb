class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :contacts, dependent: :destroy
  has_many :fields, dependent: :destroy
end
