class Field < ApplicationRecord
  belongs_to :user
  validates :field_name, :field_type, presence: true
  enum field_type: [:text, :textarea, :combobox]
end
