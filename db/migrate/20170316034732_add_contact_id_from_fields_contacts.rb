class AddContactIdFromFieldsContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :fields_contacts, :contact_id, :string
    add_column :fields_contacts, :field_id, :string
  end
end
