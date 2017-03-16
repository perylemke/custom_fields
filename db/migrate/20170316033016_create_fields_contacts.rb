class CreateFieldsContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :fields_contacts do |t|
      t.references :fields, foreign_key: true
      t.references :contacts, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
