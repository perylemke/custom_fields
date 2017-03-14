class AddUserIdToFields < ActiveRecord::Migration[5.0]
  def change
    add_column :fields, :user_id, :integer
  end
end
