class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :field_name
      t.integer :field_type

      t.timestamps
    end
  end
end
