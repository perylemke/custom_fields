class Field < ApplicationRecord
  belongs_to :user, optional: true
  has_many :contact
  validates :field_name, :field_type, presence: true
  enum field_type: [ "Texto", "Área de Texto", "Combo Box"]
end
