class FieldsContact < ApplicationRecord
  belongs_to :field 
  belongs_to :contact
end
