class RemoveContactsIdFromFieldsContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :fields_contacts, :contacts_id, :string
    remove_column :fields_contacts, :fields_id, :string
  end
end
