class Field < ApplicationRecord
  belongs_to :user
  has_many :fields_contacts

  validates :field_name, :field_type, presence: true
  
  enum field_type: [:text, :textarea, :combobox]
end
